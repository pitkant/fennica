#' @title Harmonize Publisher Main
#' @description Main handler for publisher fields.
#' @param df.orig Data frame with raw data
#' @return Data frame with orig, mod
#' @export
#' @author Hege Roivainen \email{hege.roivainen@@gmail.com}
#' @references See citation("bibliographica")
#' @keywords utilities
polish_publisher_fennica <- function (df.orig) {

  # Adapted from: harmonize_publisher_main			 
  # TODO : one way to speed up is to only consider unique entries. 

  raw_publishers <- NULL # Never created but assumed later??

  # TODO: Get necessary function names, tables etc. from a single csv-file!
  additional_harmonizing_function <- NA

    languages <- c("finnish", "latin", "swedish")
    enrich <- TRUE
    enrichment_function <- "harmonize_publisher_fennica"
    additional_harmonizing_function <- "harmonize_corporate_Finto"

    publication_year <- df.orig$publication_year
    town <- df.orig$publication_place
    cheat_list <- cheat_publishers()
    inds <- which(!is.na(df.orig$corporate))
    

  df <- data.frame(list(row.index = 1:nrow(df.orig)))
  
  # Initiate pubs
  pubs <- data.frame(alt=character(length=nrow(df.orig)),
		     pref=character(length=nrow(df.orig)),
		     match_method=integer(length=nrow(df.orig)),
		     stringsAsFactors = FALSE)
  
  # Additional harmonizing: in Fennica there's stuff in $corporate -field, which doesn't match with Finto
  # TODO: Would be very good to separate the catalog specific parts outside of bibliographica
  if (!is.na(additional_harmonizing_function)) {
    additionally_harmonized <- do.call(additional_harmonizing_function, list(df.orig$corporate[inds]))
    pubs$alt[inds] <- additionally_harmonized$orig
    pubs$pref[inds] <- additionally_harmonized$name
    pubs$match_method[inds] <- 4
  }
  
  # The enrichment part
  # TODO: enrichments should be in a separate function for clarity, as with the other fields in the pipeline.
  # But this is ok an very useful for now  
  enriched_pubs <- do.call(enrichment_function, args=list(df.orig, cheat_list = cheat_list, languages = languages))
  enriched_inds <- which(enriched_pubs$alt!="")
  message("Enrichments done")

  # Check if this is valid
  pubs$alt[enriched_inds] <- enriched_pubs$alt[enriched_inds]
  
  # CHECK THE contents of pubs$alt[1:10] !!!!
  # The combination of enriched part & the unprocessed part
  message("Combining function")
  combined_pubs <- combine_publisher_fennica(df.orig, languages, pubs, town, cheat_list)
  
  message("Combining function OK")
  # Convert S.N. into NA and Author into <Author>
  message("Harmonizing more")
  f <- system.file("extdata/NA_publishers.csv", package="bibliographica")
  synonymes <- read.csv(file=f, sep="\t", fileEncoding="UTF-8")
  combined_pubs$mod <- map(combined_pubs$mod, synonymes, mode="recursive")
  
  message("Last unification: If author name is the same as the publisher name -> mark as self-published")
  # NB! This could be more refined!
  inds <- which(df.orig$publisher==df.orig$author_name)
  combined_pubs$mod[inds] <- "<Author>"

  final <- combined_pubs$mod
  final[final == ""] <- NA

  return(final)
}

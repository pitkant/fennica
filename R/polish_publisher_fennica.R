#' @title Polish Publisher Main
#' @description Main handler for publisher fields.
#' @param df.orig Data frame with raw data
#' @return Data frame with orig, mod
#' @export
#' @author Hege Roivainen \email{hege.roivainen@@gmail.com}
#' @references See citation("bibliographica")
#' @keywords utilities
polish_publisher_fennica <- function (df.orig) {

  # TODO : one way to speed up is to only consider unique entries. 

  # TODO: Get necessary function names, tables etc. from a single csv-file!
  languages <- c("finnish", "latin", "swedish")
  publication_year <- df.orig[, c("publication_year", "publication_year_from", "publication_year_from")]
  town <- df.orig$publication_place

  # Saved to speed up analysis
  # cheat_list <- cheat_publishers()
  # saveRDS(cheat_list, file = "../extdata/publisher_cheatlist.Rds")
  cheat_list <- readRDS(system.file("extdata/publisher_cheatlist.Rds",
                                       package = "fennica"))

  df <- data.frame(list(row.index = 1:nrow(df.orig)))
  
  # Initiate pubs
  pubs <- data.frame(alt=character(length=nrow(df.orig)),
       	             pref=character(length=nrow(df.orig)),
		     match_method=integer(length=nrow(df.orig)),
		     stringsAsFactors = FALSE)
  
  # Additional harmonizing: in Fennica there's stuff in $corporate -field, which doesn't match with Finto
  # TODO: do we really want to process all NA corporate entries, or just those
  # where publisher field is empty ?
  inds <- which(!is.na(df.orig$corporate))  
  additionally_harmonized <- harmonize_corporate_Finto(df.orig$corporate[inds])
  pubs$alt[inds] <- additionally_harmonized$orig
  pubs$pref[inds] <- additionally_harmonized$name
  pubs$match_method[inds] <- 4
  
  # The enrichment part
  # TODO: enrichments should be in a separate function for clarity, as with the other fields in the pipeline.
  # But this is ok an very useful for now  
  enriched_pubs <- harmonize_publisher_fennica(df.orig, cheat_list = cheat_list, languages = languages)
  enriched_inds <- which(enriched_pubs$alt!="")  
  pubs$alt[enriched_inds] <- enriched_pubs$alt[enriched_inds]
  
  # CHECK THE contents of pubs$alt[1:10] !!!!
  # The combination of enriched part & the unprocessed part
  combined_pubs <- combine_publisher_fennica(df.orig, languages, pubs, town, publication_year, cheat_list)
  
  # Convert S.N. into NA and Author into <Author>
  f <- system.file("extdata/NA_publishers.csv", package = "bibliographica")
  synonymes <- read.csv(file = f, sep = "\t", fileEncoding = "UTF-8")
  combined_pubs$mod <- map(combined_pubs$mod, synonymes, mode = "recursive")
  
  # Last unification:
  # If author name is the same as the publisher name -> mark as self-published
  # NB! This could be more refined!
  inds <- which(df.orig$publisher==df.orig$author_name)
  combined_pubs$mod[inds] <- "<Author>"

  pubs.polished <- combined_pubs$mod
  pubs.polished[pubs.polished == ""] <- NA

  return(pubs.polished)
}

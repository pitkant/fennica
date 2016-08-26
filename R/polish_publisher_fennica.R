#' @title Polish Publisher Main
#' @description Main handler for publisher fields.
#' @param df.preprocessed Data frame with raw data
#' @return Data frame with orig, mod
#' @export
#' @author Hege Roivainen \email{hege.roivainen@@gmail.com}
#' @references See citation("bibliographica")
#' @keywords utilities
polish_publisher_fennica <- function (df.preprocessed) {

  # TODO : one way to speed up is to only consider unique entries. 
  df.preprocessed$publisher <- tolower(df.preprocessed$publisher)

  # Pick just to fields that are used in the analysis
  df.preprocessed <- df.preprocessed[, c("publication_year", "publication_year_from", "publication_year_till", "publication_place", "corporate", "publisher")]



  # TODO: Get necessary function names, tables etc. from a single csv-file!
  languages <- c("finnish", "latin", "swedish")
  publication_year <- df.preprocessed[, c("publication_year", "publication_year_from", "publication_year_till")]
  town <- df.preprocessed$publication_place

  # Saved to speed up analysis
  # cheat_list <- cheat_publishers()
  # saveRDS(cheat_list, file = "../extdata/publisher_cheatlist.Rds")
  cheat_list <- readRDS(system.file("extdata/publisher_cheatlist.Rds",
                                       package = "fennica"))

  df <- data.frame(list(row.index = 1:nrow(df.preprocessed)))
  
  # Initiate pubs
  pubs <- data.frame(alt  = character(length = nrow(df.preprocessed)),
       	             pref = character(length = nrow(df.preprocessed)),
		     match_method = integer(length = nrow(df.preprocessed)),
		     stringsAsFactors = FALSE)
  
  # Additional harmonizing: in Fennica there's stuff in $corporate
  # -field, which doesn't match with Finto
  # Only consider those cases where publisher field is NA
  inds <- which(!is.na(df.preprocessed$corporate) & is.na(df.preprocessed$publisher))  
  additionally_harmonized <- harmonize_corporate_Finto(df.preprocessed$corporate[inds])
  pubs$alt[inds] <- additionally_harmonized$orig
  pubs$pref[inds] <- additionally_harmonized$name
  pubs$match_method[inds] <- 4
  
  # The enrichment part
  # TODO: enrichments should be in a separate function for clarity, as with the other fields in the pipeline.
  # But this is ok an very useful for now  
  enriched_pubs <- harmonize_publisher_fennica(df.preprocessed, cheat_list = cheat_list, languages = languages)
  enriched_inds <- which(enriched_pubs!="")  
  pubs$alt[enriched_inds] <- enriched_pubs[enriched_inds]
  
  # The combination of enriched part & the unprocessed part
  combined_pubs <- combine_publisher_fennica(df.preprocessed, languages, pubs, town, publication_year, cheat_list)
  
  # Convert S.N. into NA 
  f <- system.file("extdata/NA_publishers.csv", package = "bibliographica")
  synonymes <- read.csv(file = f, sep = "\t", fileEncoding = "UTF-8")
  combined_pubs$mod <- map(combined_pubs$mod, synonymes, mode = "recursive")
  pubs.polished <- combined_pubs$mod
  pubs.polished[pubs.polished == ""] <- NA

  pubs.polished <- capitalize(pubs.polished)

  return(pubs.polished)
}

#' @title Polish Publisher Main
#' @description Main handler for publisher fields.
#' @param df.preprocessed Data frame with raw data
#' @param useShortcuts If TRUE, loads RDS instead of doing everything from scratch
#' @return Data frame with orig, mod
#' @export
#' @author Hege Roivainen \email{hege.roivainen@@gmail.com}
#' @references See citation("bibliographica")
#' @keywords utilities
polish_publisher_fennica <- function (df.preprocessed, useShortcuts=FALSE) {
  
  # TODO : one way to speed up is to only consider unique entries. 

  # Pick just those fields that are used in the analysis
  df.preprocessed <- df.preprocessed[, c("publication_year", "publication_year_from", "publication_year_till",
                                         "publication_place", "corporate", "publisher")]

    
  # TODO: Get necessary function names, tables etc. from a single csv-file!
  languages <- c("finnish", "latin", "swedish")
  publication_year <- df.preprocessed[, c("publication_year", "publication_year_from", "publication_year_till")]
  town <- df.preprocessed$publication_place
  
  if (system.file("extdata/publisher_cheatlist.Rds", package="fennica") != "") {
    cheat_list <- readRDS(system.file("extdata/publisher_cheatlist.Rds", package = "fennica"))
  } else {
    cheat_list <- cheat_publishers()
    if (useShortcuts) {
      saveRDS(cheat_list, file = "../extdata/publisher_cheatlist.Rds")
    }
  }
  
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
  if (length(inds) > 0) {
    additionally_harmonized <- harmonize_corporate_Finto(df.preprocessed$corporate[inds])
    pubs$alt[inds] <- additionally_harmonized$orig
    pubs$pref[inds] <- additionally_harmonized$name
    pubs$match_method[inds] <- 4
  }
  pubs.bu <- pubs
  
  # The enrichment part
  # TODO: enrichments should be in a separate function for clarity, as with the other fields in the pipeline.
  # But this is ok an very useful for now  
  enriched_pubs <- harmonize_publisher_fennica(df.preprocessed, cheat_list = cheat_list, languages = languages)
  enriched_inds <- intersect(which(enriched_pubs != ""), which(!is.na(enriched_pubs)))
  # HR 2016-10-31: 
  # Switch $corporate values into $publisher, if they weren't in Finto prefs
  # Those values will be double checked against Finto; this could be fixed later
  inds_corporate_not_finto <- intersect(which(!is.na(df.preprocessed$corporate)), which(!enriched_pubs %in% cheat_list$pref))
  # As $publisher is a factor, the new levels must be set in place as well
  
  levs <- unique(c(levels(df.preprocessed$publisher), levels(df.preprocessed$corporate[inds_corporate_not_finto])))
  levels(df.preprocessed$publisher) <- levs
  df.preprocessed$publisher[inds_corporate_not_finto] <- df.preprocessed$corporate[inds_corporate_not_finto]
  
  # Remove inds, which weren't in Finto
  enriched_inds <- setdiff(enriched_inds, inds_corporate_not_finto)
  pubs$alt[enriched_inds] <- enriched_pubs[enriched_inds]
  pubs$pref[enriched_inds] <- enriched_pubs[enriched_inds]
  
  # TODO: Shortcut: exit if empty
  # Prepare new publisher variable, for those that haven't been processed yet
  message("Proceeding.")
  keep.inds <- setdiff(1:nrow(df.preprocessed), enriched_inds)

  # HR 2017-03-21: Don't do sv_publisher -conversions in clean_publisher(),
  # as it's done in harmonize_publisher in a more controlled way
  unprocessed_pubs  <- clean_publisher(df.preprocessed$publisher[keep.inds], languages = c())
  unprocessed_pubs  <- harmonize_publisher_fennica2(unprocessed_pubs, publication_year[keep.inds,], languages = languages)
  unprocessed_towns <- df.preprocessed$publication_place[keep.inds]
  unprocessed_years <- publication_year[keep.inds,]
  
  message("change_to_Finto_preferred")  
  preferred_pubs <- change_to_Finto_preferred(pubs = unprocessed_pubs,
                                              towns = unprocessed_towns,
                                              years = unprocessed_years,
                                              cheat_list = cheat_list)
  
  message("... combine the two sets of the combined publishers")
  combined_pubs <- character(length = nrow(pubs))
  combined_pubs[keep.inds] <- preferred_pubs$orig
  combined_pubs[enriched_inds] <- pubs$pref[enriched_inds]
  
  # ----------------------------------------------------------------------------------
  
  # Convert S.N. into NA 
  f <- system.file("extdata/NA_publishers.csv", package = "fennica")
  synonymes <- read.csv(file = f, sep = "\t", fileEncoding = "UTF-8", as.is = TRUE)

  # HR 20160930:
  # function map won't work, because it doesn't support regex. 
  # I didn't want to mess with it
  pubs.polished <- combined_pubs
  pubs.polished[which(is.na(pubs.polished))] <- ""
  for (i in 1:nrow(synonymes)) {
    pubs.polished <- str_replace(pubs.polished, paste0("^", synonymes[i, "synonyme"], "$"), synonymes[i, "name"])
  }
  message("... S.N. into NA done.")
  pubs.polished[pubs.polished == ""] <- NA
  
  pubs.polished.cap <- capitalize(pubs.polished)
  
  return(pubs.polished.cap)
}

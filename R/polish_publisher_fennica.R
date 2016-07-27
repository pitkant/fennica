#' @title Harmonize Publisher Main
#' @description Main handler for publisher fields.
#' @param df Data frame with raw data
#' @return Data frame with orig, mod
#' @export
#' @author Hege Roivainen \email{hege.roivainen@@gmail.com}
#' @references See citation("bibliographica")
#' @keywords utilities
polish_publisher_fennica <- function (df) {

  languages <- c("finnish", "latin", "swedish")

  # Saved to speed up analysis
  # cheat_list <- cheat_publishers()
  # saveRDS(cheat_list, file = "../extdata/publisher_cheatlist.Rds")
  cheat_list <- readRDS(system.file("extdata/publisher_cheatlist.Rds",
			               package = "fennica"))

  # Additional harmonizing: in Fennica there's stuff in $corporate -field, which doesn't match with Finto
  inds <- which(!is.na(df$corporate))
  additionally_harmonized <- harmonize_corporate_Finto(df$corporate[inds])

  pubs <- data.frame(alt = character(length = nrow(df)),
                     pref = character(length = nrow(df)),
		     match_method = integer(length = nrow(df)),
		     stringsAsFactors = FALSE)
  pubs$alt[inds]  <- additionally_harmonized$orig
  pubs$pref[inds] <- additionally_harmonized$name
  pubs$match_method[inds] <- 4
  
  # The enrichment part
  enriched_pubs <- harmonize_publisher_fennica(df, cheat_list = cheat_list, languages = languages)
  enriched_inds <- which(enriched_pubs$alt != "")
  pubs$alt[enriched_inds] <- enriched_pubs$alt[enriched_inds]
  
  message("Prepare new publisher variable, for those that haven't been processed yet")
  enriched_inds <- intersect(which(!is.na(pubs$alt)), which(pubs$alt != ""))

  message("Remove opening brackets without closure") #, as grep considers that naughty
  preferred_pubs <- change_to_Finto_preferred(df = df[-enriched_inds,], cheat_list = cheat_list, languages = languages)
  
  message("Combine the two sets of the combined publishers")
  combined_pubs <- character(length = nrow(pubs))
  combined_pubs[enriched_inds]  <- pubs$pref[enriched_inds]
  combined_pubs[-enriched_inds] <- preferred_pubs$mod
  
  # Convert S.N. into NA and Author into <Author>
  f <- system.file("extdata/NA_publishers.csv", package = "bibliographica")
  synonymes <- read.csv(file = f, sep = "\t", fileEncoding = "UTF-8")
  combined_pubs <- map(combined_pubs, synonymes, mode = "recursive")
  combined_pubs[combined_pubs == ""] <- NA

  return (combined_pubs)

}


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

  # Additional harmonizing: in Fennica there's stuff in
  # $corporate -field, which doesn't match with Finto
  publishername <- harmonize_corporate_Finto(df$corporate)

  # TODO do we really want to take all non-NA entries from corporate field?
  # Is it not sufficient to take thos which are NA in publisher field and non-NA in corporate field?
  inds <- which(!is.na(df$corporate))
  pubs <- data.frame(alt = character(length = nrow(df)),
                     pref = character(length = nrow(df)),
		     stringsAsFactors = FALSE)
  pubs$alt[inds]  <- publishername[inds, "orig"]
  pubs$pref[inds] <- publishername[inds, "name"]

  message("Combine the two sets of the combined publishers") # By default, use pubs
  final_pubs  <- pubs$pref 

  # The enrichment part
  enriched_pubs <- harmonize_publisher_fennica(df, cheat_list = cheat_list, languages = languages, publishername$name)
  # Pick entries that could be harmonized non-trivially
  inds <- which(enriched_pubs != "")
  pubs$alt[inds] <- enriched_pubs[inds]

  # Consider non-NA/non-empty entries
  inds <- (!is.na(pubs$alt)) & (pubs$alt != "")  
  # But for non enriched inds use preferred_pubs
  tmp <- change_to_Finto_preferred(df = df[inds,], cheat_list = cheat_list, languages = languages)
  final_pubs[inds] <- tmp
  
  # Convert S.N. into NA and Author into <Author>
  f <- system.file("extdata/NA_publishers.csv", package = "bibliographica")
  synonymes <- read.csv(file = f, sep = "\t", fileEncoding = "UTF-8")
  final_pubs <- map(final_pubs, synonymes, mode = "recursive")
  final_pubs[final_pubs == ""] <- NA

  return(final_pubs)

}


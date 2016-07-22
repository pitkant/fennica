#' @title Polish Publishers for Fennica
#' @description Fennica-specific cleanup for the publisher field.
#' @param df data.frame
#' @return Data frame with possible publisher form and the preferred output
#' @export
#' @author Hege Roivainen \email{hege.roivainen@@gmail.com}
#' @references See citation("bibliographica")
polish_publisher_fennica <- function (df) {

 languages <- c("finnish", "latin", "swedish")

  # Saved to speed up analysis
  # cheat_list <- cheat_publishers()
  # saveRDS(cheat_list, file = "../extdata/publisher_cheatlist.Rds")
  cheat_list <- readRDS(system.file("extdata/publisher_cheatlist.Rds",
			               package = "fennica"))

  # Additional harmonization: if there's stuff in $corporate -field,
  # which doesn't match with Finto
  inds <- which(!is.na(df$corporate))
  additionally_harmonized <- harmonize_corporate_Finto(df$corporate[inds])

  # Init data.frame
  pubs <- data.frame(alt  = character(length = nrow(df)),
                     pref = character(length = nrow(df)),
		     stringsAsFactors = FALSE)
  pubs$alt[inds]  <- additionally_harmonized$orig
  pubs$pref[inds] <- additionally_harmonized$name

  enriched_pubs <- harmonize_publisher_fennica(df,
			                       cheat_list = cheat_list,
		       	 	               languages = languages)
					       
  pubs$alt[which(enriched_pubs != "")] <- enriched_pubs[which(enriched_pubs != "")]

  # Prepare new publisher variable, for those that haven't been processed yet
  enriched_inds <- which(pubs$alt != "")
  enriched_inds <- intersect(which(!is.na(pubs$alt)), enriched_inds)
  
  # TODO: Shortcut: exit if empty
  message("clean publisher")
  if (length(enriched_inds) > 0) {
    dfs <- df[-enriched_inds, ]
  } else {
    dfs <- df
  }

  message("Clean publisher")
  dfs$publisher <- harmonize_publishers_per_language(dfs$publisher, languages)  
  dfs$publisher <- clean_publisher(dfs$publisher)

  message("Finto preferred")
  preferred_pubs <- change_to_Finto_preferred(df = dfs, 
					      cheat_list = cheat_list,
					      languages = languages)
					      
  message("Combine the two sets of the combined publishers")
  combined_pubs <- character(length = nrow(df))
  if (length(enriched_inds) > 0 &&
      length(enriched_inds) < length(combined_pubs)) {
    combined_pubs[enriched_inds] <- pubs$pref[enriched_inds]
    combined_pubs[-enriched_inds] <- preferred_pubs
  } else if (length(enriched_inds) == 0) {
    combined_pubs <- preferred_pubs
  } else {
    combined_pubs <- pubs$pref
  }

  combined_pubs

}


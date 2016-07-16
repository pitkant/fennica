publisher_fennica_specific <- function (df, languages) {

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
  unprocessed_pubs <- clean_publisher(df$publisher[-enriched_inds],
				languages = languages)
  unprocessed_pubs <- harmonize_publisher(unprocessed_pubs,
					  languages = languages)
  unprocessed_towns <- df$publication_place[-enriched_inds]
  unprocessed_years <- df$publication_year[-enriched_inds,]
  # Remove opening brackets without closure, as grep considers that naughty
  unprocessed_towns <- gsub("^[[]([^[]+)$","\\1", unprocessed_towns)
  unprocessed_towns <- gsub("^[[](.*[^]])$","\\1", unprocessed_towns)
  
  preferred_pubs <- change_to_Finto_preferred(pubs  = unprocessed_pubs,
				              towns = unprocessed_towns,
					      years = unprocessed_years,
					      cheat_list = cheat_list)
					      
  # Combine the two sets of the combined publishers
  combined_pubs <- character(length = nrow(pubs))
  combined_pubs[enriched_inds]  <- pubs$pref[enriched_inds]
  combined_pubs[-enriched_inds] <- preferred_pubs$mod

  combined_pubs$mod

}


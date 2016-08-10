combine_publisher_fennica <- function(df.orig, languages=c("english"), enriched_pubs, town, cheat_list) {

  # Prepare new publisher variable, for those that haven't been processed yet
  enriched_inds <- which(enriched_pubs$alt != "")
  enriched_inds <- intersect(which(!is.na(enriched_pubs$alt)), enriched_inds)
  
  # TODO: Shortcut: exit if empty

  message("Clean")
  unprocessed_pubs <- clean_publisher_fennica(df.orig$publisher[-enriched_inds], languages=languages)
  message("Harmonize")
  dfo <- df.orig[-enriched_inds,]  
  dfo$publisher <- unprocessed_pubs
  unprocessed_pubs <- harmonize_publisher(dfo, languages=languages)
  
  message("Harmonize Fine")    
  unprocessed_towns <- dfo$publication_place
  unprocessed_years <- df.orig[-enriched_inds, c("publication_year_from", "publication_year_till")]
  names(unprocessed_years) <- c("from", "till")

  # Bugs fixed: Remove opening brackets without closure, as grep considers that naughty
  
  unprocessed_towns <- gsub("^[[]([^[]+)$","\\1", unprocessed_towns)
  unprocessed_towns <- gsub("^[[](.*[^]])$","\\1", unprocessed_towns)
  
  message("Change")    
  preferred_pubs <- change_to_Finto_preferred(pubs=unprocessed_pubs,
					      towns=unprocessed_towns,
					      years=unprocessed_years,
					      cheat_list=cheat_list)
  
  message("Combine the two sets of the combined publishers")
  combined_pubs <- data.frame(orig=character(length=nrow(enriched_pubs)),
  		              mod=character(length=nrow(enriched_pubs)),
			      method=character(length=nrow(enriched_pubs)),
			      stringsAsFactors = FALSE)
  combined_pubs$orig[enriched_inds] <- enriched_pubs$alt[enriched_inds]
  combined_pubs$mod[enriched_inds] <- enriched_pubs$pref[enriched_inds]
  combined_pubs$orig[-enriched_inds] <- preferred_pubs$orig
  combined_pubs$mod[-enriched_inds] <- preferred_pubs$mod

  return (combined_pubs)
}


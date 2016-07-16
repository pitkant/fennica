#' @title Harmonize Publisher Fennica
#' @description Main handler for publisher fields for Fennica.
#' @param df.preprocessed Data frame with raw data, assuming the place, year fields are already polished.
#' @return A vector with polished entries.
#' @export
#' @author Hege Roivainen \email{hege.roivainen@@gmail.com}
#' @references See citation("bibliographica")
#' @keywords utilities
harmonize_publisher_fennica_part2 <- function (df.preprocessed) {

  # TODO: consider unique entries only  
  languages <- c("finnish", "latin", "swedish")
  cheat_list <- cheat_publishers()
  
  # TODO this might be overlapping with polish_publisher
  # the generic function which was called before the present function
  # We may want to skip this with Fennica, not sure yet
  combined_pubs <- harmonize_publisher(df.preprocessed,
				       languages = languages)


  # Init data.frame
  df <- data.frame(list(row.index = 1:nrow(df.preprocessed)))
  pubs <- data.frame(alt  = character(length = nrow(df.preprocessed)),
                     pref = character(length = nrow(df.preprocessed)),
		     stringsAsFactors = FALSE)

  enriched_pubs <- data.frame(
    		  alt  = character(length = 0),
    		  pref = character(length = 0),
		  match_methods = character(length = 0),
		  stringsAsFactors = FALSE)

  # Additional harmonization: if there's stuff in $corporate -field,
  # which doesn't match with Finto
  # TODO: Separate catalog specific parts outside of bibliographica
  inds <- which(!is.na(df.preprocessed$corporate))
  additionally_harmonized <- harmonize_corporate_Finto(df.preprocessed$corporate[inds])
  pubs$alt[inds]  <- additionally_harmonized$orig
  pubs$pref[inds] <- additionally_harmonized$name
  
  enriched_pubs <- harmonize_publisher_fennica(df.preprocessed,
			                       cheat_list = cheat_list,
		       	 	               languages = languages)
					       
  pubs$alt[which(enriched_pubs != "")] <- enriched_pubs[which(enriched_pubs != "")]

  # Prepare new publisher variable, for those that haven't been processed yet
  enriched_inds <- which(pubs$alt != "")
  enriched_inds <- intersect(which(!is.na(pubs$alt)), enriched_inds)
  
  # TODO: Shortcut: exit if empty
  unprocessed_pubs <- clean_publisher(df.preprocessed$publisher[-enriched_inds], languages = languages)
  unprocessed_pubs <- harmonize_publisher(unprocessed_pubs,
					  languages = languages)
  unprocessed_towns <- df.preprocessed$publication_place[-enriched_inds]
  unprocessed_years <- df.preprocessed$publication_year[-enriched_inds,]
  # Remove opening brackets without closure, as grep considers that naughty
  unprocessed_towns <- gsub("^[[]([^[]+)$","\\1", unprocessed_towns)
  unprocessed_towns <- gsub("^[[](.*[^]])$","\\1", unprocessed_towns)
  
  preferred_pubs <- change_to_Finto_preferred(pubs  = unprocessed_pubs,
				              towns = unprocessed_towns,
					      years = unprocessed_years,
					      cheat_list=cheat_list)
					      
  # Combine the two sets of the combined publishers
  combined_pubs <- character(length = nrow(pubs))
  combined_pubs[enriched_inds]  <- pubs$pref[enriched_inds]
  combined_pubs[-enriched_inds] <- preferred_pubs$mod

  # Convert S.N. into NA and Author into <Author>
  f <- system.file("extdata/NA_publishers.csv", package="bibliographica")
  synonymes <- read.csv(file = f, sep = "\t", fileEncoding = "UTF-8")
  harmonized_pubs <- map(combined_pubs$mod, synonymes, mode = "recursive")

  # In fact only necessary to return mod
  return(harmonized_pubs)

}

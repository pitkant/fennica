#' @title Harmonize Publisher Fennica
#' @description Harmonizes publisher names and enriches them with Finto information.
#' @param df data.frame
#' @param cheat_list Data frame of alt, pref: alternative spellings and their counterpart the preferred spelling
#' @param languages A vector of languages which are used in detecting relation keywords
#' @return Polished vector.
#' @author Hege Roivainen \email{hege.roivainen@@gmail.com}
#' @references See citation("bibliographica")
#' @keywords utilities
harmonize_publisher_fennica <- function(df, cheat_list, languages = c("english")) {

  message("Starting: harmonize_publisher_fennica")

  # Get Finto data from field 710a ($corporate)
  publisher <- harmonize_corporate_Finto(df$corporate)
  
  # Get remaining values from other fields
  inds <- which(!is.na(publisher$name))
  df$publisher[-inds] <- harmonize_publishers_per_language(df$publisher[-inds], languages)
  df$publisher[-inds] <- clean_publisher(df$publisher[-inds])

  publisher$orig[-inds] <- as.character(df$publisher[-inds])
  publisher$town[-inds] <- df$publication_place[-inds]

  # Test if misspelling can be corrected using corporate field values for all
  # the corresponding publisher values
  known_indices   <- which(!is.na(publisher$name))
  #unknown_indices <- which(is.na(publisher$name))
  #known_names <- df$publisher[known_indices]
  #known_names <- harmonize_publishers_per_language(known_names, languages)
  #known_names <- clean_publisher(known_names)
  #unknown_names <- df$publisher[unknown_indices]
  #unknown_names <- harmonize_publishers_per_language(unknown_names, languages)
  #unknown_names <- clean_publisher(unknown_names)
  #corrected_names <- df$publisher[known_indices]


  # Cheat list contains every bit of info from Finto XML
  # cheat_list <- cheat_publishers()
  Finto_years <- data.frame(year_from=cheat_list$year_from,
			    year_till=cheat_list$year_till,
			    stringsAsFactors = FALSE)
			    
  # NB! Add town synonyms!
  Finto_town <- publisher$publication_place

  publisher$name <- harmonize_publishers_per_language(publisher$name, languages = "finnish")
  all_names <- clean_publisher(publisher$name)

  # TODO: this is slow - to optimize
  Finto_comp <- extract_personal_names(cheat_list$alt,
       languages=c("finnish", "latin", "swedish"))
  all_names <- extract_personal_names(all_names,
       c("finnish", "latin", "swedish"))
  
  # Check against Finto, if there's a preferred way in outputting the
  # publisher name
  # Included are also publication place & year
  # Typos are allowed to a small extent
  
  Finto_pubs <- get_publishers_Finto(
			    Finto_corrected = cheat_list$pref, 
                            Finto_comp = Finto_comp,
                            all_names  = all_names, 
                            known_inds = inds,
                            Finto_town = cheat_list$town,
                            df = df,
                            Finto_years = Finto_years)

  return(Finto_pubs$alt)
}
  
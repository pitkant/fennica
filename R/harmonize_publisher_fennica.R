#' @title Harmonize Publisher Fennica
#' @description Harmonizes publisher names and enriches them with Finto information.
#' @param df.orig Raw data from csv
#' @param cheat_list Data frame of alt, pref: alternative spellings and their counterpart the preferred spelling
#' @param languages A vector of languages which are used in detecting relation keywords
#' @return Data frame with alt, pref, match_methods
#' @export
#' @author Hege Roivainen \email{hege.roivainen@@gmail.com}
#' @references See citation("bibliographica")
#' @examples # harmonize_publisher_fennica(df.orig, cheat_list, languages=c("finnish", "swedish", "latin"))
#' @keywords utilities
harmonize_publisher_fennica <- function(df.orig, cheat_list, languages=c("english")) {

  message("Starting: harmonize_publisher_fennica")
  publication_year <- df.orig[, c("publication_year", "publication_year_from", "publication_year_till")]
  
  # Get Finto data from field 710a ($corporate)
  publisher <- harmonize_corporate_Finto(df.orig$corporate)
  town <- df.orig$publication_place
  
  # Get remaining values from other fields
  inds <- which(!is.na(publisher$name))
  publisher$name[-inds] <- clean_publisher(df.orig$publisher[-inds], languages=languages)
  publisher$orig[-inds] <- as.character(df.orig$publisher[-inds])

  # TODO: Add town synonyms !
  publisher$town[-inds] <- df.orig$publication_place[-inds]

  # Test if misspelling can be corrected using corporate field values for all the corresponding publisher values
  known_indices <- which(!is.na(publisher$name))
  unknown_indices <- which(is.na(publisher$name))
  known_names <- clean_publisher(df.orig$publisher[known_indices], languages=languages)
  unknown_names <- unique(clean_publisher(df.orig$publisher[unknown_indices], languages=languages))
  corrected_names <- publisher$name[known_indices]
  all_names <- clean_publisher(publisher$name, languages=c("finnish"))

  # TODO: this is slow - optimize
  Finto_comp <- extract_personal_names(cheat_list$alt, languages = c("finnish", "latin", "swedish"))
  all_names  <- extract_personal_names(all_names, c("finnish", "latin", "swedish"))
  
  # Check against Finto,
  # if there's a preferred way in outputting the publisher name
  # Included are also publication place & year
  # Typos are allowed to a small extent
  
  message("About to start: get_publishers_Finto")
  finto <- rep(NA, nrow(cheat_list))  
  finto[-inds] <- get_publishers_Finto(
                            cheat_list[-inds,], 
                            Finto_comp = Finto_comp[-inds,],
                            all_names = all_names[-inds,], 
                            unknown_town = publisher$town[-inds],
                            publication_year = publication_year[-inds,])$alt

  return (finto)

}





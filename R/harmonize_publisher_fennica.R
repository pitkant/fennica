#' @title Harmonize Publisher Fennica
#' @description Harmonizes publisher names and enriches them with Finto information.
#' @param df Raw data from csv
#' @param cheat_list Data frame of alt, pref: alternative spellings and their counterpart the preferred spelling
#' @param languages A vector of languages which are used in detecting relation keywords
<<<<<<< HEAD
<<<<<<< HEAD
#' @param publishername publishername
=======
>>>>>>> parent of d734060... ok
=======
>>>>>>> parent of d734060... ok
#' @return Data frame with alt, pref, match_methods
#' @export
#' @author Hege Roivainen \email{hege.roivainen@@gmail.com}
#' @references See citation("bibliographica")
#' @examples # harmonize_publisher_fennica(df, cheat_list, languages=c("finnish", "swedish", "latin"))
#' @keywords utilities
<<<<<<< HEAD
<<<<<<< HEAD
harmonize_publisher_fennica <- function(df, cheat_list, languages=c("english"), publishername) {
=======
harmonize_publisher_fennica <- function(df, cheat_list, languages=c("english")) {
>>>>>>> parent of d734060... ok
=======
harmonize_publisher_fennica <- function(df, cheat_list, languages=c("english")) {
>>>>>>> parent of d734060... ok

  message("Starting: harmonize_publisher_fennica")
  
  # Get Finto data from field 710a ($corporate)
<<<<<<< HEAD
  publisher <- harmonize_corporate_Finto(df$corporate)
  #publisher <- character(length = nrow(df))
=======
  #publisher <- harmonize_corporate_Finto(df$corporate)
<<<<<<< HEAD
<<<<<<< HEAD
  #publishername <- additionally_harmonized$name

  # Get remaining values from other fields
  inds <- which(!is.na(publishername))
  if (length(inds) > 0) {
    publishername[-inds] <- clean_publisher(harmonize_publishers_per_language(df$publisher[-inds], languages))    
    #publisher$name[-inds] <- clean_publisher(harmonize_publishers_per_language(df$publisher[-inds], languages))  
    #publisher$orig[-inds] <- as.character(df$publisher[-inds])
    #publisher$town[-inds] <- df$publication_place[-inds]
  }
=======
  publisher <- character(length = nrow(df))

  # Get remaining values from other fields
=======
  publisher <- character(length = nrow(df))
>>>>>>> 47deace877fb4a667eccc6d1a3fe4e4ef0afa71b

  # Get remaining values from other fields
>>>>>>> parent of d734060... ok
  inds <- which(!is.na(publisher$name))
  publisher$name[-inds] <- clean_publisher(harmonize_publishers_per_language(df$publisher[-inds], languages))  
  publisher$orig[-inds] <- as.character(df$publisher[-inds])
  publisher$town[-inds] <- df$publication_place[-inds]
<<<<<<< HEAD
>>>>>>> parent of d734060... ok
=======
>>>>>>> parent of d734060... ok

  # Test if misspelling can be corrected using corporate field values for all the corresponding publisher values
  known_indices <- which(!is.na(publisher$name))
  unknown_indices <- which(is.na(publisher$name))
  known_names <- clean_publisher(harmonize_publishers_per_language(df$publisher[known_indices], languages))  
  unknown_names <- unique(clean_publisher(harmonize_publishers_per_language(df$publisher[unknown_indices], languages))  )
  corrected_names <- publisher$name[known_indices]

  # Cheat list contains every bit of info from Finto XML
  # NB! Add town synonyms!
  all_names <- clean_publisher(harmonize_publishers_per_language(publisher$name, languages=c("finnish")))
  # TODO: this is slow - to optimize
  all_names <- extract_personal_names(all_names, c("finnish", "latin", "swedish"))
  
  # Check against Finto, if there's a preferred way in outputting the publisher name
  # Included are also publication place & year
  # Typos are allowed to a small extent
  Finto_comp <- extract_personal_names(cheat_list$alt, languages=c("finnish", "latin", "swedish"))
  Finto_years <- data.frame(year_from=cheat_list$year_from, year_till=cheat_list$year_till, stringsAsFactors = FALSE)


  message("About to start: get_publishers_Finto")
  Finto_pubs <- get_publishers_Finto(Finto_corrected = cheat_list$pref, 
                            Finto_comp = Finto_comp,
                            all_names = all_names, 
                            known_inds = inds,
                            Finto_town = cheat_list$town,
			    df = df, 
                            Finto_years = Finto_years)

  message("get_publishers_Finto OK.")			    

  return (Finto_pubs)
}
  
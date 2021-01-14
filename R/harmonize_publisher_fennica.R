#' @title Harmonize Publisher Fennica
#' @description Harmonizes publisher names and enriches them with Finto information.
#' @param df.orig Raw data from csv
#' @param cheat_list Data frame of alt, pref: alternative spellings and their counterpart the preferred spelling
#' @param languages A vector of languages which are used in detecting relation keywords
#' @param useShortcuts If TRUE, loads RDS instead of doing everything from scratch
#' @return Data frame with alt, pref, match_methods
#' @export
#' @author Hege Roivainen \email{leo.lahti@@iki.fi}
#' @references See citation("fennica")
#' @examples # harmonize_publisher_fennica(df.orig, cheat_list, languages=c("finnish", "swedish", "latin"))
#' @keywords utilities
harmonize_publisher_fennica <- function(df.orig, cheat_list, languages=c("english"), useShortcuts=FALSE) {

  message("Starting: harmonize_publisher_fennica")
  publication_year <- df.orig[, c("publication_year", "publication_year_from", "publication_year_till")]
  # Get Finto data from field 710a ($corporate)
  publisher <- harmonize_corporate_Finto(df.orig$corporate)
  town <- df.orig$publication_place
  message("... harmonize_corporate_Finto done")
  
  message("Get remaining values from other fields")
  inds <- intersect(which(!is.na(publisher$name)), which(publisher$name != ""))

  publisher$name[-inds] <- clean_publisher(df.orig$publisher[-inds], languages=languages)

  publisher$orig[-inds] <- str_trim(as.character(df.orig$publisher[-inds]))
  message("... clean_publisher done")

  # TODO: Add town synonyms !
  publisher$town[-inds] <- df.orig$publication_place[-inds]

  if (file.exists("all_names.current.Rds") && useShortcuts) {
    all_names <- readRDS("all_names.current.Rds")
    message("... all_names read from: all_names.current.Rds")
  } else {
    all_names <- clean_publisher(publisher$name, languages=c("finnish"))
    message("... all_names created from publisher$name")
    if (useShortcuts) {
      saveRDS(all_names, "all_names.current.Rds")
      message("... all_names saved as all_names.current.Rds")
    }
  }
  
  destructed_names <- clean_publisher_destructively(all_names, languages=c("finnish"))
  orig_destructed_mapping <- cbind.data.frame(orig=all_names, destructed=destructed_names)
  
  # TODO: this is slow - optimize
  destructed_finto <- clean_publisher_destructively(cheat_list$alt, languages = c("finnish", "latin", "swedish"))
  saveRDS(destructed_finto, "destructed_finto.20161028.Rds")

  if (file.exists("Finto_comp.extracted.names.current.Rds") && useShortcuts) {
    Finto_comp <- readRDS("Finto_comp.extracted.names.current.Rds")
    message("... Finto_comp read from: Finto_comp.extracted.names.current.Rds")
  } else {
    Finto_comp <- extract_personal_names(destructed_finto, languages = c("finnish", "latin", "swedish"))
    message("... Finto_comp created from cheat_list")
    if (useShortcuts) {
      saveRDS(Finto_comp, "Finto_comp.extracted.names.current.Rds")
      message("... Finto_comp saved as: Finto_comp.extracted.names.current.Rds")
    }
  }
  
  message("... extract_personal_names done once")
  destructed_names  <- extract_personal_names(destructed_names, c("finnish", "latin", "swedish"))
  
  # Check against Finto,
  # if there's a preferred way in outputting the publisher name
  # Included are also publication place & year
  # Typos are allowed to a small extent
  message("... about to start: get_publishers_Finto")
  finto <- rep(NA, length(all_names))  
  
  not_inds <- setdiff(1:length(all_names), inds)
  finto[not_inds] <- get_publishers_Finto(
    cheat_list, 
    Finto_comp,
    all_names = destructed_names[not_inds,], 
    unknown_town = publisher$town[not_inds],
    publication_year = publication_year[not_inds,])$pref
  
  finto[inds] <- publisher$name[inds]
  
  message ("... get_publisher_finto done.")
  finto <- unname(sapply(finto, function (d) 
    ifelse (d=="",
            NA,
            (as.character(tail(sort(orig_destructed_mapping$orig[which(orig_destructed_mapping$destructed==d)]),1)))
            )
    ))
  
  message("harmonize_publisher_fennica OK.")
  return (finto)

}

#' @title correct_misspellings
#' @description Correct misspelled city names based on mapping constructed earlier
#' @param v Vector of city names
#' @param city Correct name of a city
#' @return Vector of city names
#' @export
#' @author Niko Ilomaki \email{niko.ilomaki@@helsinki.fi}
#' @references See citation("fennica")
#' @examples \dontrun{v <- correct_misspellings(v,"Hämeenlinna")}
#' @keywords utilities
correct_misspellings <- function(v,city) {
  synonyms <- read.csv(paste0("output.tables/city_",sanitize_name(city),".csv"),header=FALSE,encoding="UTF-8")
  synonyms <- unlist(synonyms[[2]])
  v[v %in% synonyms] <- city
  v
}

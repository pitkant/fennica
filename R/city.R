#' @title sanitize_name
#' @description Remove Nordic characters etc. from strings to use in filenames
#'
#' @param name String or vector of strings
#' @return String or vector of strings
#'
#' @export
#' 
#' @author Niko Ilomäki \email{niko.ilomaki@@helsinki.fi}
#' @references See citation("fennica")
#' 
#' @examples name <- sanitize_name("Hämeenlinna")
#' @keywords utilities
sanitize_name <- function(name) {
	name <- gsub("ä","a",name)
	name <- gsub("ö","o",name)
	name <- gsub("ü","u",name)
	name <- gsub("å","o",name)
	name <- gsub("á","a",name)
	name <- gsub("à","a",name)
	name <- gsub("é","e",name)
	name <- gsub("è","e",name)
	name <- gsub("í","i",name)
	name <- gsub("ì","i",name)
	name <- gsub("Ä","A",name)
	name <- gsub("Ö","O",name)
	name <- gsub("Ü","U",name)
	name <- gsub("Å","O",name)
	name <- gsub("Á","A",name)
	name <- gsub("À","A",name)
	name <- gsub("É","E",name)
	name <- gsub("È","E",name)
	name <- gsub("Í","I",name)
	name <- gsub("Ì","I",name)
	name <- gsub(" ","",name)
	name
}

#' @title collect_misspellings
#' @description Use Levenshtein distance iteratively to find plausible misspellings
#'
#' @param city Correct name (prechosen form)
#' @param variations List of usual forms (possibly including usual misspellings)
#' @param all List of all non-assigned city names in the data
#' @return List of all non-assigned city names in the data
#'
#' @export
#' 
#' @author Niko Ilomäki \email{niko.ilomaki@@helsinki.fi}
#' @references See citation("fennica")
#' 
#' @examples \dontrun{all <- collect_misspellings("Hämeenlinna",c("Hämeenlinna","Tavastehus"),c("Hämeenlinnae","Tavasteehuus"))}
#' @keywords utilities
collect_misspellings <- function (city, variations, all) {
	eff <- 1
	while (eff > 0) {
		eff <- 0
		for (i in 1:length(all)) {
			if(is.na(all[i])) {
				next
			}
			if(min(adist(all[i],variations)) == 1){
				variations <- c(variations,as.character(all[i]))
				eff <- 1
			}
		}
	}
	write.csv(variations, file=paste0("output.tables/city_",sanitize_name(city),".csv"), fileEncoding="UTF-8")
	for (x in variations){
		all <- all[which(all!=get("x"))]
	}
	all
}



#' @title correct_misspellings
#' @description Correct misspelled city names based on mapping constructed earlier
#'
#' @param v Vector of city names
#' @param city Correct name of a city
#' @return Vector of city names
#'
#' @export
#' 
#' @author Niko Ilomäki \email{niko.ilomaki@@helsinki.fi}
#' @references See citation("fennica")
#' 
#' @examples \dontrun{v <- correct_misspellings(v,"Hämeenlinna")}
#' @keywords utilities
correct_misspellings <- function(v,city) {
	synonyms <- read.csv(paste0("output.tables/city_",sanitize_name(city),".csv"),header=FALSE,encoding="UTF-8")
	synonyms <- unlist(synonyms[[2]])
	v[v %in% synonyms] <- city

	v
}

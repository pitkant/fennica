#' @title collect_misspellings
#' @description Use Levenshtein distance iteratively to find plausible misspellings
#' @param city Correct name (prechosen form)
#' @param variations List of usual forms (possibly including usual misspellings)
#' @param all List of all non-assigned city names in the data
#' @return List of all city name variations found from the data
#' @export
#' @author Niko Ilomaki \email{niko.ilomaki@@helsinki.fi}
#' @references See citation("fennica")
#' @examples \dontrun{all <- collect_misspellings("Turku",c("Turku","Turkue"), c("Turku","Aboensis"))}
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
	
	#write.csv(variations, file=paste0("output.tables/city_",sanitize_name(city),".csv"), fileEncoding="UTF-8")
	#for (x in variations){
        # all <- all[which(all!=get("x"))]
	#}
	variations
}




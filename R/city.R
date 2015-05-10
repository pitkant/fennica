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

#' @title preprocess_placenames
#' @description Polish placenames (preliminary step)
#'
#' @param df.orig Dataframe with original fields
#' @param df Main dataframe
#' @return Main dataframe
#'
#' @export
#' 
#' @author Niko Ilomäki \email{niko.ilomaki@@helsinki.fi}
#' @references See citation("fennica")
#' 
#' @examples \dontrun{df <- preprocess_placenames(df.orig, df)}
#' @keywords utilities
preprocess_placenames <- function(df.orig, df) {
	v <- df.orig$publication_place

	# anywhere
	v <- gsub("–"," ",v)
	v <- gsub("\\-"," ",v)
	v <- gsub(" :;","; ",v)
	v <- gsub(" ;;","; ",v)
	v <- gsub(",","",v)
	v <- gsub("\\(","",v)
	v <- gsub("\\)","",v)
	v <- gsub("\\[","",v)
	v <- gsub("\\]","",v)
	v <- gsub(" sic ","",v)
	v <- gsub("\\=","",v)
	v <- gsub("\\:","",v)
	v <- gsub("\\.","",v)
	v <- gsub("  "," ",v)
  
  	# at beginning
	v <- gsub("^Tryckt i ","",v)
	v <- gsub("^Trykkt i ","",v)
	v <- gsub("^Tryckt j ","",v)
	v <- gsub("^Trykkt j ","",v)
	v <- gsub("^Tryck i ","",v)
	v <- gsub("^Tryck j ","",v)
	v <- gsub("^Trykt i ","",v)
	v <- gsub("^Trykt j ","",v)
	v <- gsub("^Trycht i ","",v)
	v <- gsub("^Trycht j ","",v)
	v <- gsub("^Tryckte i ","",v)
	v <- gsub("^Tryckte j ","",v)
	v <- gsub("^Tryckt på ","",v)
	v <- gsub("^Tryckt uti ","",v)
	v <- gsub("^Tryckt uthi ","",v)
	v <- gsub("^Tryckt och vplagdt i ","",v)
	v <- gsub("^På nytt medh egen bekonstnadt vplagd och tryckt i ","",v)
	v <- gsub("^Omtryckt i ","",v)
	v <- gsub("^Omtryckt j ","",v)
	v <- gsub("^Gedrukt zu ","",v)
	v <- gsub("^Gedruckt zu ","",v)
	v <- gsub("^Gedrucht zu ","",v)
	v <- gsub("^Prentat i ","",v)
	v <- gsub("^Prentat j ","",v)
	v <- gsub("^Prändäty ","",v)
	v <- gsub("^Prändätty ","",v)
	v <- gsub("^Pränt ","",v)
	v <- gsub("^Präntäty ","",v)
	v <- gsub("^Präntätty ","",v)
	v <- gsub("^Präntätyt ","",v)
	v <- gsub("^Prändätyt ","",v)
	v <- gsub("^Prentattu ","",v)
	v <- gsub("^Prentättu ","",v)
	v <- gsub("^Prentätty ","",v)
	v <- gsub("^Präntättyt ","",v)
	v <- gsub("^Prändättyt ","",v)
	v <- gsub("^Präntettu ","",v)
	v <- gsub("^Pränttäis ","",v)
	v <- gsub("^Präntäis ","",v)
	v <- gsub("^Präntätyd ","",v)
	v <- gsub("^Pränädtty ","",v)
	v <- gsub("^Prendäty ","",v)
	v <- gsub("^Prentetty ","",v)
	v <- gsub("^Painettu ","",v)
	v <- gsub("^Wastudesta prändätty","",v)	
	v <- gsub("^A ","",v)
	v <- gsub("^Excusa ","",v)
	v <- gsub("^I ","",v)
	v <- gsub("^In ","",v)
	v <- gsub("^Impr ","",v)
	v <- gsub("^Impressa ","",v)
	v <- gsub("^Impressum ","",v)
	v <- gsub("^Impressus ","",v)
	v <- gsub("^Imprimebat ","",v)
	v <- gsub("^Imprimebatur ","",v)
	v <- gsub("^Excusum ","",v)
	v <- gsub("^Excudit ","",v)
	v <- gsub("^Excudebat ","",v)
	v <- gsub("^Excuderunt ","",v)
	v <- gsub("^Excusae ","",v)
	v <- gsub("^Excusus ","",v)
	v <- gsub("^Excussit ","",v)
	v <- gsub("^Excussit","",v)
	v <- gsub("^Excusi ","",v)
	v <- gsub("^Exc ","",v)
	v <- gsub("^Exposita ","",v)
	v <- gsub("^En ","",v)
	v <- gsub("^Et ","",v)
	v <- gsub("^Ja ","",v)
	v <- gsub("^Och i ","",v)
	v <- gsub("^Annettu ","",v)
	v <- gsub("^ ","",v)
  
  	# at end
	v <- gsub(" prändäty$","",v)
	v <- gsub(" prändätty$","",v)
	v <- gsub(" prändättyt$","",v)
	v <- gsub(" pränt$","",v)
	v <- gsub(" präntäty$","",v)
	v <- gsub(" präntätty$","",v)
	v <- gsub(" caupungis$","",v)
	v <- gsub(" impressum$","",v)
	v <- gsub(" impressit$","",v)
	v <- gsub(" impressa$","",v)
	v <- gsub(" impre$","",v)
	v <- gsub(" v editum$","",v)
	v <- gsub(" sic$","",v)
	v <- gsub(" sn$","",v)
	v <- gsub(" $","",v)


	# sine loco
	v[v=="Sl"] <- NA
	v[v=="S l"] <- NA
	v[v=="Sl "] <- NA
	v[v=="sl"] <- NA
	v[v=="s l"] <- NA
	v[v=="Sn"] <- NA
	v[v=="sn"] <- NA
	v[v=="Sa"] <- NA
	v[v=="sa"] <- NA
	v[v=="SI"] <- NA
	v[v==""] <- NA

	# odd cases
	v[v=="122 s"] <- NA
	v[v=="204 s"] <- NA
	v[v=="2 p"] <- NA

	# semicolons (note: this removes a few dozen city names)
	v <- gsub("2. p.;","",v)
	v <- gsub("S.l.;","",v)
	v <- gsub("^(.*?);.*$","\\1",v) # nb. non-greedy match

	# anywhere (reprise)
	v <- gsub("–"," ",v)
	v <- gsub("\\-"," ",v)
	v <- gsub(" :;","; ",v)
	v <- gsub(" ;;","; ",v)
	v <- gsub(",","",v)
	v <- gsub("\\(","",v)
	v <- gsub("\\)","",v)
	v <- gsub("\\[","",v)
	v <- gsub("\\]","",v)
	v <- gsub(" sic ","",v)
	v <- gsub("\\=","",v)
	v <- gsub("\\:","",v)
	v <- gsub("\\.","",v)
	v <- gsub("  "," ",v)

	df$city <- v

	df
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

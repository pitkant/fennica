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
	write.csv2(variations, file=paste0("inst/examples/output.tables/city_",city,".csv"), fileEncoding="UTF-8")
	for (x in variations){
		all <- all[which(all!=get("x"))]
	}
	all
}

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
	v <- gsub("^Omtryckt i ","",v)
	v <- gsub("^Omtryckt j ","",v)
	v <- gsub("^Gedruckt zu ","",v)
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
	v <- gsub("^Excusi ","",v)
	v <- gsub("^Exc ","",v)
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
	v <- gsub(" impre$","",v)
	v <- gsub(" v editum$","",v)
	v <- gsub(" sic$","",v)
	v <- gsub(" sn$","",v)
	v <- gsub(" $","",v)


	# sine loco
	v[v=="Sl"] <- NA
	v[v=="sl"] <- NA
	v[v=="Sn"] <- NA
	v[v=="sn"] <- NA
	v[v=="Sa"] <- NA
	v[v=="sa"] <- NA
	v[v=="SI"] <- NA

	df$city <- v

	df
}

correct_misspellings <- function(v,filename,correct) {
	synonyms <- read.csv2(paste0("inst/examples/output.tables/city_",filename,".csv"),header=FALSE,encoding="UTF-8")
	synonyms <- unlist(synonyms[[2]])
	v[v %in% synonyms] <- correct

	v
}

deduce_country <- function(df) {
	v <- df$city
	w <- rep(NA, data_size)
	w[v=="Altdorf"] <- "Saksa"
	w[v=="Ashtabula OH"] <- "USA"
	w[v=="Astoria OR"] <- "USA"
	w[v=="Berliini"] <- "Saksa"
	w[v=="Boston MA"] <- "USA"
	w[v=="Bridgeport CT"] <- "USA"
	w[v=="Bronx NY"] <- "USA"
	w[v=="Brooklyn NY"] <- "USA"
	w[v=="Calumet MI"] <- "USA"
	w[v=="Chicago IL"] <- "USA"
	w[v=="Chisholm MN"] <- "USA"
	w[v=="Cincinnati OH"] <- "USA"
	w[v=="Cleveland OH"] <- "USA"
	w[v=="Duluth MN"] <- "USA"
	w[v=="Espoo"] <- "Suomi"
	w[v=="Fitchburg MA"] <- "USA"
	w[v=="Giessen"] <- "Saksa"
	w[v=="Göteborg"] <- "Ruotsi"
	w[v=="Göttingen"] <- "Saksa"
	w[v=="Greifswald"] <- "Saksa"
	w[v=="Haaparanta"] <- "Suomi"
	w[v=="Hamina"] <- "Suomi"
	w[v=="Hampuri"] <- "Saksa"
	w[v=="Hancock MI"] <- "USA"
	w[v=="Hanko"] <- "Suomi"
	w[v=="Helsinki"] <- "Suomi"
	w[v=="Hämeenlinna"] <- "Suomi"
	w[v=="Ironwood MI"] <- "USA"
	w[v=="Ishpeming MI"] <- "USA"
	w[v=="Jena"] <- "Saksa"
	w[v=="Jyväskylä"] <- "Suomi"
	w[v=="Kaleva MI"] <- "USA"
	w[v=="Kaliningrad"] <- "Saksa" # tuolloin
	w[v=="Karjaa"] <- "Suomi"
	w[v=="Kaskinen"] <- "Suomi"
	w[v=="Kiel"] <- "Saksa"
	w[v=="Kokkola"] <- "Suomi"
	w[v=="Kotka"] <- "Suomi"
	w[v=="Kouvola"] <- "Suomi"
	w[v=="Kristiinankaupunki"] <- "Suomi"
	w[v=="Kruunupyy"] <- "Suomi"
	w[v=="Kuopio"] <- "Suomi"
	w[v=="Köln"] <- "Saksa"
	w[v=="Kööpenhamina"] <- "Tanska"
	w[v=="Lahti"] <- "Suomi"
	w[v=="Lappeenranta"] <- "Suomi"
	w[v=="Leiden"] <- "Saksa"
	w[v=="Linköping"] <- "Ruotsi"
	w[v=="Lontoo"] <- "UK"
	w[v=="Loviisa"] <- "Suomi"
	w[v=="Lund"] <- "Ruotsi"
	w[v=="Lyypekki"] <- "Saksa"
	w[v=="Maarianhamina"] <- "Suomi"
	w[v=="Magdeburg"] <- "Saksa"
	w[v=="Marburg"] <- "Saksa"
	w[v=="Mikkeli"] <- "Suomi"
	w[v=="Milwaukee WI"] <- "USA"
	w[v=="Minneapolis MN"] <- "USA"
	w[v=="Moskova"] <- "Venäjä"
	w[v=="Nanaimo BC"] <- "Kanada"
	w[v=="Narva"] <- "Viro"
	w[v=="New York NY"] <- "USA"
	w[v=="New York Mills MN"] <- "USA"
	w[v=="Oslo"] <- "Norja"
	w[v=="Oulu"] <- "Suomi"
	w[v=="Pariisi"] <- "Ranska"
	w[v=="Philadelphia PA"] <- "USA"
	w[v=="Pietari"] <- "Venäjä"
	w[v=="Pietarsaari"] <- "Suomi"
	w[v=="Pori"] <- "Suomi"
	w[v=="Port Arthur ON"] <- "Kanada"
	w[v=="Portland OR"] <- "USA"
	w[v=="Porvoo"] <- "Suomi"
	w[v=="Pärnu"] <- "Viro"
	w[v=="Quincy MA"] <- "USA"
	w[v=="Rauma"] <- "Suomi"
	w[v=="Riika"] <- "Latvia"
	w[v=="Rock Island IL"] <- "USA"
	w[v=="Rooma"] <- "Italia"
	w[v=="Rostock"] <- "Saksa"
	w[v=="Seattle WA"] <- "USA"
	w[v=="Sipoo"] <- "Suomi"
	w[v=="Smithville MN"] <- "USA"
	w[v=="Sortavala"] <- "Suomi" # tuolloin
	w[v=="Strängnäs"] <- "Ruotsi"
	w[v=="Superior WI"] <- "USA"
	w[v=="Tallinna"] <- "Viro"
	w[v=="Tammisaari"] <- "Suomi"
	w[v=="Tampere"] <- "Suomi"
	w[v=="Tartto"] <- "Viro"
	w[v=="Tukholma"] <- "Ruotsi"
	w[v=="Turenki"] <- "Suomi"
	w[v=="Turku"] <- "Suomi"
	w[v=="Uppsala"] <- "Ruotsi"
	w[v=="Uusikaarlepyy"] <- "Suomi"
	w[v=="Uusikaupunki"] <- "Suomi"
	w[v=="Vaasa"] <- "Suomi"
	w[v=="Viipuri"] <- "Suomi"
	w[v=="Västerås"] <- "Ruotsi"
	w[v=="Wittenberg"] <- "Saksa"
	w[v=="Worcester MA"] <- "USA"

	df$country <- w

	df
}

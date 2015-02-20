correct_misspellings <- function(v) {
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
	v <- gsub("\\= ","",v)
	v <- gsub("\\=","",v)
	v <- gsub("\\: ","",v)
	v <- gsub("\\:","",v)
	v <- gsub("\\. ","",v)
	v <- gsub("\\.","",v)
  
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
	v <- gsub("^Prentat i ","",v)
	v <- gsub("^Prentat j ","",v)
	v <- gsub("^Prändäty ","",v)
	v <- gsub("^Prändätty ","",v)
	v <- gsub("^Pränt ","",v)
	v <- gsub("^Pränt. ","",v)
	v <- gsub("^Präntäty ","",v)
	v <- gsub("^Präntätty ","",v)
	v <- gsub("^Präntätyt ","",v)
	v <- gsub("^Prändätyt ","",v)
	v <- gsub("^Prentattu ","",v)
	v <- gsub("^Prendäty ","",v)
	v <- gsub("^Prentetty ","",v)
	v <- gsub("^Painettu ","",v)
	v <- gsub("^A ","",v)
	v <- gsub("^Excusa ","",v)
	v <- gsub("^I ","",v)
	v <- gsub("^Impr. ","",v)
	v <- gsub("^Impressa ","",v)
	v <- gsub("^Excusum ","",v)
	v <- gsub("^Excudit ","",v)
	v <- gsub("^Excusae ","",v)
	v <- gsub("^Excusus ","",v)
	v <- gsub("^Exc. ","",v)
	v <- gsub("^En ","",v)
	v <- gsub("^Et ","",v)
	v <- gsub("^Ja ","",v)
	v <- gsub("^Och i ","",v)
	v <- gsub("^Annettu ","",v)
	v <- gsub("^ ","",v)
  
  	# at end
	v <- gsub(" prändäty$","",v)
	v <- gsub(" prändätty$","",v)
	v <- gsub(" pränt$","",v)
	v <- gsub(" präntäty$","",v)
	v <- gsub(" präntätty$","",v)
	v <- gsub(" caupungis$","",v)
	v <- gsub(" impressum$","",v)
	v <- gsub(" impressit$","",v)
	v <- gsub(" impre$","",v)
	v <- gsub(" v. editum$","",v)
	v <- gsub(" sic$","",v)
	v <- gsub(" $","",v)

	# sine loco
	v[v=="Sl"] <- NA
	v[v=="sl"] <- NA
	v[v=="Sn"] <- NA
	v[v=="sn"] <- NA
	v[v=="Sa"] <- NA
	v[v=="sa"] <- NA
	v[v=="SI"] <- NA

	v[v %in% altdorf] <- "Altdorf"
	v[v %in% berliini] <- "Berliini"
	v[v %in% brooklyn] <- "Brooklyn"
	v[v %in% espoo] <- "Espoo"
	v[v %in% fitchburg] <- "Fitchburg MA"
	v[v %in% giessen] <- "Giessen"
	v[v %in% goteborg] <- "Göteborg"
	v[v %in% gottingen] <- "Göttingen"
	v[v %in% greifswald] <- "Greifswald"
	v[v %in% haaparanta] <- "Haaparanta"
	v[v %in% hamina] <- "Hamina"
	v[v %in% hampuri] <- "Hampuri"
	v[v %in% hancock] <- "Hancock MI"
	v[v %in% hanko] <- "Hanko"
	v[v %in% helsinki] <- "Helsinki"
	v[v %in% hameenlinna] <- "Hämeenlinna"
	v[v %in% jena] <- "Jena"
	v[v %in% kaleva] <- "Kaleva"
	v[v %in% kaliningrad] <- "Kaliningrad"
	v[v %in% karjaa] <- "Karjaa"
	v[v %in% kaskinen] <- "Kaskinen"
	v[v %in% kiel] <- "Kiel"
	v[v %in% kokkola] <- "Kokkola"
	v[v %in% kristiinankaupunki] <- "kristiinankaupunki"
	v[v %in% kruunupyy] <- "Kruunupyy"
	v[v %in% koln] <- "Köln"
	v[v %in% koopenhamina] <- "Kööpenhamina"
	v[v %in% lappeenranta] <- "Lappeenranta"
	v[v %in% leiden] <- "Leiden"
	v[v %in% linkoping] <- "Linköping"
	v[v %in% lontoo] <- "Lontoo"
	v[v %in% loviisa] <- "Loviisa"
	v[v %in% lund] <- "Lund"
	v[v %in% maarianhamina] <- "Maarianhamina"
	v[v %in% magdeburg] <- "Magdeburg"
	v[v %in% marburg] <- "Marburg"
	v[v %in% mikkeli] <- "Mikkeli"
	v[v %in% moskova] <- "Moskova"
	v[v %in% narva] <- "Narva"
	v[v %in% oslo] <- "Oslo"
	v[v %in% oulu] <- "Oulu"
	v[v %in% pariisi] <- "Pariisi"
	v[v %in% pietari] <- "Pietari"
	v[v %in% pietarsaari] <- "Pietarsaari"
	v[v %in% pori] <- "Pori"
	v[v %in% porvoo] <- "Porvoo"
	v[v %in% parnu] <- "Pärnu"
	v[v %in% riika] <- "Riika"
	v[v %in% rostock] <- "Rostock"
	v[v %in% sipoo] <- "Sipoo"
	v[v %in% sortavala] <- "Sortavala"
	v[v %in% strangnas] <- "Strängnäs"
	v[v %in% tallinna] <- "Tallinna"
	v[v %in% tammisaari] <- "Tammisaari"
	v[v %in% tampere] <- "Tampere"
	v[v %in% tartto] <- "Tartto"
	v[v %in% tukholma] <- "Tukholma"
	v[v %in% turenki] <- "Turenki"
	v[v %in% turku] <- "Turku"
	v[v %in% uppsala] <- "Uppsala"
	v[v %in% uusikaarlepyy] <- "Uusikaarlepyy"
	v[v %in% uusikaupunki] <- "Uusikaupunki"
	v[v %in% vaasa] <- "Vaasa"
	v[v %in% viipuri] <- "Viipuri" # huom! Tanskassakin on Viborg
	v[v %in% wittenberg] <- "Wittenberg"

	v
}

df$pub_where <- correct_misspellings(df$pub_where)

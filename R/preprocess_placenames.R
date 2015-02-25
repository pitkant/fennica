preprocess_placenames <- function(v) {
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
	v <- gsub("^Impr ","",v)
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

	v
}

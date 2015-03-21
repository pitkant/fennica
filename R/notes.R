# df$note_general <- embellish_field(df.orig[["500a"]]) # 21528 unique, 36382 NA
# df$note_dissert <- embellish_field(df.orig[["502a"]]) # 4 unique, 65501 NA
# df$note_granter <- embellish_field(df.orig[["502c"]]) # 88 unique, 66074 NA
# df$note_year <- embellish_field(df.orig[["502d"]]) # 283 unique, 66258 NA
# df$note_source <- embellish_field(df.orig[["510a"]]) # 5000 unique, 60165 NA
# df$note_loc <- embellish_field(df.orig[["510c"]]) # 6451 unique, 65267 NA

fix_note_diss <- function(df.orig, df) {
	v <- df.orig$note_dissertation
	v[v=="Diss"] <- TRUE
	v[v=="Diss. :;Diss"] <- TRUE
	v[v=="Diss. synod"] <- FALSE
	v[is.na(v)] <- FALSE
  v <- as.logical(v)
	df$note_diss <- v

	v <- df.orig$note_dissertation
	v[v=="Diss"] <- FALSE
	v[v=="Diss. :;Diss"] <- FALSE
	v[v=="Diss. synod"] <- TRUE
	v[is.na(v)] <- FALSE
  v <- as.logical(v)
	df$note_synod <- v

	df
}

fix_university <- function(df.orig, df) {
  v <- df.orig$note_granter
  # Turun yliopisto ja Åbo Akademi perustettiin vasta aineiston loputtua  (1920 ja 1918, vastaavasti)
  
  v[v=="Suomen yliopisto"] <- "Helsinki" # tarkistettu julkaisupaikoista
  v[v=="HY"] <- "Helsinki"
  v[v=="Dorpat"] <- "Tartto"
  v[v=="Turun akatemia"] <- "Turku"
  v[v=="Turun akatemia,;Turun akatemia"] <- "Turku"
  v[v=="1700"] <- NA
  v <- gsub("^.*Aleksan.*$","Helsinki",v)
  v <- gsub("^.*Alexan.*$","Helsinki",v)
  v <- gsub("^.*Helsink.*$","Helsinki",v)
  v <- gsub("^.*Helsing.*$","Helsinki",v)
  v <- gsub("^.*Tekn.*$","TKK",v)
  v <- gsub("^.*Bern.*$","Bern",v)
  v <- gsub("^.*Jena.*$","Jena",v)
  v <- gsub("^.*Lund.*$","Lund",v)
  v <- gsub("^.*Upps.*$","Uppsala",v)
  v <- gsub("^.*Ups.*$","Uppsala",v)
  v <- gsub("^.*Leipzig.*$","Leipzig",v)
  v <- gsub("^.*Turk.*$","Turku",v) 
  v <- gsub("^.*Basel.*$","Basel",v) 
  v <- gsub("^.*Berlin.*$","Berliini",v) 
  v <- gsub("^.*Strängnäs.*$","Strängnäs",v) 
  v <- gsub("^.*Göteborg.*$","Göteborg",v)
  v <- gsub("^.*Ludwigs.*$","Freiburg",v) # tarkista
  v <- gsub("^.*Hannover.*$","Hannover",v) # "Technischen Hochschule Hannover", nykyään Hannoverin yliopisto
  v <- gsub("^.*bingen.*$","Tübingen",v)
  v <- gsub("^.*Königsberg.*$","Königsberg",v)
  v <- gsub("^.*rich.*$","Zürich",v)
  v <- gsub("^.*Montpellier.*$","Montpellier",v)
  v <- gsub("^.*Paris.*$","Pariisi",v)
  v <- gsub("^.*Wittenberg.*$","Wittenberg",v)

  df$note_granter <- v

  df
}

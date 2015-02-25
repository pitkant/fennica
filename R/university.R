fix_university <- function(v) {
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
}

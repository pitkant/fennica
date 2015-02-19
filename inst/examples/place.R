fix_placenames <- function (v) {
  # nimi vaihtunut -> nykyinen nimi
  # liittynyt isompaan yksikköön -> silloinen nimi
  
  v <- gsub("–"," ",v)
  v <- gsub("\\-"," ",v)
  
  v <- gsub("^Tryckt i ","",v)
  v <- gsub("^Tryckt j ","",v)
  v <- gsub("^Prändäty ","",v)
  v <- gsub("^Prändätty ","",v)
  v <- gsub("^Pränt ","",v)
  v <- gsub("^Präntäty ","",v)
  v <- gsub("^Präntätty ","",v)
  v <- gsub("^A ","",v)
  v <- gsub("^Excusa ","",v)
  v <- gsub("^I ","",v)
  v <- gsub("^Impr. ","",v)
  v <- gsub("^Impressa ","",v)
  v <- gsub("^Excusum ","",v)
  v <- gsub("^Excudit ","",v)
  v <- gsub("^Exc. ","",v)
  v <- gsub("^En ","",v)
  
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
  
  altdorf <- c("Altdorfi")
  v[v %in% altdorf] <- "Altdorf"
  
  giessen <- c("Giessae","Gissae","Giessae Cattorum")
  v[v %in% giessen] <- "Giessen"
  
  goteborg <- c("Gothoburgi")
  v[v %in% goteborg] <- "Göteborg"
  
  gottingen <- c("Goettingae","Gottingae")
  v[v %in% gottingen] <- "Göttingen"
  
  greifswald <- c("Gryphiswaldiae","Gryphiae")
  v[v %in% greifswald] <- "Greifswald"
  
  helsinki <- c("Helsingfors","Helsingissä","Helsingforsiae","Gel'singfors","Hki","Helsingissä] :;Helsinki")
  v[v %in% helsinki] <- "Helsinki"
  
  jena <- c("Ienae","Jenae")
  v[v %in% jena] <- "Jena"
  
  kaliningrad <- c("Regiomonti Borussorum")
  v[v %in% kaliningrad] <- "Kaliningrad"
  
  kiel <- c("Kiliae")
  v[v %in% kiel] <- "Kiel"
  
  koopenhamina <- c("København","Kjøbenhavn","Köbenhavn","Kjöbenhavn")
  v[v %in% koopenhamina] <- "Kööpenhamina"
  
  leiden <- c("Lugduni Batavorum","Ludguni Batavorum")
  v[v %in% leiden] <- "Leiden"
  
  linkoping <- c("Lincopiae")
  v[v %in% linkoping] <- "Linköping"
  
  lund <- c("Lundae","Londini Gothorum","Londini Goth","Lond. Scanorum","Londini Scanor","Londini Scanorum")
  v[v %in% lund] <- "Lund"
  
  magdeburg <- c("Magdaeburgi")
  v[v %in% magdeburg] <- "Magdeburg"
  
  marburg <- c("Marpurgi Cattorum","Marpvrgi Cattorvm")
  v[v %in% marburg] <- "Marburg"
  
  moskova <- c("Moskva")
  v[v %in% moskova] <- "Moskova"
  
  narva <- c("Narvae")
  v[v %in% narva] <- "Narva"
  
  oslo <- c("Kristiania")
  v[v %in% oslo] <- "Oslo"

  pietari <- c("S. Peterburg","Sanktpeterburg","St. Petersburg","Petrograd","St. Petersbourg","S:t Petersburg","St Petersbourg")
  v[v %in% pietari] <- "Pietari"
  
  parnu <- c("Pernaviae")
  v[v %in% parnu] < "Pärnu"
  
  riika <- c("Riga")
  v[v %in% riika] <- "Riika"
  
  rostock <- c("Rostochii","Rostochi","Rostochiae")
  v[v %in% rostock] <- "Rostock"
  
  strangnas <- c("Stregnesij","Strengnesiae")
  v[v %in% strangnas] <- "Strängnäs"

  tampere <- c("Tammerfors","Tampereella")
  v[v %in% tampere] <- "Tampere"
  
  tartto <- c("Dorpati Livonorum","Dorpati","Dorpat","Dorpt","Tartu","Dorpati Livonvm")
  v[v %in% tartto] <- "Tartto"
  
  tukholma <- c("Stockholm","Stockholmisa","Stockholmis","Stockholmiae","Stockholmin","Stockholman","Stockholme","Holmiae","Stokholmis","Stokholmiae")
  v[v %in% tukholma] <- "Tukholma"
  
  turenki <- c("Turengi")
  v[v %in% turenki] <- "Turenki"
  
  turku <- c("Aboae","Åbo","Turusa","Abo","Turussa","Abogiae","Turuusa","Aboa","Aboae Finnorum","Åboae","Åbae")
  v[v %in% turku] <- "Turku"
  
  uppsala <- c("Upsaliae","Upsala","Ubsaliae","Vpsala", "Vpsaliae","Upsalis","Vbsaliae","Upsalie","Upsalae")
  v[v %in% uppsala] <- "Uppsala"
  
  vaasa <- c("Wasa","Waasa","Wasasa","Vasa","Vasasa","Nikolaistad","Nikolainkaupunki","Wasae")
  v[v %in% vaasa] <- "Vaasa"
  
  viipuri <- c("Wiipuri","Viborg","Wiborg","Vyborg","Viburgi","Wiburgi") # huom! Tanskassakin on Viborg
  v[v %in% viipuri] <- "Viipuri"
  
  wittenberg <- c("Wittebergae","Witebergae","Wittenbergae")
  v[v %in% wittenberg] <- "Wittenberg"
  
  v[v=="Kristiina"] <- "Kristiinankaupunki" # vai Ristiina?
  v <- gsub("^Reval.*$","Tallinna",v)
  
  # useita kaupunkeja
  v[v=="Stockholmisa ja Turusa"] <- "Tukholma; Turku"
  v[v=="Stockholm och Åbo"] <- "Tukholma; Turku"
  v[v=="Helsinki ;;Viipuri"] <- "Helsinki; Viipuri"
  
  # ruotsinkieliset
  v[v=="Borgå"] <- "Porvoo"
  v[v=="Tavastehus"] <- "Hämeenlinna"
  v[v=="Ekenäs"] <- "Tammisaari"
  v[v=="Björneborg"] <- "Pori"
  v[v=="Mariehamn"] <- "Maarianhamina"
  v[v=="Jakobstad"] <- "Pietarsaari"
  v[v=="Gamlakarleby"] <- "Kokkola"
  v[v=="Hangö"] <- "Hanko"
  v[v=="Uleåborg"] <- "Oulu"
  v[v=="Lovisa"] <- "Loviisa"
  v[v=="Fredrikshamn"] <- "Hamina"
  v[v=="Kronoby"] <- "Kruunupyy"
  v[v=="Nykarleby"] <- "Uusikaarlepyy"
  v[v=="Sordavala"] <- "Sortavala"
  v[v=="Kaskö"] <- "Kaskinen"
  v[v=="S:t Michel"] <- "Mikkeli"
  v[v=="Karis"] <- "Karjaa"
  v[v=="Nystad"] <- "Uusikaupunki"
  v[v=="Kristinestad"] <- "Kristiinankaupunki"
  v[v=="Willmanstrand"] <- "Lappeenranta"
  
  # englanninkieliset
  v[v=="London"] <- "Lontoo"
  v[v=="Berlin"] <- "Berliini"
  v[v=="Paris"] <- "Pariisi"
  v[v=="Hamburg"] <- "Hampuri"
  
  # Yhdysvallat
  v <- gsub("^Brooklyn.*$","Brooklyn, NY",v) # Brooklyn itsenäinen vuoteen 1898
  v <- gsub("^Hancock.*$","Hancock, MI",v)
  v <- gsub("^Fitchburg.*$","Fitchburg, MA",v)
  v <- gsub("^Astoria.*$","Astoria, OR",v)
  v <- gsub("^Ashtabula.*$","Ashtabula, OH",v)
  v <- gsub("^New York.*$","New York, NY",v) # tuskin tarkoittaa osavaltiota
  v[v=="Kaleva (Mich"] <- "Kaleva, MI"
  v[v=="Duluth (Minn"] <- "Duluth, MN"
  v[v=="Calumet (Mich"] <- "Calumet, MI"
  v[v=="Chicago"] <- "Chicago, IL"
  v[v=="Superior (Wis"] <- "Superior, WI"
  v[v=="Ironwood (Mich"] <- "Ironwood, MI"
  
  # Kanada
  v[v=="Port Arthur (Ont"] <- "Port Arthur, ON" # nyt osa Thunder Bayta
  
  # sine loco
  v[v=="S.l"] <- NA
  v[v=="s.l"] <- NA
  v[v=="S. l"] <- NA
  v[v=="s. l"] <- NA
  v[v=="S.I"] <- NA # luultavasti
  
  # paikallissijat
  v <- gsub("ssa$","",v)
  v <- gsub("ssä$","",v)
  
  # korjaus edelliseen
  v[v=="For"] <- "Forssa"
  
  v
}

df$pub_where <- fix_placenames(df$pub_where)

# print(df %>% group_by(pub_where) %>% tally(sort=TRUE),n=150)

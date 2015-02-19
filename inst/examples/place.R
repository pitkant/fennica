fix_placenames <- function (v) {
  # nimi vaihtunut -> nykyinen nimi
  # liittynyt isompaan yksikköön -> silloinen nimi
  
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
  
  altdorf <- c("Altdorfi")
  v[v %in% altdorf] <- "Altdorf"
  
  giessen <- c("Giessae","Gissae","Giessae Cattorum")
  v[v %in% giessen] <- "Giessen"
  
  goteborg <- c("Gothoburgi","Gothenburg","Götheborg","Gothoburgae")
  v[v %in% goteborg] <- "Göteborg"
  
  gottingen <- c("Goettingae","Gottingae")
  v[v %in% gottingen] <- "Göttingen"
  
  greifswald <- c("Gryphiswaldiae","Gryphiae","Greiffswald","Gryphiswaldi")
  v[v %in% greifswald] <- "Greifswald"
  
  helsinki <- c("Helsingfors","Helsingissä","Helsingforsiae","Gel'singfors","Hki","Helsingissä; Helsinki","Helsigfors","Helsingfros","Helsingis","Hfors",
                "Gelsingfors","Helsinkai","Helsingforsisa","Helsingfos","Helsinki s.n","Helsingfors; Helsingfors","Helsingfors s.n","Helsingfors : s.n",
                "Helsingfors = Helsingi","Helsignfors","Helsingforso")
  v[v %in% helsinki] <- "Helsinki"
  
  jena <- c("Ienae","Jenae")
  v[v %in% jena] <- "Jena"
  
  kaliningrad <- c("Regiomonti Borussorum")
  v[v %in% kaliningrad] <- "Kaliningrad"
  
  kiel <- c("Kiliae")
  v[v %in% kiel] <- "Kiel"
  
  koopenhamina <- c("København","Kjøbenhavn","Köbenhavn","Kjöbenhavn","Copenhague","Kiobenhavn","Kobenhavn","Kjobenhavn","Köpenhamn","Copenhagen")
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
  
  mikkeli <- c("S:t Michel","St Michel","St. Mikkeli")
  v[v %in% mikkeli] <- "Mikkeli"
  
  moskova <- c("Moskva","Moskau")
  v[v %in% moskova] <- "Moskova"
  
  narva <- c("Narvae")
  v[v %in% narva] <- "Narva"
  
  oslo <- c("Kristiania")
  v[v %in% oslo] <- "Oslo"
  
  oulu <- c("Uleåborg","Oulusa")
  v[v %in% oulu] <- "Oulu"

  pietari <- c("S. Peterburg","Sanktpeterburg","St. Petersburg","Petrograd","St. Petersbourg","S:t Petersburg","St Petersbourg","Sankt Peterburg","S.Peterburg",
               "Petersburg","St. Peterbourg","St. Pietarbori")
  v[v %in% pietari] <- "Pietari"
  
  parnu <- c("Pernaviae")
  v[v %in% parnu] <- "Pärnu"
  
  porvoo <- c("Borgå","Borgo","Porwoo","Porwo","Porvoo; Borgo")
  v[v %in% porvoo] <- "Porvoo"
  
  riika <- c("Riga","Rigasa","Rijasa","Rigae")
  v[v %in% riika] <- "Riika"
  
  rostock <- c("Rostochii","Rostochi","Rostochiae")
  v[v %in% rostock] <- "Rostock"
  
  sortavala <- c("Sordavala","Sortawala","Sortavola")
  v[v %in% sortavala] <- "Sortavala"
  
  strangnas <- c("Stregnesij","Strengnesiae","Strengnäs")
  v[v %in% strangnas] <- "Strängnäs"

  tallinna <- c("Revelis","Tallinnas")
  v[v %in% tallinna] <- "Tallinna"
  v <- gsub("^Reval.*$","Tallinna",v)
  
  tampere <- c("Tammerfors","Tampereella")
  v[v %in% tampere] <- "Tampere"
  
  tartto <- c("Dorpati Livonorum","Dorpati","Dorpat","Dorpt","Tartu","Dorpati Livonvm","Dorpati Livonorvm","Dorpati Livonrum","Tartus")
  v[v %in% tartto] <- "Tartto"
  
  tukholma <- c("Stockholm","Stockholmisa","Stockholmis","Stockholmiae","Stockholmin","Stockholman","Stockholme","Holmiae","Stokholmis","Stokholmiae","Stokholmisa",
                "Stokkholmisa","Stocholm","Stockholmi","Stuckholmis","Stuckhulmisa","Stockh","Stokholm","Stocholmiae","Stockhomin","Tukhulmi")
  v[v %in% tukholma] <- "Tukholma"
  
  turenki <- c("Turengi")
  v[v %in% turenki] <- "Turenki"
  
  turku <- c("Aboae","Åbo","Turusa","Abo","Turussa","Abogiae","Turuusa","Aboa","Aboae Finnorum","Åboae","Åbae","Aboe")
  v[v %in% turku] <- "Turku"
  
  uppsala <- c("Upsaliae","Upsala","Ubsaliae","Vpsala", "Vpsaliae","Upsalis","Vbsaliae","Upsalie","Upsalae","Upsal","Upsala","Upsalas")
  v[v %in% uppsala] <- "Uppsala"
  
  vaasa <- c("Wasa","Waasa","Wasasa","Vasa","Vasasa","Nikolaistad","Wasae")
  v[v %in% vaasa] <- "Vaasa"
  v <- gsub("^Nikolainkau.*$","Vaasa",v)
  
  viipuri <- c("Wiipuri","Viborg","Wiborg","Vyborg","Viburgi","Wiburgi","Wiburg","Wiburisa","Wiburgiae","Wiburis","Wiborgh") # huom! Tanskassakin on Viborg
  v[v %in% viipuri] <- "Viipuri"
  
  wittenberg <- c("Wittebergae","Witebergae","Wittenbergae","Vitembergae")
  v[v %in% wittenberg] <- "Wittenberg"
  
  v[v=="Kristiina"] <- "Kristiinankaupunki" # vai Ristiina?
  v[v=="Roma"] <- "Rooma"

  # useita kaupunkeja
  v[v=="Stockholmisa ja Turusa"] <- "Tukholma; Turku"
  v[v=="Stockholm och Åbo"] <- "Tukholma; Turku"
  
  # ruotsinkieliset
  v[v=="Tavastehus"] <- "Hämeenlinna"
  v[v=="Ekenäs"] <- "Tammisaari"
  v[v=="Björneborg"] <- "Pori"
  v[v=="Mariehamn"] <- "Maarianhamina"
  v[v=="Jakobstad"] <- "Pietarsaari"
  v[v=="Gamlakarleby"] <- "Kokkola"
  v[v=="Hangö"] <- "Hanko"
  v[v=="Lovisa"] <- "Loviisa"
  v[v=="Fredrikshamn"] <- "Hamina"
  v[v=="Kronoby"] <- "Kruunupyy"
  v[v=="Nykarleby"] <- "Uusikaarlepyy"
  v[v=="Kaskö"] <- "Kaskinen"
  v[v=="Karis"] <- "Karjaa"
  v[v=="Nystad"] <- "Uusikaupunki"
  v[v=="Kristinestad"] <- "Kristiinankaupunki"
  v[v=="Willmanstrand"] <- "Lappeenranta"
  v[v=="Sibbo"] <- "Sipoo"
  v[v=="Esbo"] <- "Espoo"
  v[v=="Haparanda"] <- "Haaparanta"
  
  # englanninkieliset
  v[v=="London"] <- "Lontoo"
  v[v=="Berlin"] <- "Berliini"
  v[v=="Paris"] <- "Pariisi"
  v[v=="Hamburg"] <- "Hampuri"
  v[v=="Cologne"] <- "Köln"
  
  # Yhdysvallat
  v <- gsub("^Brooklyn.*$","Brooklyn, NY",v) # Brooklyn itsenäinen vuoteen 1898
  v <- gsub("^Hancock.*$","Hancock, MI",v)
  v <- gsub("^Fitchburg.*$","Fitchburg, MA",v)
  v <- gsub("^Astoria.*$","Astoria, OR",v)
  v <- gsub("^Ashtabula.*$","Ashtabula, OH",v)
  v <- gsub("^New York.*$","New York, NY",v)
  v <- gsub("^Worcester.*$","Worcester, MA",v)
  v <- gsub("^Kaleva.*$","Kaleva, MI",v)
  v <- gsub("^Duluth.*$","Duluth, MN",v)
  v <- gsub("^Calumet.*$","Calumet, MI",v)
  v <- gsub("^Chicago.*$","Chicago, IL",v)
  v <- gsub("^Chigago.*$","Chicago, IL",v) # kirjoitusvirhe
  v <- gsub("^Superior.*$","Superior, WI",v)
  v <- gsub("^Ironwood.*$","Ironwood, MI",v)
  v <- gsub("^Almena.*$","Almena, WI",v)
  v <- gsub("^Quincy.*$","Quincy, MA",v)
  v <- gsub("^Ishpeming.*$","Ishpeming, MI",v)
  v <- gsub("^Seattle.*$","Seattle, WA",v)
  v <- gsub("^Boston.*$","Boston, MA",v)
  v <- gsub("^Philadelphia.*$","Philadelphia, PA",v)
  v <- gsub("^Smithville.*$","Smithville, MN",v)
  v <- gsub("^Bronx.*$","Bronx, NY",v) # kaupunkistatus epäselvä
  v <- gsub("^Rock Island.*$","Rock Island, IL",v)
  v <- gsub("^Cleveland.*$","Cleveland, OH",v)
  v <- gsub("^Cincinnati.*$","Cincinnati, OH",v) # kirjoitusvirhe
  v <- gsub("^Cincinati.*$","Cincinnati, OH",v)
  v <- gsub("^Chisholm.*$","Chisholm, MN",v)
  v <- gsub("^Bridgeport.*$","Bridgeport, CT",v)
  v <- gsub("^Portland.*$","Portland, OR",v)
  v <- gsub("^Minneapolis.*$","Minneapolis, MN",v)
  v <- gsub("^Milwaukee.*$","Milwaukee, WI",v)
  
  # Kanada
  v <- gsub("^Port Arthur.*$","Port Arthur, ON",v) # nyt osa Thunder Bayta
  v <- gsub("^Nanaimo.*$","Nanaimo, BC",v)
  
  # sine loco
  v[v=="S.l"] <- NA
  v[v=="s.l"] <- NA
  v[v=="S. l"] <- NA
  v[v=="s. l"] <- NA
  v[v=="S.n"] <- NA
  v[v=="s.n"] <- NA
  v[v=="S. n"] <- NA
  v[v=="s. n"] <- NA
  v[v=="S.a"] <- NA
  v[v=="s.a"] <- NA
  v[v=="S. a"] <- NA
  v[v=="s. a"] <- NA
  v[v=="S.I"] <- NA
  
  # paikallissijat
  v <- gsub("ssa$","",v)
  v <- gsub("ssä$","",v)
  v <- gsub("lla$","",v)
  v <- gsub("llä$","",v)
  
  # korjaus edelliseen
  v[v=="For"] <- "Forssa"
  
  v
}

df$pub_where <- fix_placenames(df$pub_where)

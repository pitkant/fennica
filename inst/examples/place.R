fix_placenames <- function (v) {
  # nimi vaihtunut -> nykyinen nimi
  # liittynyt isompaan yksikköön -> silloinen nimi
  
  v <- gsub("–"," ",v)
  v <- gsub("\\-"," ",v)
  
  v <- gsub("Tryckt i ","",v)
  v <- gsub("Tryckt j ","",v)  
  v <- gsub(" prändäty","",v)
  v <- gsub(" prändätty","",v)
  v <- gsub(" pränt","",v)
  v <- gsub(" präntäty","",v)
  v <- gsub(" präntätty","",v)
  v <- gsub("Prändäty ","",v)
  v <- gsub("Prändätty ","",v)
  v <- gsub("Pränt ","",v)
  v <- gsub("Präntäty ","",v)
  v <- gsub("Präntätty ","",v)
  v <- gsub("^A ","",v)
  v <- gsub("^Excusa ","",v)
  v <- gsub("^I ","",v)
  v <- gsub(" caupungis$","",v)
  
  helsinki <- c("Helsingfors","Helsingissä","Helsingforsiae","Gel'singfors","Hki")
  v[v %in% helsinki] <- "Helsinki"
  
  turku <- c("Aboae","Åbo","Turusa","Abo","Turussa","Abogiae","Turuusa")
  v[v %in% turku] <- "Turku"
  
  tukholma <- c("Stockholm","Stockholmisa","Stockholmis","Stockholmiae","Stockholmin","Stockholman","Stockholme","Holmiae","Stokholmis")
  v[v %in% tukholma] <- "Tukholma"
  
  vaasa <- c("Wasa","Waasa","Wasasa","Vasa","Vasasa","Nikolaistad","Nikolainkaupunki")
  v[v %in% vaasa] <- "Vaasa"
  
  uppsala <- c("Upsaliae","Upsala","Ubsaliae","Vpsala")
  v[v %in% uppsala] <- "Uppsala"
  
  pietari <- c("S. Peterburg","Sanktpeterburg","St. Petersburg","Petrograd","St. Petersbourg")
  v[v %in% pietari] <- "Pietari"
  
  tartto <- c("Dorpati Livonorum","Dorpati","Dorpat","Dorpt","Tartu")
  v[v %in% tartto] <- "Tartto"
  
  tampere <- c("Tammerfors","Tampereella")
  v[v %in% tampere] <- "Tampere"
  
  viipuri <- c("Wiipuri","Viborg","Wiborg","Vyborg","Viburgi","Wiburgi") # huom! Tanskassakin on Viborg
  v[v %in% viipuri] <- "Viipuri"
  
  wittenberg <- c("Wittebergae","Witebergae")
  v[v %in% wittenberg] <- "Wittenberg"
  
  koopenhamina <- c("København","Kjøbenhavn","Köbenhavn","Kjöbenhavn")
  v[v %in% koopenhamina] <- "Kööpenhamina"
  
  v[v=="Kristiania"] <- "Oslo"
  v[v=="Moskva"] <- "Moskova"
  v[v=="Rostochii"] <- "Rostock"
  v[v=="Turengi"] <- "Turenki"
  v[v=="Kristiina"] <- "Kristiinankaupunki" # vai Ristiina?
  v <- gsub("^Reval.*$","Tallinna",v)
  v[v=="Riga"] <- "Riika"
  v[v=="Pernaviae"] <- "Pärnu"
  
  # useita kaupunkeja
  v[v=="Stockholmisa ja Turusa"] <- "Tukholma; Turku"
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

print("Construct binary matrix of languages")
lang <- data.frame(list(row.index = 1:nrow(df.orig)))

check_language <- function (str) {
    v <- grepl(paste0(".*",str,".*$"), df.orig[["041a"]], ignore.case = T) + grepl(str, df.orig[["041h"]], ignore.case = T)
    v[v == 2] <- 1
    
    v
}

# Major languages in this dataset
lang$finnish <- check_language("fin")
lang$swedish <- check_language("swe")
lang$latin <- check_language("lat")
lang$german <- check_language("ger")
lang$english <- check_language("eng")
lang$french <- check_language("fre")
lang$russian <- check_language("rus")
lang$greek <- check_language("grc")
lang$danish <- check_language("dan")

# Minor languages in this dataset
lang$italian <- check_language("ita")
lang$hebrew <- check_language("heb")
lang$dutch <- check_language("dut")
lang$spanish <- check_language("spa")
lang$sami <- check_language("smi")
lang$moderngreek <- check_language("gre")
lang$icelandic <- check_language("ice")
lang$arabic <- check_language("ara")
lang$portuguese <- check_language("por")

# Language aggregates per the MARC standard
lang$finnougrian <- check_language("fiu")
lang$multiple <- check_language("mul")
lang$undetermined <- check_language("und")

lang <- lang[,-1]

# print(colSums(lang))

# ---------------------------------------------

print("Start collecting variables to a polished data frame")

df <- tbl_df(data.frame(list(row.index = 1:nrow(df.orig))))

df$author_name <- df.orig[["100a"]]
df$author_birth <- df.orig[["100d"]]
df$author_death <- df.orig[["100d"]]
df$title_uniform <- df.orig[["240a"]]
df$title_proper <- df.orig[["245a"]]
df$title_remainder <- df.orig[["245b"]]
df$pub_where <- df.orig[["260a"]]
df$pub_who <- df.orig[["260b"]]
df$pub_when <- df.orig[["260c"]]
df$pub_from <- df.orig[["260c"]]
df$pub_till <- df.orig[["260c"]]
df$phys_extent <- df.orig[["300a"]]
df$phys_details <- df.orig[["300b"]]
df$phys_dim <- df.orig[["300c"]]
df$phys_accomp <- df.orig[["300e"]]
df$pub_frequency <- df.orig[["310a"]]
df$pub_interval <- df.orig[["362a"]]
df$note_general <- df.orig[["500a"]]
df$note_dissert <- df.orig[["502a"]]
df$note_granter <- df.orig[["502c"]]
df$note_year <- df.orig[["502d"]]
df$note_source <- df.orig[["510a"]]
df$note_loc <- df.orig[["510c"]]
df$term_topics <- df.orig[["650a"]]
df$term_geo <- df.orig[["651a"]]
df$corporate <- df.orig[["710a"]]
df$uncontrolled <- df.orig[["720a"]]
df$successor <- df.orig[["785t"]]
df$holder <- df.orig[["852a"]]

df <- df[,-1]

# ---------------------------------------------

print("Fix placenames")

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

# ---------------------------------------------

print("Collect author life statistics")

fix_birth <- function(v) {
  v <- gsub("–","\\-",v)
  v <- gsub("^([0-9]{3,4})\\-[0-9]{3,4}$","\\1",v)
  v <- gsub("^fl. ([0-9]{3,4})\\-[0-9]{3,4}$",NA,v)
  v <- gsub("^n. ([0-9]{4})\\-[0-9]{4}$","\\1",v)
  v <- gsub("^([0-9]{4})\\-n. [0-9]{4}$","\\1",v)
  v <- gsub("^n. ([0-9]{4})\\-n. [0-9]{4}$","\\1",v)
  v <- gsub("^s. ([0-9]{4})$","\\1",v)
  v <- gsub("^s. n. ([0-9]{4})$","\\1",v)
  v <- gsub("^k. ([0-9]{4})$",NA,v)
  v <- gsub("^d. ([0-9]{4})$",NA,v)
  v <- gsub("^k. n. ([0-9]{4})$",NA,v)
  v <- gsub("^k. ennen ([0-9]{4})$",NA,v)
  v <- gsub("^k. viimeistään ([0-9]{4})$",NA,v)
  v <- gsub("^k. ([0-9]{4}) jälkeen$",NA,v)
  v <- gsub("^s. n. ([0-9]{4}), k. [0-9]{4}$","\\1",v)
  v <- gsub("^s. ([0-9]{4}), k. n. [0-9]{4}$","\\1",v)
  v <- gsub("^[0-9]{4}\\-luku$",NA,v)
  v <- gsub("^eli vielä ([0-9]{4})$",NA,v)
  v <- gsub("^[0-9]$",NA,v)
  v <- gsub("^([0-9]{2,3})\\-[0-9]{2,3} e.Kr$","\\-\\1",v)
  v <- gsub("^n. ([0-9]{2,3})\\-[0-9]{2,3} e.Kr$","\\-\\1",v)
  v <- gsub("^([0-9]{2,3})\\-[0-9]{2,3} e. Kr$","\\-\\1",v)
  v <- gsub("^n. ([0-9]{2,3})\\-[0-9]{2,3} e. Kr$","\\-\\1",v)
  v <- gsub("^s. ehkä 1620-luvulla, k. 1694$",NA,v)
  v <- gsub("^s. 1630-luvulla, k. 1684$",NA,v)
  v <- gsub("^s. 1590-luvulla, k. 1651$",NA,v)
  v <- gsub("^k. 1616/1617$",NA,v)
  v <- gsub("^n. 20 e.Kr.-40 j.Kr$","-20",v)
  v <- gsub("^1600/1700\\-luku$",NA,v)
  v <- gsub("^eli 300\\-luvun puolivälissä$",NA,v)
  v <- gsub("^300-l. j. Kr$",NA,v)
  v <- gsub("^k. 1730-luvulla$",NA,v)
  v <- gsub("^k. vähän ennen vuotta 1600$",NA,v)
  v <- gsub("^n. 363-425 j.Kr$",NA,v)
  v <- gsub("^s. 1678, k. 1695 jälkeen$","1678",v)
  v <- gsub("^s. n. 1560, k. ennen 1617$","1560",v)
  v <- gsub("^s. viim. 1638, k. 1681$",NA,v)
  v <- gsub("^toiminta\\-aika 1770\\-luku$",NA,v)
}

fix_death <- function(v) {
  v <- gsub("–","\\-",v)
  v <- gsub("^[0-9]{3,4}\\-([0-9]{3,4})$","\\1",v)
  v <- gsub("^fl. [0-9]{3,4}\\-([0-9]{3,4})$",NA,v)
  v <- gsub("^n. [0-9]{4}\\-([0-9]{4})$","\\1",v)
  v <- gsub("^[0-9]{4}\\-n. ([0-9]{4})$","\\1",v)
  v <- gsub("^n. [0-9]{4}\\-n. ([0-9]{4})$","\\1",v)
  v <- gsub("^s. ([0-9]{4})$",NA,v)
  v <- gsub("^s. n. ([0-9]{4})$",NA,v)
  v <- gsub("^k. ([0-9]{4})$","\\1",v)
  v <- gsub("^d. ([0-9]{4})$","\\1",v)
  v <- gsub("^k. n. ([0-9]{4})$","\\1",v)
  v <- gsub("^k. ennen ([0-9]{4})$",NA,v)
  v <- gsub("^k. viimeistään ([0-9]{4})$",NA,v)
  v <- gsub("^k. ([0-9]{4}) jälkeen$",NA,v)
  v <- gsub("^s. n. [0-9]{4}, k. ([0-9]{4})$","\\1",v)
  v <- gsub("^s. [0-9]{4}, k. n. ([0-9]{4})$","\\1",v)
  v <- gsub("^[0-9]{4}\\-luku$",NA,v)
  v <- gsub("^eli vielä ([0-9]{4})$",NA,v)
  v <- gsub("^[0-9]$",NA,v)
  v <- gsub("^[0-9]{2,3}\\-([0-9]{2,3}) e.Kr$","\\-\\1",v)
  v <- gsub("^n. [0-9]{2,3}\\-([0-9]{2,3}) e.Kr$","\\-\\1",v)
  v <- gsub("^[0-9]{2,3}\\-([0-9]{2,3}) e. Kr$","\\-\\1",v)
  v <- gsub("^n. [0-9]{2,3}\\-([0-9]{2,3}) e. Kr$","\\-\\1",v)
  v <- gsub("^s. ehkä 1620-luvulla, k. 1694$","1694",v)
  v <- gsub("^s. 1630-luvulla, k. 1684$","1684",v)
  v <- gsub("^s. 1590-luvulla, k. 1651$","1651",v)
  v <- gsub("^k. 1616/1617$","1616",v)
  v <- gsub("^n. 20 e.Kr.-40 j.Kr$","40",v)
  v <- gsub("^1600/1700\\-luku$",NA,v)
  v <- gsub("^eli 300\\-luvun puolivälissä$",NA,v)
  v <- gsub("^300-l. j. Kr$",NA,v)
  v <- gsub("^k. 1730-luvulla$",NA,v)
  v <- gsub("^k. vähän ennen vuotta 1600$",NA,v)
  v <- gsub("^n. 363-425 j.Kr$",NA,v)
  v <- gsub("^s. 1678, k. 1695 jälkeen$",NA,v)
  v <- gsub("^s. n. 1560, k. ennen 1617$",NA,v)
  v <- gsub("^s. viim. 1638, k. 1681$","1681",v)
  v <- gsub("^toiminta\\-aika 1770\\-luku$",NA,v)
}

df$author_birth <- fix_birth(df$author_birth)
df$author_death <- fix_death(df$author_death)

# ---------------------------------------------

print("Clean publishing years")

fix_pubwhen <- function(v) {
  v <- gsub("\\-\\-","\\-",v)
  v <- gsub("\\- ","\\-",v)
  v <- gsub(" \\-","\\-",v)
  v <- gsub("\\[","",v)
  v <- gsub("\\]","",v)
  v <- gsub("\\?","",v)
  v <- gsub("^([0-9]{4})$","\\1",v)
  v <- gsub("^.* ([0-9]{4})$","\\1",v)
  v <- gsub("^([0-9]{4}) .*$","\\1",v)
  v <- gsub("^[0-9]{4}\\-[0-9]{4}",NA,v)
  v <- gsub("^.* [0-9]{4}\\-[0-9]{4}",NA,v)
  v <- gsub("^[0-9]{1,3}$",NA,v)
  v <- gsub("^[0-9]{2}[0-9]{2}\\-[0-9]{2}",NA,v)
  v <- gsub("^.*\\;([0-9]{4})$","\\1",v)
  v <- gsub("^([0-9]{4})\\;.*$","\\1",v)
  v <- gsub("^([0-9]{4})\\,\\;.*$","\\1",v)
  v <- gsub("^n.([0-9]{4})$","\\1",v)  
  v <- gsub("^s.a$",NA,v)
  v <- gsub("^s. a$",NA,v)
  v <- gsub("^S.a$",NA,v)
  v <- gsub("^S. a$",NA,v)
  v <- gsub("^(?![0-9]{4}$).+$",NA,v,perl=TRUE)
}

fix_pubfrom <- function(v) {
  v <- gsub("\\-\\-","\\-",v)
  v <- gsub("\\- ","\\-",v)
  v <- gsub(" \\-","\\-",v)
  v <- gsub("\\[","",v)
  v <- gsub("\\]","",v)
  v <- gsub("\\?","",v)
  v <- gsub("^[0-9]{4}$",NA,v)
  v <- gsub("^.* [0-9]{4}$",NA,v)
  v <- gsub("^[0-9]{4} .*$",NA,v)
  v <- gsub("^([0-9]{4})\\-[0-9]{4}","\\1",v)
  v <- gsub("^.* ([0-9]{4})\\-[0-9]{4}","\\1",v)
  v <- gsub("^[0-9]{1,3}$",NA,v)
  v <- gsub("^([0-9]{2})([0-9]{2})\\-[0-9]{2}","\\1\\2",v)
  v <- gsub("^.*\\;[0-9]{4}$",NA,v)
  v <- gsub("^[0-9]{4}\\;.*$",NA,v)
  v <- gsub("^[0-9]{4}\\,\\;.*$",NA,v)
  v <- gsub("^n.[0-9]{4}$",NA,v)
  v <- gsub("^s.a$",NA,v)
  v <- gsub("^s. a$",NA,v)
  v <- gsub("^S.a$",NA,v)
  v <- gsub("^S. a$",NA,v)
}

fix_pubtill <- function(v) {
  v <- gsub("\\-\\-","\\-",v)
  v <- gsub("\\- ","\\-",v)
  v <- gsub(" \\-","\\-",v)
  v <- gsub("\\[","",v)
  v <- gsub("\\]","",v)
  v <- gsub("\\?","",v)
  v <- gsub("^[0-9]{4}$",NA,v)
  v <- gsub("^.* [0-9]{4}$",NA,v)
  v <- gsub("^[0-9]{4} .*$",NA,v)
  v <- gsub("^[0-9]{4}\\-([0-9]{4})","\\1",v)
  v <- gsub("^.* [0-9]{4}\\-([0-9]{4})","\\1",v)
  v <- gsub("^[0-9]{1,3}$",NA,v)
  v <- gsub("^([0-9]{2})[0-9]{2}\\-([0-9]{2})","\\1\\2",v)
  v <- gsub("^.*\\;[0-9]{4}$",NA,v)
  v <- gsub("^[0-9]{4}\\;.*$",NA,v)
  v <- gsub("^[0-9]{4}\\,\\;.*$",NA,v)
  v <- gsub("^n.[0-9]{4}$",NA,v)
  v <- gsub("^s.a$",NA,v)
  v <- gsub("^s. a$",NA,v)
  v <- gsub("^S.a$",NA,v)
  v <- gsub("^S. a$",NA,v)
}

df$pub_when <- fix_pubwhen(df$pub_when)
df$pub_from <- fix_pubfrom(df$pub_from)
df$pub_till <- fix_pubtill(df$pub_till)

counts_total <- function(ldf) {
  f <- ldf %>% group_by(pub_when) %>% tally() %>% arrange(pub_when)
  f$cumul <- cumsum(f$n)
  
  png("inst/examples/figure/total_noncumul.png")
  plot(f$pub_when,f$n)
  dev.off()
  
  png("inst/examples/figure/total_cumul.png")
  plot(f$pub_when,f$cumul)
  dev.off()
  
}

counts_total(df)

counts_by_town <- function(ldf, str, file) {
  f <- ldf %>% filter(pub_where == str) %>% group_by(pub_when) %>% tally() %>% arrange(pub_when)
  f$cumul <- cumsum(f$n)

  png(paste0("inst/examples/figure/",file,"_noncumul.png"))
  plot(f$pub_when,f$n)
  dev.off()
  
  png(paste0("inst/examples/figure/",file,"_cumul.png"))
  plot(f$pub_when,f$cumul)
  dev.off()
  
}

counts_by_town(df,"Helsinki", "Helsinki")
counts_by_town(df,"Turku", "Turku")
counts_by_town(df,"Porvoo", "Porvoo")
counts_by_town(df,"Tukholma", "Tukholma")
counts_by_town(df,"Vaasa", "Vaasa")
counts_by_town(df,"Tampere", "Tampere")
counts_by_town(df,"Kuopio","Kuopio")
counts_by_town(df,"Hämeenlinna","Hameenlinna")
counts_by_town(df,"Viipuri","Viipuri")
counts_by_town(df,"Jyväskylä","Jyvaskyla")

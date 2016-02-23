skip <- FALSE
if (skip)  {
load("geonames.RData")
load("places.geonames.RData") # places.geonames

# harmonize some publication place names manually
place <- df.preprocessed$publication_place
place <- gsub("New York NY", "New York", place)
place <- gsub("Philadelphia PA", "Philadelphia", place)

# Translations
place <- gsub("Billnäs", "Karjaa", place)

# Missing geoc - TODO manual table to augment the data
#Hancock MI            217
#Fitchburg MA          140
#Ashtabula OH           51
#Kaleva MI              50
#Duluth MN              42
#Calumet MI             37
#Port Arthur ON         28
#Astoria OR             25
#Superior WI            14
#Ironwood MI            13
#New York Mills MN      10
#Worcester MA            8
#Quincy MA               7
#Ishpeming MI            7
#Visingsborg             5
#Jönnköping              5
#Almena WI               5
#Seattle WA              4
#Sääksmäki               3
#Kauvatsa                3
#Haunia                  3
#Cincinnati OH           3
#Tyrvää                  2
#Smithville MN           2
#Red Jacket MI           2
#New Haven MA            2
#Minneapolis MN          2
#Leibzig                 2
#Houghton MI             2
#Harbor OH               2
#Freiburg im Breisgau    2
#Ely MI                  2
#Cleveland OH            2
#Chisholm MN             2
#Watton MI               1
#Virginia MN             1
#Vammala                 1
#Turtle Lake WI          1
#Tsingshi                1
#Tervonsalmi             1
#Sudbury ON              1
#St Louis Kaunti MI      1
#Sarvilahti              1
#Sandstone MI            1
#Portland OR             1
#Pinjainen               1
#Nanaimo BC              1
#Milwaukee WI            1
#Laihiala                1
#Kivennapa               1
#Kaukaa                  1
#Kaprio                  1
#Kallislahti             1
#Jacobson MI             1
#Inkeri                  1
#Impilahti               1
#Hvitträsk               1
#Heinäjoki               1
#Grand Rapids MI         1
#Eveleth MI              1
#Clear Creek UT          1
#Carlstad                1
#Billnäs                 1
#Alfend                  1


geoc <- bibliographica::get_geocoordinates(place, geonames, places.geonames)
geoc$publication_place <- df.preprocessed$publication_place
# Places with missing geocoordinate
missing.geoc <- as.character(unique(filter(geoc, is.na(latitude) | is.na(longitude))$publication_place))
library(gisfin)
gctmp <- NULL
for (place in missing.geoc) {
  print(place)
  a <- try(get_geocode(paste("&city=", place, sep = ""), service="openstreetmap", raw_query=T))
  if (class(a) == "try-error") {a <- list(lat = NA, lon = NA)}; 
  gctmp <- rbind(gctmp, c(lat = a$lat, lon = a$lon))
}
gctmp <- as.data.frame(gctmp)
gctmp$publication_place <- missing.geoc
nainds <- is.na(geoc$latitude) | is.na(geoc$longitude)
geoc$latitude[nainds] <- gctmp$lat[match(geoc$publication_place[nainds], gctmp$publication_place)]
geoc$longitude[nainds] <- gctmp$lon[match(geoc$publication_place[nainds], gctmp$publication_place)]
save(geoc, file = "geoc.RData", compress = TRUE)
}
# Join the data frames
load("geoc.RData")
#df.preprocessed <- dplyr::left_join(df.preprocessed, geoc)
geoc$publication_place <- NULL


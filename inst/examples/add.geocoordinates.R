# Places with missing geocoordinate
nainds <- is.na(df.preprocessed$latitude) | is.na(df.preprocessed$longitude)
missing.geoc <- as.character(unique(df.preprocessed[nainds, "publication_place"]))

# Get missing geocoordinates with gisfin package
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

df.preprocessed$latitude[nainds] <- gctmp$lat[match(df.preprocessed$publication_place[nainds], gctmp$publication_place)]
df.preprocessed$longitude[nainds] <- gctmp$lon[match(df.preprocessed$publication_place[nainds], gctmp$publication_place)]


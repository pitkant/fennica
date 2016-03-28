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
geoc$publication_place <- NULL

# Add the geocoordinates in the preprocessed data
df.preprocessed <- cbind(df.preprocessed, geoc)



print("Enrich geo info: Geocoordinates")
# Places with missing geocoordinate
nainds <- is.na(df.preprocessed$latitude) | is.na(df.preprocessed$longitude)
missing.geoc <- as.character(unique(df.preprocessed[nainds, "publication_place"]))

# Get missing geocoordinates with gisfin package
skip <- TRUE
gctmp <- NULL
if (!skip) {
  library(gisfin)
  for (place in missing.geoc) {
    print(place)
    a <- try(get_geocode(paste("&city=", place, sep = ""), service="openstreetmap", raw_query=T))
    if (class(a) == "try-error") {a <- list(lat = NA, lon = NA)}; 
    gctmp <- rbind(gctmp, c(lat = a$lat, lon = a$lon))
  }
  gctmp <- as.data.frame(gctmp)
  gctmp$publication_place <- missing.geoc
  saveRDS(gctmp, file = "geoc_Finland.Rds")
} else {
  gctmp <- readRDS("geoc_Finland.Rds")
}

df.preprocessed$latitude[nainds] <- gctmp$lat[match(df.preprocessed$publication_place[nainds], gctmp$publication_place)]
df.preprocessed$longitude[nainds] <- gctmp$lon[match(df.preprocessed$publication_place[nainds], gctmp$publication_place)]

# -------------------------------------------------------

# Recognize synonymes with string matching;
# this step can be skipped after the synonyme list is fixed
# source("city_synonyme_list_update.R", encoding = "UTF-8") 
# This was combined with ESTC generic list to simplify
# TODO Think how to split and generalize
# Finally manual harmonization for the remaining place names
#f <- system.file("extdata/publication_place_synonymes_fennica.csv", package = "fennica")
#sn <- read.csv(f, sep = ";")
#df.preprocessed$publication_place <- sorvi::harmonize_names(df.preprocessed$publication_place, synonymes = sn, check.synonymes = FALSE)$name



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
# Now all synonymes moved in ESTC
#f <- system.file("extdata/publication_place_synonymes_fennica.csv", package = "fennica")
#sn <- read.csv(f, sep = ";")
#df.preprocessed$publication_place <- sorvi::harmonize_names(df.preprocessed$publication_place, synonymes = sn, check.synonymes = FALSE)$name

# ----------------------------------------------------------------------

## HERE WE COMBINE PUBLICATION-YEAR AND PUBLICATION-INTERVAL FIELDS !!!

# Publication interval
inds <- which(!is.na(df.preprocessed$publication_interval))
interval <- polish_years(df.preprocessed$publication_interval[inds])
# Assume that all cases with denoted interval have start and end year
# If one is missing, then it means that start and end are the same year
# therefore fill those missing entries here:s
interval$from[is.na(interval$from)] <- interval$till[is.na(interval$from)]
interval$till[is.na(interval$till)] <- interval$from[is.na(interval$till)]
# Discard erroneous years
interval[interval < 1400] <- NA
interval[interval > 2000] <- NA

# Compare with publication year field.
# When the non-NA entries are unique, use the same year for all
tmp <- cbind(from0=df.preprocessed$publication_year_from[inds],
             till0=df.preprocessed$publication_year_till[inds],
	     interval)
inds2 <- unname(which(apply(tmp, 1, function (x) {length(unique(na.omit(x)))}) == 1))
y <- unname(apply(tmp[inds2,], 1, function (x) {unique(na.omit(x))}))
df.preprocessed$publication_year_from[inds[inds2]] <- y
df.preprocessed$publication_year_till[inds[inds2]] <- y
# For conflicting years, select he largest combined span
tmp <- cbind(from0=df.preprocessed$publication_year_from[inds],
             till0=df.preprocessed$publication_year_till[inds],
	     interval)
mins <- unname(apply(tmp, 1, function (x) {min(x, na.rm = TRUE)}))
maxs <- unname(apply(tmp, 1, function (x) {max(x, na.rm = TRUE)}))
df.preprocessed$publication_year_from[inds] <- mins
df.preprocessed$publication_year_till[inds] <- maxs
# Finally, remove the publication_interval field
df.preprocessed$publication_interval <- NULL

# Subsequent correction to the publication year fields
print("Publication times")
# Use from field; if from year not available, then use till year
df.preprocessed$publication_year <- df.preprocessed$publication_year_from
inds <- which(is.na(df.preprocessed$publication_year))
df.preprocessed$publication_year[inds] <- df.preprocessed$publication_year_till[inds]

# publication_decade
df.preprocessed$publication_decade <- floor(df.preprocessed$publication_year/10) * 10 # 1790: 1790-1799

#rminds <- which((df.preprocessed$publication_year_from[inds] == interval$from) &
#               (df.preprocessed$publication_year_till[inds] == interval$till))
#rminds <- union(rminds, which(rowSums(is.na(interval)) == 2))
#head(unique(cbind(from0 = df.preprocessed$publication_year_from[inds],#
#		  till0 = df.preprocessed$publication_year_till[inds],#
#		  interval)[-rminds,]),30)








# List unique cities in the data
unique_cities <- tau::fixEncoding(unique(df$publication_place),latin1=TRUE)

# Find variants for specific cities
city.variants <- city_synonymes(unique_cities) 

# Add to the publication place synonyme list
f <- system.file("extdata/publication_place_synonymes_fennica.csv", package = "fennica")
sn <- read.csv(f, sep = ";")
stop("here")

for (x in basecase) {
  df$publication_place <- fennica::correct_misspellings(df$publication_place, x)
}


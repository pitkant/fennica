print("Enrich author info")
# Life years + author_unique field
library(estc)
#life.info <- read.csv("author_info.csv", sep = "\t", header = TRUE)
ambiguous.authors <- ambiguous_authors_table()
df.preprocessed <- augment_author(df.preprocessed, life_info = NULL, ambiguous.authors)

# TODO improve: many names are missing gender now
print("Estimate author genders")
# Assumes that the author name is in the form "Last, First".
df.preprocessed$author_gender <- get_gender(pick_firstname(df.preprocessed$author_name, format = "last, first"))

print("Self-published docs where author is known but publisher not")
# Note: also unknown authors are considered as self-publishers
print("Add a separate self-published field")
tmp <- self_published(df.preprocessed)
df.preprocessed$self_published <- tmp$self_published
df.preprocessed$publisher <- tmp$publisher

# Now published from == published in for simplicity; perhaps separated later
df.preprocessed$publication_year <- df.preprocessed$publication_year_from

print("Add publication country")
df.preprocessed$country <- get_country(df.preprocessed$publication_place)$country

print("Enrich geo info: Geocoordinates")
load("geonames.RData")
load("places.geonames.RData") # places.geonames
geoc <- bibliographica::get_geocoordinates(df.preprocessed$publication_place, geonames, places.geonames)
df.preprocessed <- cbind(df.preprocessed, geoc)

print("Estimate missing dimension info")
dim.orig <- df.preprocessed[, c("gatherings.original", "width.original", "height.original")]
names(dim.orig) <- gsub("\\.original$", "", names(dim.orig))
dim.estimated <- augment_dimension_table(dim.orig)
df.preprocessed <- cbind(df.preprocessed, dim.estimated)

print("Add estimated paper consumption")
# One m2 is 100 * 100 cm2 = 1e4 cm2
# One km2 is 1000 * 1000 m2 = 1e6 m2 = 1e10 cm2
# Estimated average print run per document: 1000
printrun <- 1000
df.preprocessed <- mutate(df.preprocessed, paper.consumption.km2 = width * height * pagecount/2 * (1/1e10) * printrun)


# Recognize synonymes with string matching;
# this step can be skipped after the synonyme list is fixed
# source("city_synonyme_list_update.R", encoding = "UTF-8") 
# This was combined with ESTC generic list to simplify
# TODO Think how to split and generalize
# Finally manual harmonization for the remaining place names
#f <- system.file("extdata/publication_place_synonymes_fennica.csv", package = "fennica")
#sn <- read.csv(f, sep = ";")
#df.preprocessed$publication_place <- sorvi::harmonize_names(df.preprocessed$publication_place, synonymes = sn, check.synonymes = FALSE)$name

print("Enrich OK")
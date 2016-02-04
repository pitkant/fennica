print("Unique author IDs")
df$author <- author_unique(df, initialize.first = TRUE)

print("Self-published docs where author is known but publisher not")
# Note: also unknown authors are considered as self-publishers
print("Add a separate self-published field")
tmp <- self_published(df)
df$self_published <- tmp$self_published
df$publisher <- tmp$publisher

# Now published from == published in for simplicity; perhaps separated later
df$publication_year <- df$publication_year_from

# Add publication country
df$country <- get_country(df$publication_place)$country

# Estimate missing dimension info
dim.orig <- df[, c("gatherings.original", "width.original", "height.original")]
names(dim.orig) <- gsub("\\.original$", "", names(dim.orig))
dim.estimated <- augment_dimension_table(dim.orig)
df <- cbind(df, dim.estimated)


print("Add estimated paper consumption")
# One m2 is 100 * 100 cm2 = 1e4 cm2
# One km2 is 1000 * 1000 m2 = 1e6 m2 = 1e10 cm2
# Estimated average print run per document: 1000
printrun <- 1000
df <- mutate(df, paper.consumption.km2 = width * height * pagecount/2 * (1/1e10) * printrun)


# Recognize synonymes with string matching;
# this step can be skipped after the synonyme list is fixed
# source("city_synonyme_list_update.R", encoding = "UTF-8") 
# This was combined with ESTC generic list to simplify
# TODO Think how to split and generalize
# Finally manual harmonization for the remaining place names
#f <- system.file("extdata/publication_place_synonymes_fennica.csv", package = "fennica")
#sn <- read.csv(f, sep = ";")
#df$publication_place <- sorvi::harmonize_names(df$publication_place, synonymes = sn, check.synonymes = FALSE)$name

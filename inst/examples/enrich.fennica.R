message("Enriching Fennica")

message("Identify issues")
df.preprocessed$issue <- is.issue(df.preprocessed)

## COMBINE PUBLICATION-YEAR AND PUBLICATION-INTERVAL FIELDS
# Recognize issues: those that have publication interval or frequency defined
message("Combining year and interval")
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
tmp <- cbind(from0 = df.preprocessed$publication_year_from[inds],
             till0 = df.preprocessed$publication_year_till[inds],
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

# ------------------------------------------------------

message("Updating publication times")

# Use from field; if from year not available, then use till year
df.preprocessed$publication_year <- df.preprocessed$publication_year_from
inds <- which(is.na(df.preprocessed$publication_year))
df.preprocessed$publication_year[inds] <- df.preprocessed$publication_year_till[inds]

# publication_decade
df.preprocessed$publication_decade <- floor(df.preprocessed$publication_year/10) * 10 # 1790: 1790-1799

# ------------------------------------------------------

message("Custom gender information for Fennica")
# For author names, use primarily the Finnish names database
# hence use it to replace the genders assigned earlier by bibliographica
library(fennica)
firstname <- pick_firstname(df.preprocessed$author_name, format = "last, first")

# Let us Finnish gender mappings override others
gender.fi <- get_gender_fi()[, c("name", "gender")] # Finnish
genderfi <- get_gender(firstname, gender.fi)
inds <- which(!is.na(genderfi))
df.preprocessed$author_gender[inds] <- genderfi[inds]

# Let us Fennica custom gender mappings override others
gender.custom <- read_mapping("custom_gender_fennica.csv", sep = "\t",
	      	   from = "name", to = "gender", mode = "table")
gendercustom <- get_gender(firstname, gender.custom)
inds <- which(!is.na(gendercustom))
df.preprocessed$author_gender[inds] <- gendercustom[inds]

message("-- Fennica publishers")
df.preprocessed.bu <- df.preprocessed
df.preprocessed$publisher    <- polish_publisher_fennica(df.preprocessed)
  
# ----------------------------------------------------------------
 
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





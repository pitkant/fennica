library(bibliographica)
library(fennica)

#library(devtools)
#load_all("bibliographica")
#load_all()

# I/O definitions
# make daily output folders TODO convert into function -vv
# today.str <- as.character(Sys.Date())
# output.folder <- paste("output.tables/", today.str, "/", sep = '')
# old version:
output.folder <- "output.tables/"
dir.create(output.folder)

# List preprocessed data files
fs <- "data/unified/fennica_parsed.csv.gz"
catalog <- "fennica" 

# Languages to consider in cleanup.
# TODO: recognize the necessary languages automatically ?
languages <- c("finnish", "latin", "swedish")

# Cores for parallelization
mc.cores <- 3

# Limit to Finnish/Swedish name-gender mappings for Fennica
gendermap.file <- system.file("extdata/gendermap_finnish_swedish.csv",
                              package = "bibliographica")

# Remove selected fields
update.fields <- NULL
ignore.fields <- c("language2", "title_remainder",
                   "physical_details", "physical_accomppanied",
                   "note_general", "note_year") # Fennica

# update.fields <- setdiff(names(df.preprocessed), "publisher")
# update.fields <- c("language")

# ----------------------------------------------------
#            LOAD DATA FOR PREPROCESSING
# ----------------------------------------------------

reload.data <- FALSE # Set this to TRUE to regenerate df.raw.Rds
if (!"df.raw.Rds" %in% dir()) {
  reload.data <- TRUE
}
source(system.file("extdata/init.R", package = "bibliographica"))

df.orig <- load_initial_datafile(fs, ignore.fields, reload.data)

data.preprocessing <- get_preprocessing_data(df.orig, 
                                             update.fields,
                                             ignore.fields)

# ----------------------------------------------------
#           PREPROCESS DATA
# ----------------------------------------------------

# Modify the original data if needed 
# Finnish/Swedish specific fixes 
# In Finnish texts s. is used instead of p.
f <- system.file("extdata/translation_fi_en_pages.csv", package = "bibliographica")
synonyms <- read.csv(f, sep = ";") 
df.orig$physical_dimension <- map(df.orig$physical_dimension,
          synonyms, mode = "recursive")

# Test with small data test set
# df.orig <- df.orig[sample(1:nrow(df.orig), 1e4),]

# -------------------------------

# load preprocessing function
source(system.file("extdata/preprocessing.R", package = "bibliographica"))

data.preprocessed <- preprocess_data(data.preprocessing, 
                                     df.orig,
                                     languages, 
                                     mc.cores = mc.cores)

rm(data.preprocessing)

source("preprocessing.fennica.R") # Fennica-specific
data.preprocessed <- preprocessing_fennica(data.preprocessed)

# ----------------------------------------------------
#           VALIDATE PREPROCESSED DATA
# ----------------------------------------------------

# NOTE: for Fennica this validation is repeated also a second time after
# the fennica-specific parts. It might be sufficient to skip this first round
# and get the same results but cant say without checking more carefully
data.validated <- validate_preprocessed_data(data.preprocessed)
rm(data.preprocessed)

# ----------------------------------------------------
#           ENRICH VALIDATED DATA
# ----------------------------------------------------

# NOTE: for Fennica this enrichment is repeated also a second time after
# the fennica-specific parts. It might be sufficient to skip this first round
# and get the same results but cant say without checking more carefully
data.enriched <- enrich_preprocessed_data(data.validated, df.orig)
rm(data.validated)

source("enrich.fennica.R")
data.enriched.fennica <- enrich_fennica(data.enriched)
rm(data.enriched)

source("validation.fennica.R") # Year checks: must come after enrich
data.to.analysis.fennica <- validation_fennica(data.enriched.fennica)

# General validation and enrichment for the final data one more time
# (for instance, publisher field needs Fennica-specific modifications above
#  but that is just one example)
data.validated2 <- validate_preprocessed_data(data.to.analysis.fennica)
data.enriched2 <- enrich_preprocessed_data(data.validated2, df.orig)

# ---------------------------------------------------

df.preprocessed <- data.enriched2$df.preprocessed

print("Saving updates on preprocessed data")
saveRDS(df.preprocessed, "data/unified/polished/df.Rds")

# ---------------------------------

source("analysis.R")  # Summary md docs

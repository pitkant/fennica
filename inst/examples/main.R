library(bibliographica)
library(fennica)

#library(devtools)
#load_all("bibliographica")
#load_all()

# Ensure NULL
rm("update.fields")
rm("ignore.fields")
rm("df.preprocessed")
rm("df.orig")

# I/O definitions
# make daily output folders TODO convert into function -vv
# today.str <- as.character(Sys.Date())
# output.folder <- paste("output.tables/", today.str, "/", sep = '')
# old version:
output.folder <- "output.tables/"
dir.create(output.folder)

# List preprocessed data files
fs <- "data/fennica.csv.gz"
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

reload.data <- FALSE
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

data.validated <- validate_preprocessed_data(data.preprocessed)
rm(data.preprocessed)

# ----------------------------------------------------
#           ENRICH VALIDATED DATA
# ----------------------------------------------------

data.enriched <- enrich_preprocessed_data(data.validated, df.orig)
rm(data.validated)

source("enrich.fennica.R")
data.enriched.fennica <- enrich_fennica(data.enriched)
rm(data.enriched)

source("validation.fennica.R") # Year checks: must come after enrich
data.to.analysis.fennica <- validation_fennica(data.enriched.fennica)

# General validation for the final data one more time
data.validated2 <- validate_preprocessed_data(data.to.analysis.fennica)

# ---------------------------------------------------

df.preprocessed <- data.validated2$df.preprocessed

print("Saving updates on preprocessed data")
saveRDS(df.preprocessed, "df.Rds")

# ---------------------------------

source("analysis.R")  # Summary md docs

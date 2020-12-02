source("init.R")

# ----------------------------------------------------
#            LOAD DATA FOR PREPROCESSING
# ----------------------------------------------------

df.orig <- read_bibliographic_metadata(fs, verbose = TRUE, sep = "|")
# FIXME move this to preprocessing part
# Modify the original data if needed 
# Finnish/Swedish specific fixes 
# In Finnish texts s. is used instead of p.

update.fields <- names(df.orig) # Update all fields
# Remove specified fields
ignore.fields <- c("language2", "title_remainder",
                       "physical_details", "physical_accomppanied",
                       "note_general", "note_year", "original_row") # Fennica
update.fields <- setdiff(update.fields, ignore.fields)

# ----------------------------------------------------
#           PREPROCESS DATA
# ----------------------------------------------------

message("Preprocess selected original fields")
source("polish_all.R")

saveRDS(df.preprocessed, "data/unified/polished/df0.Rds", compress = TRUE)  
saveRDS(conversions, "conversions.Rds", compress = TRUE)

# ----------------------------------------------------
#           VALIDATE PREPROCESSED DATA
# ----------------------------------------------------

# NOTE: for Fennica this validation is repeated also a second time after
# the fennica-specific parts. It might be sufficient to skip this first round
# and get the same results but cant say without checking more carefully
data.validated <- validate_preprocessed_data(df.preprocessed)

# ----------------------------------------------------
#           ENRICH VALIDATED DATA
# ----------------------------------------------------

# NOTE: for Fennica this enrichment is repeated also a second time after
# the fennica-specific parts. It might be sufficient to skip this first round
# and get the same results but cant say without checking more carefully
data.enriched <- enrich_preprocessed_data(data.validated, df.orig)
source("enrich.fennica.R")
rm(data.validated)
rm(data.enriched)

source("validation.fennica.R") # Year checks: must come after enrich

# General validation and enrichment for the final data one more time
# (for instance, publisher field needs Fennica-specific modifications above
#  but that is just one example)
data.validated2 <- validate_preprocessed_data(data.to.analysis.fennica)
data.enriched2 <- enrich_preprocessed_data(data.validated2, df.orig)

# ---------------------------------------------------

print("Saving updates on preprocessed data")
df.preprocessed <- data.enriched2
saveRDS(df.preprocessed, "data/unified/polished/df.Rds")

# Data releases
# CCQ 2019 data release - run separately
# source("prepare_fnd_data_for_ccq2019.R")

# -----------------------------------

# Summary analyses
source("analysis.init.R")
source("analysis.run.R")

# Specific analyses (to be updated)
# source("analysis.R")  # Summary md docs



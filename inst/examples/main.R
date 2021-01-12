# ----------------------------------------------------
#            INITIALIZE AND LOAD DATA
# ----------------------------------------------------

source("init.R")

# ----------------------------------------------------
#           PREPROCESS DATA
# ----------------------------------------------------

message("Preprocess selected original fields")
source("polish_all.R")

# Store the processed data
saveRDS(df.preprocessed, "df0.Rds", compress = TRUE)
saveRDS(df.orig, "df.raw.Rds", compress = TRUE)  
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
saveRDS(df.preprocessed, "df.Rds")

# Summary analyses
source("analysis.init.R")
# source("analysis.run.R")

# ---------------------------------------------------

# Specific analyses (to be updated)
# source("analysis.R")  # Summary md docs

# Data releases
# CCQ 2019 data release - run separately
# source("CCQ_2019/prepare_fnd_datax_for_ccq2019.R")




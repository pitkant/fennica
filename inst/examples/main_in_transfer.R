update.fields <- c(

      "author_date",           
      "author_name" # OK
      # -> Once both name and date are done, we can add the combined part of the summary
      
      "publication_interval", # Some overlap with time.. TODO
      "publication_frequency", 

      "physical_extent",       
      "physical_dimension",

      "subject_geography", # IT takes care?
      
      )


df.orig <- df.orig[, update.fields]

# Languages to consider in cleanup.
# TODO: recognize the necessary languages automatically ?
catalog <- "fennica" 
languages <- c("finnish", "latin", "swedish")

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
#           ENRICH VALIDATED DATA
# ----------------------------------------------------

# NOTE: for Fennica this enrichment is repeated also a second time after
# the fennica-specific parts. It might be sufficient to skip this first round
# and get the same results but cant say without checking more carefully
data.enriched <- enrich_preprocessed_data(df.preprocessed, df.orig)

# General validation and enrichment for the final data one more time
# (for instance, publisher field needs Fennica-specific modifications above
#  but that is just one example)
data.validated <- validate_preprocessed_data(data.enriched)

See also validation.R!!!

print("Saving updates on preprocessed data")
saveRDS(data.validated, "df.Rds")

# Summary analyses
source("analysis.init.R")
source("analysis.run.R")

# ---------------------------------------------------

# Specific analyses (to be updated)
# source("analysis.R")  # Summary md docs

# Data releases
# CCQ 2019 data release - run separately
# source("CCQ_2019/prepare_fnd_datax_for_ccq2019.R")




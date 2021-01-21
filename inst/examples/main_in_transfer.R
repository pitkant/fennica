# ----------------------------------------------------
#            INITIALIZE AND LOAD DATA
# ----------------------------------------------------

source("init.R")

update.fields <- c(
      "title_uniform",
      "publication_place",
      
      "language",
      
      "author_name",          
      "author_date",           
      "publication_time",      
      "physical_extent",       
      "physical_dimension",
      "publication_frequency", 
      "publication_interval",  
      "note_dissertation",    
      "note_granter",          
      "note_source",           
      "note_510c",            
      "subject_topic",         
      "subject_geography",     
      "corporate",            
      "uncontrolled",          
      "successor",             
      "holder",              
      "publisher"
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




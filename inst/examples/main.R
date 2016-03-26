# Create the output directory if not yet exists
output.folder <- "output.tables/"
dir.create(output.folder)

# Parsed raw data
original.datafile <- "data/fennica.csv.gz"

# ----------------------------------------------

source("init.R")
source("import2.R") # Data preprocessing
source("enrich.R")
source("validation.R")
saveRDS(df.preprocessed, "df.Rds")

source("summarize.R") # Summary tables
source("knit_all.R")  # Summary md docs

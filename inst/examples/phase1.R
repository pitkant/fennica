# Update the pkg
# library(devtools)
# install_github("ropengov/fennica")

# Define here the input file and output folder
# The rest should then execute out-of-the box
fennica.data.file <- "inst/examples/data/fennica.csv.gz"
output.folder <- "output.tables/"

# Create the output directory if not yet exists
dir.create(output.folder)

# -------------------------------------------

# Load R package
# library(fennica)

source("R/data.R")
print("Read raw data")
df.orig <- read_fennica_data(fennica.data.file)
size_global <- nrow(df.orig)

# Preprocess the raw data
source("inst/examples/preprocessing.R", encoding = "UTF-8")

# Analyze the preprocessed data
# source("analysis.R")

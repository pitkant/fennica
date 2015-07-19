# Update the pkg
# library(devtools)
# install_github("ropengov/fennica")

# Load R package
library(fennica)

fennica.data.file <- "data/fennica.csv.gz"
output.folder <- "output.tables/"

# Create the output directory if not yet exists
dir.create(output.folder)

print("Read raw data")
df.orig <- read_fennica_data(fennica.data.file)
data_size <- nrow(df.orig)

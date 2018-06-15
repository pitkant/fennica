library(ggplot2)
library(tidyr)
library(dplyr)
library(bibliographica)
library(fennica)
library(magrittr)
library(reshape2)
library(gridExtra)
library(knitr)

# ---------------------------------

# Set global parameters
#timespan <- c(1400, 1920)
#timespan <- c(1470, 1828)
#timespan <- c(-Inf, Inf)
datafile <- "data/unified/polished/df.Rds"
datafile.orig <- "data/unified/polished/df.raw.Rds"
ntop <- 20
author <- "Lahti, Marjanen, Roivainen, Tolonen"

# Already in main.R but it must
# be possible to run analysis.R
# independently, therefore redefined here.

output.folder <- "output.tables/"

# ---------------------------------

print("Prepare the final data set")
# Read the preprocessed data
df0 <- readRDS(datafile)
df.orig <- readRDS(datafile.orig)

# Year limits
df <- df0
if (!exists("timespan")) {
  timespan <- range(df$publication_year, na.rm = TRUE)
}

df <- filter(df0,
        publication_year >=  min(timespan) & publication_year <= max(timespan))


# Store
df.preprocessed <- df.preprocessed.orig <- df
rm(df)

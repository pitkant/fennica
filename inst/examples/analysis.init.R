library(ggplot2)
library(tidyr)
library(dplyr)
library(bibliographica)
library(magrittr)
library(reshape2)
library(gridExtra)
library(knitr)

# ---------------------------------

# Set global parameters
#timespan <- c(1400, 1920)
#timespan <- c(1470, 1828)
#timespan <- c(-Inf, Inf)
datafile <- "df.Rds"
datafile.orig <- "df.raw.Rds"
ntop <- 20
author <- "Lahti, Marjanen, Roivainen, Tolonen"
output.folder <- "output.tables/"

# ---------------------------------

print("Prepare the final data set")

# Read the preprocessed data
df0 <- readRDS(datafile)
df.orig <- readRDS(datafile.orig)

# Year limits
df <- df0
if (exists("timespan")) {
  df <- filter(df0,
        publication_year >=  min(timespan) & publication_year <= max(timespan))
}

# Store
df.preprocessed <- df.preprocessed.orig <- df
rm(df)

library(ggplot2)
library(tidyr)
library(dplyr)
library(stringr)
library(bibliographica)
library(estc)
library(magrittr)
library(sorvi)
library(reshape2)
library(gridExtra)
library(knitr)

# ---------------------------------

# Set global parameters
timespan <- c(1400, 1920)
datafile <- "df.Rds"
ntop <- 20
author <- "Leo Lahti"
output.folder <- "output.tables/"

# ---------------------------------

print("Prepare the final data set")

# Read the preprocessed data
df <- readRDS(datafile)

# Year limits
df <- filter(df, publication_year >=  min(timespan) & publication_year <= max(timespan))
df.preprocessed <- df.preprocessed.orig <- df



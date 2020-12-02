library(devtools)
load_all("bibliographica")
load_all()

library(bibliographica) 
library(fennica)        
library(devtools)
library(dplyr)
library(bibliographica)
library(sorvi)


# I/O definitions
# make daily output folders TODO convert into function -vv
# today.str <- as.character(Sys.Date())
# output.folder <- paste("output.tables/", today.str, "/", sep = '')
# old version:

source("funcs.R")

output.folder <- "output.tables/"
dir.create(output.folder)

# List preprocessed data files
fs <- "fennica_parsed.csv.gz"
catalog <- "fennica" 

# Languages to consider in cleanup.
# TODO: recognize the necessary languages automatically ?
languages <- c("finnish", "latin", "swedish")

# Limit to Finnish/Swedish name-gender mappings for Fennica
gendermap.file <- system.file("extdata/gendermap_finnish_swedish.csv",
                              package = "fennica")


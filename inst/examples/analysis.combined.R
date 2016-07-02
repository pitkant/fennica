# Read data & combine
# Define time span
library(dplyr)

min.year = 1470
max.year = 1828
setwd("~/GitHub/fennica/inst/examples/")

if (file.exists("df.combined.Rds")) {
  message("Opening df.combined.Rds")
  df.combined.preprocessed <- readRDS("df.combined.Rds")
} else {
  message("Creating df.combined.Rds by combining df.Rds-files from Kungliga & Fennica")
  
  message("Reading Fennica df.Rds")
  fen <- readRDS("df.Rds")
  message("Reading Kungliga df.Rds")
  kun <- readRDS("../../../kungliga/antagomir/df.Rds")
  
  message("Reading Fennica df.raw.Rds")
  fenraw <- readRDS("df.raw.Rds")
  message("Reading Kungliga df.raw.Rds")
  kunraw <- readRDS("../../../kungliga/antagomir/df.raw.Rds")
  
  message("Filtering by years")
  fen <- fen %>% filter(publication_year >= min.year & publication_year <= max.year)
  kun <- kun %>% filter(publication_year >= min.year & publication_year <= max.year)
  
  message("Binding & adding extra fields")
  df0 = bind_rows(fen, kun)
  df0$catalog = factor(c(rep("Fennica", nrow(fen)), rep("Kungliga", nrow(kun))))
  df0$catalog_index <- 0
  df0$catalog_index[1:nrow(fen)] = 1:nrow(fen)
  df0$catalog_index[(nrow(fen)+1):nrow(df0)] <- 1:nrow(kun)
  
  df.combined.preprocessed <- df0
  
  # This actually only adds $remove and fills it with values (just in case)
  df.combined.preprocessed <- remove_duplicates(df.combined.preprocessed)
  saveRDS(object=df.combined.preprocessed, file="df.combined.Rds")
}

message("Filtering out rows with remove-tags")
# This is the real removal
df.filtered.preprocessed <- df.combined.preprocessed %>% filter(remove != "remove")



# Read data & combine
# Define time span
library(dplyr)

min.year = 1470
max.year = 1828
setwd("~/GitHub/fennica/inst/examples/")
fen <- readRDS("df.Rds")
kun <- readRDS("../../../kungliga/antagomir/df.Rds")

fenraw <- readRDS("df.raw.Rds")
kunraw <- readRDS("../../../kungliga/antagomir/df.raw.Rds")

fen <- fen %>% filter(publication_year >= min.year & publication_year <= max.year)
kun <- kun %>% filter(publication_year >= min.year & publication_year <= max.year)
df0 = bind_rows(fen, kun)
df0$catalog = factor(c(rep("Fennica", nrow(fen)), rep("Kungliga", nrow(kun))))
df0$catalog_index <- 0
df0$catalog_index[1:nrow(fen)] = 1:nrow(fen)
df0$catalog_index[(nrow(fen)+1):nrow(df0)] <- 1:nrow(kun)

df.preprocessed <- df0

# This actually only adds $remove and fills it with values (just in case)
df.preprocessed <- remove_duplicates(df.preprocessed)

# This is the real removal
df.preprocessed <- df.preprocessed %>% filter(remove != "remove")

saveRDS(object=df.preprocessed, file="df.combined.RDS")

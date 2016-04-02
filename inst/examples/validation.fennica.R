# Manually checked for Fennica - 3 publications before 1400;
# in all cases it seems that this is misspelling and the original year cant be inferred from the entry
max.year <- as.numeric(format(Sys.time(), "%Y")) # this.year
min.year <- 1400
df.preprocessed$publication_year_from[which(df.preprocessed$publication_year_from > max.year)] <- NA
df.preprocessed$publication_year_from[which(df.preprocessed$publication_year_from < min.year)] <- NA
df.preprocessed$publication_year_till[which(df.preprocessed$publication_year_till > max.year)] <- NA
df.preprocessed$publication_year_till[which(df.preprocessed$publication_year_till < min.year)] <- NA




print("Fix publication years")
# Remove apparent errors: no future publications or publications before historical times
this.year <- format(Sys.time(), "%Y")
df.preprocessed$publication_year_from[df.preprocessed$publication_year_from > this.year] <- NA
df.preprocessed$publication_year_from[df.preprocessed$publication_year_from < (-2000)] <- NA
df.preprocessed$publication_year_till[df.preprocessed$publication_year_till > this.year] <- NA
df.preprocessed$publication_year_till[df.preprocessed$publication_year_till < (-2000)] <- NA




print("Fix publication years")
# Remove apparent errors: no future publications or publications before historical times
this.year <- format(Sys.time(), "%Y")
df.preprocessed$publication_year_from[df.preprocessed$publication_year_from > this.year] <- NA
df.preprocessed$publication_year_from[df.preprocessed$publication_year_from < (-2000)] <- NA
df.preprocessed$publication_year_till[df.preprocessed$publication_year_till > this.year] <- NA
df.preprocessed$publication_year_till[df.preprocessed$publication_year_till < (-2000)] <- NA


# Publication year must be after birth
# FIXME: should we let these through to the final summaries
# - this could help to spot problems ?
inds <- which(df.tmp$author_birth > df.tmp$publication_year_from)
if (length(inds) > 0) {
      df.tmp[inds, "author_birth"] <- NA
      df.tmp[inds, "author_death"] <- NA
      df.tmp[inds, "publication_year_from"] <- NA
      df.tmp[inds, "publication_year_till"] <- NA      
}



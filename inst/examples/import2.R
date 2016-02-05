print("Read raw data")
df.orig <- bibliographica::read_bibliographic_metadata("data/fennica.csv.gz")

print("Entry identifier to match back to the originals")
df.preprocessed <- data.frame(original_row = df.orig$original_row)

print("List raw data fields to be preprocessed")
update.fields <- names(df.orig) # Update all
update.fields <- c("language", "author_date", "physical_extent", "author_name", "publisher", "corporate", "publication_time", "note_dissertation", "note_granter", "publication_place", "physical_dimension")

# -----------------------------------------------------------------------

# Finnish/Swedish specific fixes 
df.orig$physical_dimension 
df.orig$physical_dimension <- gsub(",", ".", df.orig$physical_dimension) # 75,9 -> 75.9
# In Finnish texts s. is used instead of p.		
f <- system.file("extdata/translation_fi_en_pages.csv", package = "bibliographica")
synonyms <- read.csv(f, sep = ";") 
df.orig$physical_dimension <- harmonize_names(df.orig$physical_dimension,
					synonyms, mode = "recursive")

# -----------------------------------------------------------------------

# List how raw data fields will be converted into
# preprocessed data fields
conversions <- list()

# Preprocess the field only if it has to be updated
for (field in update.fields) {

  print(field)

  # Polish the given field
  df.tmp <- polish_field(df.orig, field, verbose = FALSE)

  # List the output fields for this input field
  conversions[[field]] <- names(df.tmp)

  # Remove fields to be updated
  inds <- which(names(df.preprocessed) %in% unlist(conversions[[field]]))
  if (length(inds) > 0) { df.preprocessed <- df.preprocessed[, -inds]}

  # Add the newly preprocessed field
  df.preprocessed <- cbind(df.preprocessed, df.tmp)

  # Remove the temporary data.frame
  rm(df.tmp)


}

df.preprocessed0 <- df.preprocessed
saveRDS(df.preprocessed0, "df0.Rds")
saveRDS(df.orig, "df.orig.Rds")




print("Read raw data")
df.orig <- bibliographica::read_bibliographic_metadata(original.datafile)
saveRDS(df.orig, "df.orig.Rds")

# -----------------------------------------------------------------------

# Modify the original data if needed

# Finnish/Swedish specific fixes 
# In Finnish texts s. is used instead of p.		
f <- system.file("extdata/translation_fi_en_pages.csv", package = "bibliographica")
synonyms <- read.csv(f, sep = ";") 
df.orig$physical_dimension <- harmonize_names(df.orig$physical_dimension,
					synonyms, mode = "recursive")


# Remove unknown fields
# TODO: modify polish_fields such that it can automatically ignore
# unknown fields
#df.orig$language2 <- NULL
#df.orig$title_remainder <- NULL
#df.orig$physical_details <- NULL
#df.orig$physical_accomppanied <- NULL
#df.orig$note_general <- NULL
#df.orig$note_year <- NULL

# -----------------------------------------------------------------------

# Preprocess all fields at once
res <- polish_all(df.orig)
df.preprocessed <- df.preprocessed0 <- res$df.preprocessed
conversions <- res$conversions
saveRDS(df.preprocessed0, "df0.Rds")
saveRDS(conversions, "conversions.Rds")




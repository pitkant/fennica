# ENRICHMENT AND VALIDATION
min.year <- 1400
max.year <- as.numeric(format(Sys.time(), "%Y")) # this.year
tmp      <- polish_years(df.orig[[field]], check = TRUE, min.year = min.year, max.year = max.year)
      
# Make data.frame
df.harmonized <- data.frame(original_row = df.orig$original_row,
                     publication_year_from = tmp$from,
                     publication_year_till = tmp$till)

# Add publication_decade
df.harmonized$publication_decade <- decade(df.harmonized$publication_year) 

# ---------------------------------------------------

# Store the title field data
# FIXME: convert to feather or plain CSV
data.file <- paste0(field, ".Rds")
saveRDS(df.harmonized, file = data.file)

# ---------------------------------------------------------------------

# TODO pick publication_time specific parts
# Summarize the data and discarded entries
#tmp <- generate_summary_tables(df.harmonized, df.orig, output.folder)


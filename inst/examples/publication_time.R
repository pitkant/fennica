# ENRICHMENT AND VALIDATION
field <- "publication_time"
tmp   <- polish_years(df.orig[[field]], check = TRUE)
      
# Make data.frame
df.harmonized <- data.frame(original_row = df.orig$original_row,
                     publication_year_from = tmp$from,
                     publication_year_till = tmp$till)

# Add publication_year
df.harmonized$publication_year <- df.harmonized$publication_year_from

# Add publication_decade
df.harmonized$publication_decade <- decade(df.harmonized$publication_year) 

# ---------------------------------------------------

# Store the title field data
# FIXME: convert to feather or plain CSV
data.file <- paste0(field, ".Rds")
saveRDS(df.harmonized, file = data.file)

# ---------------------------------------------------------------------

message("Write conversions: publication year")
df.harmonized$original <- df.orig[[field]]

xx <- as.data.frame(df.harmonized) %>% filter(!is.na(publication_year)) %>%
                                       group_by(original, publication_year) %>%
                                       tally() %>%
				       arrange(desc(n))

tmp <- write.table(xx,
         file = paste(output.folder, "publication_year_conversion.csv",
           sep = ""), quote = FALSE, row.names = FALSE)
  
message("Discarded publication year")
o <- as.character(df.orig[[field]])
x <- as.character(df.harmonized[["publication_year"]])
inds <- which(is.na(x))
tmp <- write_xtable(o[inds],
      paste(output.folder, "publication_year_discarded.csv", sep = ""),
      count = TRUE)

# ------------------------------------------------------------

# Generate markdown summary 
df <- readRDS(data.file)
tmp <- knit(input = paste(field, ".Rmd", sep = ""), 
            output = paste(field, ".md", sep = ""))


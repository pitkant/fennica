

field <- "author_date"
# TODO make a tidy cleanup function to shorten the code here
df.tmp <- polish_years(df.orig[[field]], check = TRUE, verbose = FALSE)
df.tmp <- df.tmp %>% dplyr::rename(author_birth = from) %>%
  dplyr::rename(author_death = till)
df.tmp <- bind_cols(original_row = df.orig$original_row, df.tmp)
rownames(df.tmp) <- NULL

#Added author_age column to df.tmp, turning 0 to NA. 
#0 means that only year of death available

df.tmp <- bind_cols(df.tmp,author_age=df.tmp$author_death-df.tmp$author_birth)
rownames(df.tmp) <- NULL
df.tmp[df.tmp == 0] <- NA

# Store the title field data
# FIXME: convert to feather or plain CSV
data.file <- paste0(field, ".Rds")
saveRDS(df.tmp, file = data.file)

# Define output files
file_accepted  <- paste0(output.folder, field, "_accepted.csv")
file_discarded <- paste0(output.folder, field, "_discarded.csv")

# ------------------------------------------------------------

# Generate data summaries

message("Accepted entries in the preprocessed data")
s <- write_xtable(df.tmp[[field]], file_accepted, count = TRUE)

message("Discarded entries in the original data")

# NA values in the final harmonized data
inds <- which(is.na(df.tmp[[field]]))

# Original entries that were converted into NA
original.na <- df.orig[match(df.tmp$original_row[inds], df.orig$original_row), field]

# .. ie. those are "discarded" cases; list them in a table
tmp <- write_xtable(original.na, file_discarded, count = TRUE)

# ------------------------------------------------------------

# Generate markdown summary 
df <- readRDS(data.file)
tmp <- knit(input = paste(field, ".Rmd", sep = ""), 
            output = paste(field, ".md", sep = ""))

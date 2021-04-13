
field <- "author_date"

# TODO make a tidy cleanup function to shorten the code here
df.tmp <- polish_years(df.orig[[field]], check = TRUE, verbose = FALSE) %>%
            dplyr::rename(author_birth = from) %>%
  	    dplyr::rename(author_death = till) %>%
	    mutate(author_age = author_death-author_birth) %>% # Add author age
	    mutate(author_age = na_if(author_age, 0))          # Replace 0 age with NA

# Add original row info as first column
df.tmp <- bind_cols(original_row = df.orig$original_row,
                    author_date = df.orig$author_date, # add field column 
                    df.tmp)
rownames(df.tmp) <- NULL

# Store the title field data
# FIXME: convert to feather or plain CSV
data.file <- paste0(field, ".Rds")
saveRDS(df.tmp, file = data.file)

# Define output files
file_accepted  <- paste0(output.folder, field, "_accepted.csv")
file_discarded <- paste0(output.folder, field, "_discarded.csv")

# ------------------------------------------------------------

# Generate data summaries

o <- as.character(df.orig[[field]])
x <- as.character(df.tmp[["author_birth"]])
y <- as.character(df.tmp[["author_death"]])

message("Accepted entries in the preprocessed data")
inds <- !is.na(x) & !is.na(y)
accept.file <- paste0(output.folder, field, "_accepted.csv")
tmp <- write_xtable(o[inds],file = accept.file,count = TRUE)
#s <- write_xtable(df.tmp[[field]], file_accepted, count = TRUE)

message("Discarded entries in the original data")
inds1 <- is.na(x) & is.na(y)
discard.file <- paste0(output.folder, field, "_discarded.csv")
tmp1 <- write_xtable(o[inds1],file = discard.file,count = TRUE)
              
# ------------------------------------------------------------

# Generate markdown summary 
df <- readRDS(data.file)
tmp <- knit(input = paste(field, ".Rmd", sep = ""), 
            output = paste(field, ".md", sep = ""))


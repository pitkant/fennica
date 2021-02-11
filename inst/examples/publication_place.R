field <- "publication_place"


# Harmonize the raw data
tab <- polish_place(df.orig[[field]], remove.unknown = FALSE)

# Collect the results into a data.frame
df.tmp <- data.frame(publication_place = tab)

# TODO: Enrichments from IT?

# Store the title field data
# FIXME: convert to feather or plain CSV
# data.file <- paste0(field, ".Rds")
# saveRDS(df.harmonized, file = data.file)

message("Entry identifier to match back to the originals")
df.preprocessed <- data.frame(original_row = df.orig$original_row)

# List how raw data fields will be converted into
# preprocessed data fields
conversions <- list()
preprocessing.times <- c()


#publisher
first <- "publication_place"
last <- "publisher"
update.fields <- c(first, setdiff(update.fields, first))
update.fields <- c(setdiff(update.fields, last), last)

# Preprocess the field only if it has to be updated
for (field in update.fields) {

    # Starting time
    start.time <- Sys.time()

    message(field)
    source(paste0(field, ".R"))

    # List the output fields for this input field to output fields
    conversions[[field]] <- names(df.tmp)

    # Add the newly preprocessed field
    # FIXME: collect afterwards
    df.preprocessed <- cbind(df.preprocessed, df.tmp)

    # Remove the temporary data.frame
    rm(df.tmp)

    # Monitor time
    stop.time <- Sys.time()
    preprocessing.times[[field]] <- difftime(stop.time, start.time, units = "mins")
    
}

message("Field preprocessing ok.")





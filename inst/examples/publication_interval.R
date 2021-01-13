#    # Polish the given field
#    df.tmp <- polish_field(df.orig, df.preprocessed, field, verbose = FALSE,
# languages = languages)

    
tmp <- polish_years(df.orig[[field]], check = TRUE)
      
# Add to data.frame
df.tmp <- data.frame(publication_interval_from = tmp$from,
              	     publication_interval_till = tmp$till)

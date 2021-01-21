# TODO make a tidy cleanup function to shorten the code here
df.tmp <- polish_years(df.orig[[field]], check = TRUE, verbose = FALSE)
df.tmp <- dplyr::rename(df.tmp, author_birth = from)
df.tmp <- dplyr::rename(df.tmp, author_death = till)	
      	



    # Publication year must be after birth
    # FIXME: should we let these through to the final summaries
    # - this could help to spot problems ?
    inds <- which(df$author_birth > df$publication_year_from)
    if (length(inds) > 0) {
      df[inds, "author_birth"] <- NA
      df[inds, "author_death"] <- NA
      df[inds, "publication_year_from"] <- NA
      df[inds, "publication_year_till"] <- NA      
    }

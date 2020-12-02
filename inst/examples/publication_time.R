tmp <- polish_years(df.orig[[field]], check = TRUE)
      
# Add to data.frame
df.tmp <- data.frame(publication_year_from = tmp$from,
                     publication_year_till = tmp$till)



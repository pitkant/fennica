# TODO make a tidy cleanup function to shorten the code here
df.tmp <- polish_years(df.orig[[field]], check = TRUE, verbose = FALSE)
df.tmp <- dplyr::rename(df.tmp, author_birth = from)
df.tmp <- dplyr::rename(df.tmp, author_death = till)	
      	

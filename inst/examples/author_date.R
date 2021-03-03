# TODO make a tidy cleanup function to shorten the code here
df.tmp <- polish_years(df.orig[[field]], check = TRUE, verbose = FALSE)
df.tmp <- df.tmp %>% dplyr::rename(author_birth = from) %>%
       	  	     dplyr::rename(author_death = till)	
      	

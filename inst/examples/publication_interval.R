

tmp <- polish_years(df.orig[[field]], check = TRUE)
      
# Add to data.frame
df.tmp <- data.frame(publication_interval_from = tmp$from,
              	     publication_interval_till = tmp$till)


message("Enrich publication interval")
# Based on analysis of a random sample of entries in Fennica,
# it seems that when interval is of the form "1908" ie a single year
# the publication interval is in all cases 1908-1908 ie a single year.
# Hence let us augment the interval based on this if till year is missing.
# Assume that all cases with denoted interval have start and end year
# If one is missing, then it means that start and end are the same year
# therefore we fill those missing entries here
df.tmp$publication_interval_from[is.na(df.tmp$publication_interval_from)] <- df.tmp$publication_interval_till[is.na(df.tmp$publication_interval_from)]
df.tmp$publication_interval_till[is.na(df.tmp$publication_interval_till)] <- df.tmp$publication_interval_from[is.na(df.tmp$publication_interval_till)]

message("Discard erroneous entires in publication interval")
# Require that publication interval is within 1400-2000 (indicates error otherwise)
df.tmp$publication_interval_from[df.tmp$publication_interval_from < 1400] <- NA
df.tmp$publication_interval_from[df.tmp$publication_interval_from > 2000] <- NA
df.tmp$publication_interval_till[df.tmp$publication_interval_till < 1400] <- NA
df.tmp$publication_interval_till[df.tmp$publication_interval_till > 2000] <- NA

# ---------------------------------------------------------------------


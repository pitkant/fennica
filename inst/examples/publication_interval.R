tmp <- polish_years(df.orig[[field]], check = TRUE)
      
# Add to data.frame
df.tmp <- data.frame(publication_interval_from = tmp$from,
              	     publication_interval_till = tmp$till)





## COMBINE PUBLICATION-YEAR AND PUBLICATION-INTERVAL FIELDS
# Recognize issues: those that have publication interval or frequency defined
message("Combining year and interval")
# Assume that all cases with denoted interval have start and end year
# If one is missing, then it means that start and end are the same year
# therefore fill those missing entries here
df.harmonized$publication_interval_from[is.na(df.harmonized$publication_interval_from)] <- df.harmonized$publication_interval_till[is.na(df.harmonized$publication_interval_from)]
df.harmonized$publication_interval_till[is.na(df.harmonized$publication_interval_till)] <- df.harmonized$publication_interval_from[is.na(df.harmonized$publication_interval_till)]

message("Discard erroneous years")
df.harmonized$publication_interval_from[df.harmonized$publication_interval_from < 1400] <- NA
df.harmonized$publication_interval_till[df.harmonized$publication_interval_till < 1400] <- NA
df.harmonized$publication_interval_from[df.harmonized$publication_interval_from > 2000] <- NA
df.harmonized$publication_interval_till[df.harmonized$publication_interval_till > 2000] <- NA

  message("Compare with publication year field.")
  inds <- which(is.na(df.harmonized$publication_year))  
  # When the non-NA entries are unique, use the same year for all
  tmp <- cbind(from0 = df.harmonized$publication_year_from[inds],
               till0 = df.harmonized$publication_year_till[inds],
               from = df.harmonized$publication_interval_from[inds],
               till = df.harmonized$publication_interval_till[inds]
               )
  inds2 <- unname(which(apply(tmp, 1, function (x) {length(unique(na.omit(x)))}) == 1))

  y <- unname(apply(matrix(tmp[inds2,], ncol = ncol(tmp)), 1, function (x) {unique(na.omit(x))}))

  df.harmonized$publication_year_from[inds[inds2]] <- y
  df.harmonized$publication_year_till[inds[inds2]] <- y

  message("For conflicting years, select he largest combined span")
  tmp <- cbind(from0 = df.harmonized$publication_year_from[inds],
               till0 = df.harmonized$publication_year_till[inds],
               from = df.harmonized$publication_interval_from[inds],
               till = df.harmonized$publication_interval_till[inds]
               )

  tmp <- matrix(tmp, ncol = ncol(tmp))
  mins <- unname(apply(tmp, 1, function (x) {min(x, na.rm = TRUE)}))
  maxs <- unname(apply(tmp, 1, function (x) {max(x, na.rm = TRUE)}))

  df.harmonized$publication_year_from[inds] <- mins
  df.harmonized$publication_year_till[inds] <- maxs

# Publication interval must be within 1400-2000
df.harmonized$publication_interval_from[df.harmonized$publication_interval_from < 1400] <- NA
df.harmonized$publication_interval_from[df.harmonized$publication_interval_from > 2000] <- NA
df.harmonized$publication_interval_till[df.harmonized$publication_interval_till < 1400] <- NA
df.harmonized$publication_interval_till[df.harmonized$publication_interval_till > 2000] <- NA




  message("Enrich publication frequency")
  # publication_interval "1-3" etc. does not refer to years but number of publications
  # within the given years. Augment the data based on this logic.
  if ("publication_frequency_text" %in% names(df.preprocessed)) {
    dfo <- df.orig[df.preprocessed$original_row, ]
    idx <- grep("^[0-9]{1}-[0-9]{1,2}$", gsub("\\.$", "", dfo$publication_interval))
    if (length(idx) > 0) {
      f <- sapply(strsplit(gsub("\\.$", "", dfo$publication_interval[idx]), "-"), function (x) {diff(sort(as.numeric(x)))+1})
      fa <- f/(df.preprocessed$publication_year_till[idx] - df.preprocessed$publication_year_from[idx] + 1)
      i <- is.na(df.preprocessed$publication_frequency_annual[idx])
      df.preprocessed$publication_frequency_annual[idx[i]] <- fa[i]
      df.preprocessed$publication_frequency_text <- publication_frequency_text(df.preprocessed$publication_frequency_text, df.preprocessed$publication_frequency_annual)
    }
  }

  # LL: this uses publication_interval field from df.orig; if that is
  # processed separately and stored in its own field in
  # df.preprocessed then this can be trivially handled. Note that
  # publication_interval is confusingly mixing (at least) to different
  # types of information: (1) actual years of the publication
  # interval, and (2) the number of publications during the years
  # given in the publication_time (df.orig). These should be
  # identified and separated.

  message("Mark potential first editions")
  df$first_edition <- is_first_edition(df)


  message("Enrich publication interval")
  # Based on analysis of a random sample of entries in Fennica,
  # it seems that when interval is of the form "1908" ie a single year
  # the publication interval is in all cases 1908-1908 ie a single year.
  # Hence let us augment the interval based on this if till year is missing.
  if ("publication_interval_from" %in% names(df)) {
    nas <- which(!is.na(df$publication_interval_from) & is.na(df$publication_interval_till))
    df$publication_interval_till[nas] <- df$publication_interval_from[nas]
  }

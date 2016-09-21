# Vol number and count fields could not be extracted from physical_extent field in Fennica - remove
if ("volcount" %in% names(df.preprocessed)) {
  df.preprocessed$volcount <- NULL
}
if ("volnumber" %in% names(df.preprocessed)) {
  df.preprocessed$volnumber <- NULL
}


# Harmonize some publication place names manually
place <- df.preprocessed$publication_place

# TODO shouldnt this go to generic polish??
df.preprocessed$publication_place <- gsub("New York NY", "New York", df.preprocessed$publication_place)
df.preprocessed$publication_place <- gsub("Philadelphia PA", "Philadelphia", df.preprocessed$publication_place)

# Translations
df.preprocessed$publication_place <- gsub("Billnäs", "Karjaa", df.preprocessed$publication_place)


# Use df$original_row to match
if (!nrow(df.orig) == nrow(df.preprocessed)) {"Should match df and df.orig!"}
df.original <- df.orig[match(df.preprocessed$original_row, df.orig$original_row), ]

print("Summarize accepted and discarded entries")
for (varname in c("author", "corporate", "note_granter")) {

  # Accepted fields
  x <- as.character(df.preprocessed[[varname]])
  tmp1 <- write_xtable(x, paste(output.folder, paste(varname, "accepted.csv", sep = "_"), sep = ""))  

  # Discarded fields
  o <- as.character(df.original[[varname]])
  disc <- as.vector(na.omit(o[which(is.na(x))]))
  if (is.null(disc)) {disc <- NA}
  tmp2 <- write_xtable(disc, paste(output.folder, paste(varname, "discarded.csv", sep = "_"), sep = ""), count = TRUE)

}


print("Conversion summaries")
originals <- c(publisher = "publisher",
	       pagecount = "physical_extent",
	       publication_place = "publication_place",
	       country = "publication_place",
	       publication_year = "publication_date"
	       )
for (nam in names(originals)) {
  o <- as.character(df.original[[originals[[nam]]]])
  x <- as.character(df.preprocessed[[nam]])
  inds <- which(!is.na(x))
  tmp <- write_xtable(cbind(original = o[inds],
      	 		    polished = x[inds]),
    paste(output.folder, paste(nam, "conversion.csv", sep = "_"), sep = ""))

}

print("Accept summaries")
for (nam in names(originals)) {
  x <- as.character(df.preprocessed[[nam]])
  tmp <- write_xtable(x,
    paste(output.folder, paste(nam, "accepted.csv", sep = "_"), sep = ""))

}

print("Discard summaries")
for (nam in names(originals)) {
  o <- as.character(df.original[[originals[[nam]]]])
  x <- as.character(df.preprocessed[[nam]])
  inds <- which(is.na(x))
  tmp <- write_xtable(o[inds],
    paste(output.folder, paste(nam, "discarded.csv", sep = "_"), sep = ""),
    count = TRUE)

}

print("Custom fields")
# Self published: original raw publisher and author fields
o1 <- as.character(df.original[[originals[["publisher"]]]])
o2 <- as.character(df.original[["author_name"]])
x <- df.preprocessed[["self_published"]]
inds <- which(x) # List conversions for self-published docs
tmp <- write_xtable(cbind(o1[inds], o2[inds]),
  paste(output.folder, "self_published_rawfields.csv", sep = ""))
# Self published: summary of the final self-publisher names
tmp <- write_xtable(df.preprocessed[inds, c("publisher")], paste(output.folder, "self_published_accepted.csv", sep = ""))

# Authors with missing life years
tab <- df.preprocessed %>% filter(!is.na(author_name) & (is.na(author_birth) | is.na(author_death))) %>% select(author_name, author_birth, author_death)
tmp <- write_xtable(tab, file = paste(output.folder, "authors_missing_lifeyears.csv", sep = ""))

# Undefined language
tmp <- write_xtable(as.character(df.original$language[df.preprocessed$language.undetermined]), filename = "output.tables/language_unidentified.csv")

# No country mapping
# tmp <- write_xtable(as.character(df.preprocessed$publication_place[is.na(df.preprocessed$country)]), filename = "output.tables/publication_place_missingcountry.csv")

# TODO conversion tables can be automatized
tab <- cbind(original = df.original$physical_extent, df.preprocessed[, c("pagecount", "volnumber", "volcount")])
tmp <- write_xtable(tab, filename = "output.tables/conversions_physical_extent.csv")

tab <- cbind(original = df.original$physical_dimension, df.preprocessed[, c("gatherings.original", "width.original", "height.original", "obl.original", "gatherings", "width", "height", "obl", "area")])
tmp <- write_xtable(tab, filename = "output.tables/conversions_physical_dimension.csv")


# Use df$original_row to match
if (!nrow(df.orig) == nrow(df)) {"Should match df and df.orig!"}
df.new <- df
df.original <- df.orig[match(df.new$original_row, df.orig$original_row), ]

print("Summarize accepted and discarded entries")
for (varname in c("author", "corporate", "language")) {

  # Accepted fields
  x <- as.character(df[[varname]])
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
	       publication_place = "publication_place"
	       )
for (nam in names(originals)) {
  o <- as.character(df.original[[originals[[nam]]]])
  x <- as.character(df[[nam]])
  inds <- which(!is.na(x))
  tmp <- write_xtable(cbind(original = o[inds],
      	 		    polished = x[inds]),
    paste(output.folder, paste(nam, "conversion.csv", sep = "_"), sep = ""))

}

print("Accept summaries")
for (nam in names(originals)) {
  x <- as.character(df[[nam]])
  tmp <- write_xtable(x,
    paste(output.folder, paste(nam, "accepted.csv", sep = "_"), sep = ""))

}

print("Discard summaries")
for (nam in names(originals)) {
  o <- as.character(df.original[[originals[[nam]]]])
  x <- as.character(df[[nam]])
  inds <- which(is.na(x))
  tmp <- write_xtable(o[inds],
    paste(output.folder, paste(nam, "discarded.csv", sep = "_"), sep = ""))

}

print("Custom fields")
# Self published: original raw publisher and author fields
o1 <- as.character(df.original[[originals[["publisher"]]]])
o2 <- as.character(df.original[["author_name"]])
x <- df[["self_published"]]
inds <- which(x) # List conversions for self-published docs
tmp <- write_xtable(cbind(o1[inds], o2[inds]),
  paste(output.folder, "self_published_rawfields.csv"))
# Self published: summary of the final self-publisher names
tmp <- write_xtable(df[inds, c("publisher")], paste(output.folder, "self_published_accepted.csv", sep = ""))


require(XML)
file <- "data/fennica_1470_1800_records.xml"

# Turning XML into a dataframe
# "row names were found from a short variable and have been discarded"
library(plyr)
li <- xmlToList(file)

# Pick record IDs
record <- sapply(li, function (x) {x[[1]]})

# Remove fields with >50% missing values
# (TODO: use the tidyr package instead, for simplicity)
keep <- which(colMeans(apply(tab.orig, 2, is.na)) < 0.50)
tab <- tab.orig[, keep]

# Remove fields that do not have information (all non-NA values are unique)
keep <- which(apply(tab, 2, function (x) {length(unique(na.omit(x))) > 1}))
tab <- tab.orig[, keep]

# Write parsed data to a file
write.table(tab, file = "fennica.csv", quote = F, sep = "\t")

# ---------------------------------------

# Other potentially useful XML functions
# data <- xmlParse(file)
# df <- xmlToDataFrame(file)
# li <- xmlToList(xmlParse(file = file, asText = TRUE))
# tab <- do.call(rbind, li)


library(stringr)
tab <- polish_place(df.orig[[field]], remove.unknown = FALSE)
df.tmp <- data.frame(publication_place = tab)


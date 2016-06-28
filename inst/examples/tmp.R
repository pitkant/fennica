source("analysis.init.R")
df = df.preprocessed
df = df[, -grep("language", names(df))]
fields = c("author_name", "title", "publisher", "publication_year_from", "publication_year_till", "pagecount.orig", "parts", "gatherings.original", "publication_frequency", "dissertation", "synodal", "note_granter", "note_source", "corporate", "successor", "holder", "publication_place", "publication_place", "self_published", "volcount", "volnumber", "issue")
df = df[, fields]
write.table(df, file = "~/tmp/kungliga.csv", quote = F, row.names = F, sep = "\t")

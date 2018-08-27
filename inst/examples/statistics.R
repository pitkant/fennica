library(skimr)

d <- list()

for (cat in unique(df0$catalog)) {

  dd <- subset(df0, catalog == cat)[, c("publication_year", "publication_place", "gatherings", "title", "pagecount", "publisher", "language", "subject_topic")]

  complete <- round(100 * colMeans(!is.na(dd)), 1)
  unique <- apply(dd, 2, function (x) {length(unique(x))})

  d[[cat]] <- data.frame(Field = colnames(dd), Complete = complete, Unique = unique)

}


w <- data.frame(Field = map_fieldnames(colnames(dd)),
           Fennica = d$Fennica$Complete,
	   Kungliga = d$Kungliga$Complete) %>%
	     arrange(desc(Fennica))

write.table(w, file = "Table_HistoricalMethods_Complete.csv", sep = "\t", quote = FALSE, row.names = FALSE)

w <- data.frame(Field = map_fieldnames(colnames(dd)),
           Fennica = d$Fennica$Unique,
	   Kungliga = d$Kungliga$Unique) %>%
	     arrange(desc(Fennica))

write.table(w, file = "Table_HistoricalMethods_Unique.csv", sep = "\t", quote = FALSE, row.names = FALSE)



df <- filter(df0, catalog == "Kungliga") %>%
      filter(publication_year <= 1828)

output.folder <- "figure_201606_Krakow/"
field <- "subject_topic"
entries = unlist(strsplit(as.character(df.preprocessed[[field]]), ";"), use.names = FALSE)
s <- write_xtable(entries, file = paste(output.folder, catalog, "_subjecttopics", min(df$publication_year), "_", max(df$publication_year), ".csv", sep = ""))

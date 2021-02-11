-   [Unique accepted titles](output.tables/title_accepted.csv):
    `r length(unique(df$subject_topic))`
-   [Unique discarded titles in original
    data](output.tables/title_discarded.csv) (excluding NA cases):
    `r as.vector(countLines(paste0(output.folder, "/subject_topic_discarded.csv")) - 1)`
-   Original documents with non-NA titles:
    `r sum(!is.na(df$subject_topic))` / `r nrow(df)`
    (`r round(100*mean(!is.na(df$subject_topic)), 1)`%)
-   Original documents with missing (NA) titles
    `r sum(is.na(df$subject_topic))` / `r nrow(df)` documents
    (`r round(100*mean(is.na(df$subject_topic)), 1)`%)

Top-20 titles and their title counts.

![plot of chunk summarytitle](figure/summarytitle-22.png)

Frequency of unique titles:

![plot of chunk uniquetitles](figure/uniquetitles-22.png)

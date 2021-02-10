-   [Unique accepted titles](output.tables/title_accepted.csv):
    `r length(unique(df$uncontrolled)`
-   [Unique discarded titles in original
    data](output.tables/title_discarded.csv) (excluding NA cases):
    `r as.vector(countLines(paste0(output.folder, "/uncontrolled_discarded.csv")) - 1)`
-   Original documents with non-NA titles:
    `r sum(!is.na(df$uncontrolled))` / `r nrow(df)`
    (`r round(100*mean(!is.na(df$uncontrolled)), 1)`%)
-   Original documents with missing (NA) titles
    `r sum(is.na(df$uncontrolled` / `r nrow(df)` documents
    (`r round(100*mean(is.na(df$uncontrolled)), 1)`%)

Top-20 titles and their title counts.

![plot of chunk summarytitle](figure/summarytitle-10.png)

Frequency of unique titles:

![plot of chunk uniquetitles](figure/uniquetitles-10.png)

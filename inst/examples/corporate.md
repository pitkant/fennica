* [Unique accepted entries](output.tables/corporate_accepted.csv): `r length(unique(df$corporate))`
* [Unique discarded entries in original data](output.tables/corporate_discarded.csv) (excluding NA cases): `r as.vector(countLines(paste0(output.folder, "/corporate_discarded.csv")) - 1)` 
* Original documents with non-NA titles: `r sum(!is.na(df$corporate))` / `r nrow(df)` (`r round(100*mean(!is.na(df$corporate)), 1)`%)
* Original documents with missing (NA) titles `r sum(is.na(df$corporate))` / `r nrow(df)` documents (`r round(100*mean(is.na(df$corporate)), 1)`%)

Top-20 titles and their title counts.

![plot of chunk summarytitle](figure/rmd_corporate_summarytitle-1.png)

Frequency of unique titles:

![plot of chunk uniquetitles](figure/rmd_corporate_uniquetitles-1.png)

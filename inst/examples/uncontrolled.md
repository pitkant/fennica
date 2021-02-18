---
title: "uncontrolled"
output: md_document
---
* [Unique accepted entries](`r file_accepted`): `r length(unique(df[[field]]))`
* [Unique discarded entries in original data](`r file_discarded`) (excluding NA cases): `r as.vector(countLines(file_discarded) - 1)`
* Original documents with non-NA titles: `r sum(!is.na(df[[field]]))` / `r nrow(df)` (`r round(100*mean(!is.na(df[[field]])), 1)`%)
* Original documents with missing (NA) titles `r sum(is.na(df[[field]]))` / `r nrow(df)` documents (`r round(100*mean(is.na(df[[field]])), 1)`%)



 Top-20 titles and their title counts.
 
![plot of chunk summarytitle](figure/rmd_uncontrolled_summarytitle-1.png)

Frequency of unique titles:
  
![plot of chunk uniquetitles](figure/rmd_uncontrolled_uniquetitles-1.png)

### Publisher

-   `r length(unique(df$publisher))` [unique
    publishers](output.tables/publisher_accepted.csv)

-   `r sum(!is.na(df$publisher))` documents have unambiguous publisher
    information (`r round(100*mean(!is.na(df$publisher)), 1)`%). This
    includes documents identified as self-published; the author name is
    used as the publisher in those cases (if known).

-   `r length(which(df$self_published))` documents are identified as
    self-published
    (`r round(100*(length(which(df$self_published))/nrow(df)), 1)`%).

-   [Discarded publisher entries](output.tables/publisher_discarded.csv)

-   [Conversions from original to final
    names](output.tables/publisher_conversion_nontrivial.csv) (only
    non-trivial conversions shown)

The `r ntop` most common publishers are shown with the number of
documents.

![plot of chunk summarypublisher2](figure/summarypublisher2-1.png)

### Publication timeline for top publishers

Title count

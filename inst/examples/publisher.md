---
title: "Publisher preprocessing summary"
author: "Helsinki Computational History Group (COMHIS)"
date: "2021-01-15"
output: markdown_document
---


### Publishers

 * 379 [unique publishers](output.tables/publisher_accepted.csv)

 * 863 documents have unambiguous publisher information (87.2%). This includes documents identified as self-published; the author name is used as the publisher in those cases (if known).

 * 0 documents are identified as self-published (0%). 

 * [Discarded publisher entries](output.tables/publisher_discarded.csv)

 * [Conversions from original to final names](output.tables/publisher_conversion_nontrivial.csv) (only non-trivial conversions shown)


The 50 most common publishers are shown with the number of documents. 


```
## Error in top_plot(df, "publisher", ntop): could not find function "top_plot"
```

![plot of chunk summarypublisher2](figure/summarypublisher2-1.png)

### Publication timeline for top publishers

Title count


```
## Note: Using an external vector in selections is ambiguous.
## ℹ Use `all_of(field)` instead of `field` to silence this message.
## ℹ See <https://tidyselect.r-lib.org/reference/faq-external-vector.html>.
## This message is displayed once per session.
```



Title count versus paper consumption (top publishers):


```
## Error in compare_title_paper(df, "publisher"): could not find function "compare_title_paper"
```

```
## Error in print(res$plot): object 'res' not found
```

```
## Error in subset(res$table, publisher %in% tops): object 'res' not found
```


### Corporates

Summaries of the corporate field.

 * 76 [unique corporates](output.tables/corporate_accepted.csv)

 * 268 documents have unambiguous corporate information (27.1%). 

 * [Discarded corporate entries](output.tables/corporate_discarded.csv)

 * [Conversions from original to final names](output.tables/corporate_conversion_nontrivial.csv) (only non-trivial conversions shown)


The 50 most common corporates are shown with the number of documents. 


```
## Error in top_plot(df, "corporate", ntop): could not find function "top_plot"
```

![plot of chunk summarycorporate2](figure/summarycorporate2-1.png)




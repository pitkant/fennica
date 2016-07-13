---
title: "Pagecount preprocessing summary"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2016-07-13"
output: markdown_document
---




## Page counts

  * Page count missing and estimated for 642 documents (3.2%).

  * Page count missing and could not be estimated for 22 documents (0.1%).

  * Page count updated for 0 documents.
  
  * [Conversions from raw data to final page count estimates](output.tables/pagecount_conversion_nontrivial.csv)

<!--[Page conversions from raw data to final page count estimates with volume info](output.tables/page_conversion_table_full.csv)-->

  * [Discarded pagecount info](output.tables/pagecount_discarded.csv) For these cases the missing/discarded page count was estimated based on average page count estimates for [single volume](mean_pagecounts_singlevol.csv), [multi-volume](mean_pagecounts_multivol.csv) and [issues](mean_pagecounts_issue.csv), calculated from those documents where original pagecount info is available.

  * [Automated tests for page count conversions](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/tests_polish_physical_extent.csv)


Left: Gatherings vs. overall pagecounts (original + estimated). Right: Only the estimated page counts (shown only for the 642 documents that have missing pagecount info in the original data):

<img src="figure/pagecount-size-estimated-1.png" title="plot of chunk size-estimated" alt="plot of chunk size-estimated" width="430px" /><img src="figure/pagecount-size-estimated-2.png" title="plot of chunk size-estimated" alt="plot of chunk size-estimated" width="430px" />


<!--

## Average page counts (only works in CERL now)

Multi-volume documents average page counts are given per volume.


|doc.dimension | mean.pages.singlevol|median.pages.singlevol | n.singlevol|mean.pages.multivol |median.pages.multivol | n.multivol| mean.pages.issue|median.pages.issue | n.issue|
|:-------------|--------------------:|:----------------------|-----------:|:-------------------|:---------------------|----------:|----------------:|:------------------|-------:|
|2fo           |                  NaN|NA                     |        2223|NA                  |NA                    |         NA|              NaN|NA                 |      19|
|4long         |                  NaN|NA                     |         181|NA                  |NA                    |         NA|               NA|NA                 |      NA|
|4to           |                  NaN|NA                     |       12660|NA                  |NA                    |         NA|              NaN|NA                 |      32|
|8long         |                  NaN|NA                     |          71|NA                  |NA                    |         NA|               NA|NA                 |      NA|
|8vo           |                  NaN|NA                     |        3438|NA                  |NA                    |         NA|              NaN|NA                 |      78|
|12long        |                  NaN|NA                     |           4|NA                  |NA                    |         NA|               NA|NA                 |      NA|
|12mo          |                  NaN|NA                     |         499|NA                  |NA                    |         NA|              NaN|NA                 |      14|
|16mo          |                  NaN|NA                     |         183|NA                  |NA                    |         NA|              NaN|NA                 |       2|
|24mo          |                  NaN|NA                     |           4|NA                  |NA                    |         NA|               NA|NA                 |      NA|
|32mo          |                  NaN|NA                     |           2|NA                  |NA                    |         NA|               NA|NA                 |      NA|
|64mo          |                  NaN|NA                     |           6|NA                  |NA                    |         NA|               NA|NA                 |      NA|
|NA            |                  NaN|NA                     |         558|NA                  |NA                    |         NA|              NaN|NA                 |      23|
|1to           |                   NA|NA                     |          NA|NA                  |NA                    |         NA|              NaN|NA                 |       7|


```
## Error in eval(expr, envir, enclos): object 'value' not found
```

-->

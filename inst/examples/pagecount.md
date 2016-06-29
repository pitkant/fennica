---
title: "Pagecount preprocessing summary"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2016-06-29"
output: markdown_document
---




## Page counts

  * Page count missing and estimated for 1919 documents (9.4%).

  * Page count missing and could not be estimated for 470 documents (2.3%).

  * Page count updated for 0 documents.
  
  * [Conversions from raw data to final page count estimates](output.tables/pagecount_conversion_nontrivial.csv)

<!--[Page conversions from raw data to final page count estimates with volume info](output.tables/page_conversion_table_full.csv)-->

  * [Discarded pagecount info](output.tables/pagecount_discarded.csv) For these cases the missing/discarded page count was estimated based on average page count estimates for [single volume](mean_pagecounts_singlevol.csv), [multi-volume](mean_pagecounts_multivol.csv) and [issues](mean_pagecounts_issue.csv), calculated from those documents where original pagecount info is available.

  * [Automated tests for page count conversions](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/tests_polish_physical_extent.csv)


Left: Gatherings vs. overall pagecounts (original + estimated). Right: Only the estimated page counts (shown only for the 1919 documents that have missing pagecount info in the original data):

<img src="figure/size-size-estimated-1.png" title="plot of chunk size-estimated" alt="plot of chunk size-estimated" width="430px" /><img src="figure/size-size-estimated-2.png" title="plot of chunk size-estimated" alt="plot of chunk size-estimated" width="430px" />


<!--

## Average page counts (only works in CERL now)

Multi-volume documents average page counts are given per volume.


|doc.dimension | mean.pages.singlevol| median.pages.singlevol| n.singlevol|mean.pages.multivol |median.pages.multivol | n.multivol| mean.pages.issue| median.pages.issue| n.issue|
|:-------------|--------------------:|----------------------:|-----------:|:-------------------|:---------------------|----------:|----------------:|------------------:|-------:|
|2fo           |                 7.49|                    4.0|        2127|NA                  |NA                    |         NA|                4|                  4|      11|
|4long         |                51.76|                   23.0|         180|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|4to           |                17.52|                    8.0|       12653|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|8long         |               227.97|                  122.0|          70|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|8vo           |                72.92|                   34.0|        3251|NA                  |NA                    |         NA|               50|                 50|       1|
|12long        |               583.25|                  666.5|           4|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|12mo          |               147.87|                   96.0|         402|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|NA            |                94.55|                   63.0|        1152|NA                  |NA                    |         NA|               63|                 63|      10|

![plot of chunk size-pagecountsmulti2](figure/size-size-pagecountsmulti2-1.png)

-->

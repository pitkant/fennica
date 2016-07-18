---
title: "Pagecount preprocessing summary"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2016-07-18"
output: markdown_document
---




## Page counts

  * Page count missing and estimated for 705 documents (7%).

  * Page count missing and could not be estimated for 3 documents (0%).

  * Page count updated for 0 documents.
  
  * [Conversions from raw data to final page count estimates](output.tables/pagecount_conversion_nontrivial.csv)

<!--[Page conversions from raw data to final page count estimates with volume info](output.tables/page_conversion_table_full.csv)-->

  * [Discarded pagecount info](output.tables/pagecount_discarded.csv) For these cases the missing/discarded page count was estimated based on average page count estimates for [single volume](mean_pagecounts_singlevol.csv), [multi-volume](mean_pagecounts_multivol.csv) and [issues](mean_pagecounts_issue.csv), calculated from those documents where original pagecount info is available.

  * [Automated tests for page count conversions](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/tests_polish_physical_extent.csv)


Left: Gatherings vs. overall pagecounts (original + estimated). Right: Only the estimated page counts (for the 705 documents that have missing pagecount info in the original data):

<img src="figure/pagecount-size-estimated-1.png" title="plot of chunk size-estimated" alt="plot of chunk size-estimated" width="430px" /><img src="figure/pagecount-size-estimated-2.png" title="plot of chunk size-estimated" alt="plot of chunk size-estimated" width="430px" />


<!--

## Average page counts (only works in CERL now)

Multi-volume documents average page counts are given per volume.


|doc.dimension | mean.pages.singlevol| median.pages.singlevol| n.singlevol|mean.pages.multivol |median.pages.multivol | n.multivol| mean.pages.issue| median.pages.issue| n.issue|
|:-------------|--------------------:|----------------------:|-----------:|:-------------------|:---------------------|----------:|----------------:|------------------:|-------:|
|2fo           |                16.47|                    4.0|         477|NA                  |NA                    |         NA|                4|                  4|      48|
|4long         |                75.06|                   26.0|          32|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|4to           |                28.79|                   10.0|        2156|NA                  |NA                    |         NA|               10|                 10|      24|
|6to           |               119.50|                  144.5|           4|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|8long         |               396.67|                  377.5|          12|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|8vo           |               108.93|                   52.0|        1133|NA                  |NA                    |         NA|               52|                 52|      29|
|12mo          |               109.33|                   67.0|         475|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|16mo          |                96.26|                   50.0|         239|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|18mo          |               535.00|                  535.0|           2|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|24mo          |               299.50|                  299.5|           2|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|32mo          |               269.67|                   96.0|           9|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|64mo          |                24.00|                   24.0|           1|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|NA            |               108.48|                   62.0|        5391|NA                  |NA                    |         NA|               28|                 28|      44|

![plot of chunk size-pagecountsmulti2](figure/pagecount-size-pagecountsmulti2-1.png)

-->

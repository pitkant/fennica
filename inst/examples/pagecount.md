---
title: "Pagecount preprocessing summary"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2016-07-19"
output: markdown_document
---




## Page counts

  * Page count missing and estimated for 681 documents (6.8%).

  * Page count missing and could not be estimated for 2 documents (0%).

  * Page count updated for 0 documents.
  
  * [Conversions from raw data to final page count estimates](output.tables/pagecount_conversion_nontrivial.csv)

<!--[Page conversions from raw data to final page count estimates with volume info](output.tables/page_conversion_table_full.csv)-->

  * [Discarded pagecount info](output.tables/pagecount_discarded.csv) For these cases the missing/discarded page count was estimated based on average page count estimates for [single volume](mean_pagecounts_singlevol.csv), [multi-volume](mean_pagecounts_multivol.csv) and [issues](mean_pagecounts_issue.csv), calculated from those documents where original pagecount info is available.

  * [Automated tests for page count conversions](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/tests_polish_physical_extent.csv)


Left: Gatherings vs. overall pagecounts (original + estimated). Right: Only the estimated page counts (for the 681 documents that have missing pagecount info in the original data):

<img src="figure/pagecount-size-estimated-1.png" title="plot of chunk size-estimated" alt="plot of chunk size-estimated" width="430px" /><img src="figure/pagecount-size-estimated-2.png" title="plot of chunk size-estimated" alt="plot of chunk size-estimated" width="430px" />


<!--

## Average page counts (only works in CERL now)

Multi-volume documents average page counts are given per volume.


|doc.dimension | mean.pages.singlevol| median.pages.singlevol| n.singlevol|mean.pages.multivol |median.pages.multivol | n.multivol| mean.pages.issue| median.pages.issue| n.issue|
|:-------------|--------------------:|----------------------:|-----------:|:-------------------|:---------------------|----------:|----------------:|------------------:|-------:|
|2fo           |                10.59|                    4.0|         469|NA                  |NA                    |         NA|              4.0|                4.0|      49|
|4long         |                92.31|                   25.0|          29|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|4to           |                32.03|                    9.0|        2175|NA                  |NA                    |         NA|              9.0|                9.0|      13|
|6to           |                55.00|                   21.0|           5|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|8long         |               198.56|                  167.0|          16|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|8vo           |               104.00|                   51.5|        1064|NA                  |NA                    |         NA|             51.5|               51.5|      29|
|12long        |               121.00|                  121.0|           2|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|12mo          |               110.43|                   71.0|         436|NA                  |NA                    |         NA|             71.0|               71.0|       1|
|16long        |               159.00|                  159.0|           1|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|16mo          |                96.45|                   46.0|         233|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|18mo          |               195.00|                  195.0|           1|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|24mo          |                72.00|                   60.0|           3|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|32mo          |                45.20|                   27.0|           5|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|NA            |               107.28|                   62.0|        5504|NA                  |NA                    |         NA|             22.0|               22.0|      46|

![plot of chunk size-pagecountsmulti2](figure/pagecount-size-pagecountsmulti2-1.png)

-->

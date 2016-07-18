---
title: "Pagecount preprocessing summary"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2016-07-18"
output: markdown_document
---




## Page counts

  * Page count missing and estimated for 651 documents (6.5%).

  * Page count missing and could not be estimated for 3 documents (0%).

  * Page count updated for 0 documents.
  
  * [Conversions from raw data to final page count estimates](output.tables/pagecount_conversion_nontrivial.csv)

<!--[Page conversions from raw data to final page count estimates with volume info](output.tables/page_conversion_table_full.csv)-->

  * [Discarded pagecount info](output.tables/pagecount_discarded.csv) For these cases the missing/discarded page count was estimated based on average page count estimates for [single volume](mean_pagecounts_singlevol.csv), [multi-volume](mean_pagecounts_multivol.csv) and [issues](mean_pagecounts_issue.csv), calculated from those documents where original pagecount info is available.

  * [Automated tests for page count conversions](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/tests_polish_physical_extent.csv)


Left: Gatherings vs. overall pagecounts (original + estimated). Right: Only the estimated page counts (for the 651 documents that have missing pagecount info in the original data):

<img src="figure/pagecount-size-estimated-1.png" title="plot of chunk size-estimated" alt="plot of chunk size-estimated" width="430px" /><img src="figure/pagecount-size-estimated-2.png" title="plot of chunk size-estimated" alt="plot of chunk size-estimated" width="430px" />


<!--

## Average page counts (only works in CERL now)

Multi-volume documents average page counts are given per volume.


|doc.dimension | mean.pages.singlevol| median.pages.singlevol| n.singlevol|mean.pages.multivol |median.pages.multivol | n.multivol| mean.pages.issue| median.pages.issue| n.issue|
|:-------------|--------------------:|----------------------:|-----------:|:-------------------|:---------------------|----------:|----------------:|------------------:|-------:|
|2fo           |                12.37|                    4.0|         456|NA                  |NA                    |         NA|                4|                  4|      67|
|4long         |                62.56|                   26.0|          27|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|4to           |                32.22|                   10.0|        2160|NA                  |NA                    |         NA|               10|                 10|      16|
|6to           |               150.50|                   73.0|           8|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|8long         |               142.40|                   65.0|          15|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|8vo           |               102.94|                   52.0|        1123|NA                  |NA                    |         NA|               52|                 52|      27|
|12long        |               321.50|                  194.0|           4|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|12mo          |               119.26|                   68.5|         451|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|16long        |               159.00|                  159.0|           1|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|16mo          |               105.43|                   48.0|         237|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|18mo          |               133.00|                  133.0|           2|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|20to          |               209.00|                  209.0|           1|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|24mo          |                60.00|                   60.0|           1|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|32mo          |               266.33|                  143.0|           6|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|64mo          |                66.00|                   66.0|           2|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|NA            |               109.09|                   60.0|        5428|NA                  |NA                    |         NA|               25|                 25|      39|

![plot of chunk size-pagecountsmulti2](figure/pagecount-size-pagecountsmulti2-1.png)

-->

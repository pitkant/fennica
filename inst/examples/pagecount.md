---
title: "Pagecount preprocessing summary"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2016-06-29"
output: markdown_document
---




## Page counts

  * Page count missing and estimated for 7123 documents (9.9%).

  * Page count missing and could not be estimated for 471 documents (0.7%).

  * Page count updated for 0 documents.
  
  * [Conversions from raw data to final page count estimates](output.tables/pagecount_conversion_nontrivial.csv)

<!--[Page conversions from raw data to final page count estimates with volume info](output.tables/page_conversion_table_full.csv)-->

  * [Discarded pagecount info](output.tables/pagecount_discarded.csv) For these cases the missing/discarded page count was estimated based on average page count estimates for [single volume](mean_pagecounts_singlevol.csv), [multi-volume](mean_pagecounts_multivol.csv) and [issues](mean_pagecounts_issue.csv), calculated from those documents where original pagecount info is available.

  * [Automated tests for page count conversions](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/tests_polish_physical_extent.csv)


Left: Gatherings vs. overall pagecounts (original + estimated). Right: Only the estimated page counts (shown only for the 7123 documents that have missing pagecount info in the original data):

<img src="figure/size-size-estimated-1.png" title="plot of chunk size-estimated" alt="plot of chunk size-estimated" width="430px" /><img src="figure/size-size-estimated-2.png" title="plot of chunk size-estimated" alt="plot of chunk size-estimated" width="430px" />


<!--

## Average page counts (only works in CERL now)

Multi-volume documents average page counts are given per volume.


|doc.dimension | mean.pages.singlevol| median.pages.singlevol| n.singlevol|mean.pages.multivol |median.pages.multivol | n.multivol| mean.pages.issue| median.pages.issue| n.issue|
|:-------------|--------------------:|----------------------:|-----------:|:-------------------|:---------------------|----------:|----------------:|------------------:|-------:|
|2fo           |                 9.43|                      4|        3017|NA                  |NA                    |         NA|             4.00|                  4|     597|
|4long         |                65.92|                     26|         204|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|4to           |                29.93|                     10|       15698|NA                  |NA                    |         NA|            10.00|                 10|     421|
|8long         |               199.18|                     96|          93|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|8vo           |                95.51|                     50|        7239|NA                  |NA                    |         NA|            50.00|                 50|    1070|
|12long        |               388.14|                    244|           7|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|12mo          |               102.06|                     66|        3152|NA                  |NA                    |         NA|            66.00|                 66|      21|
|20to          |               209.00|                    209|           1|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|NA            |               109.43|                     63|       42018|NA                  |NA                    |         NA|            54.02|                 63|    1249|

![plot of chunk size-pagecountsmulti2](figure/size-size-pagecountsmulti2-1.png)

-->

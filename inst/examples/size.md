---
title: "Document dimension preprocessing summary"
author: "Leo Lahti"
date: "2016-04-02"
output: markdown_document
---


## Page counts

[Page conversions from raw data to final page count estimates](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/pagecount_conversion_nontrivial.csv)

<!--[Page conversions from raw data to final page count estimates with volume info](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/page_conversion_table_full.csv)-->

[Discarded pagecount info](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/pagecount_discarded.csv)



## Document size comparisons

[Incomplete dimension info - document surface are could not be estimated](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/physical_dimension_incomplete.csv)

[Dimension conversion table](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/conversions_physical_dimension.csv)


<!--[Discarded dimension info](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/dimensions_discarded.csv)-->

Document size (area) info in area is available for 37328 documents (52%). Estimates of document size (area) info in gatherings system are available for 71248 documents (100%). 

![plot of chunk summarysize](figure/summarysize-1.png)


Compare gatherings and area sizes as a quality check. This includes all data; the area has been estimated from the gatherings when dimension information was not available.

![plot of chunk summarysizecomp](figure/summarysizecomp-1.png)

Document dimension histogram (surface area). Few document sizes dominate publishing.

![plot of chunk summary-surfacearea](figure/summary-surfacearea-1.png)


Compare gatherings and page counts. Page count information is estimated for 0 documents and updated (changed) for 0 documents. 

![plot of chunk summarypagecomp](figure/summarypagecomp-1.png)

Compare original gatherings and original heights where both are available. The point size indicates the number of documents with the corresponding combination. The red dots indicate the estimated height that is used when only gathering information is available. It seems that in most documents, the given height is smaller than the correponding estimate.

![plot of chunk summarysizevalidation](figure/summarysizevalidation-1.png)

### Gatherings timelines

![plot of chunk papercompbyformat](figure/papercompbyformat-1.png)

## Average page counts 

Multi-volume documents average page counts are given per volume.


|doc.dimension | mean.pages.singlevol| median.pages.singlevol| n.singlevol| mean.pages.multivol| median.pages.multivol| n.multivol| mean.pages.issue| median.pages.issue| n.issue|
|:-------------|--------------------:|----------------------:|-----------:|-------------------:|---------------------:|----------:|----------------:|------------------:|-------:|
|1to           |             2.000000|                    2.0|          15|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|2long         |            80.666667|                    4.0|           4|           234.00000|                 234.0|          1|               NA|                 NA|      NA|
|2fo           |            15.822917|                    4.0|        3663|            41.97680|                  23.0|        862|        20.190985|               23.0|     843|
|4long         |            20.774193|                   11.0|         206|            36.79747|                  27.0|         79|        23.305556|               21.0|      72|
|4to           |                 -Inf|                    5.0|       15657|            45.11479|                  19.0|       4382|        19.012386|               17.0|    5167|
|6to           |            27.428571|                    4.0|          29|            60.00000|                  71.0|          3|        25.000000|               25.0|       1|
|8long         |            25.112676|                    4.0|          99|            68.69565|                  41.0|         23|        24.368421|               21.0|      19|
|8vo           |                 -Inf|                    4.0|        7774|           102.42574|                  38.0|       1360|        23.189897|               21.0|    1069|
|12long        |             3.333333|                    2.0|           7|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|12mo          |            42.514586|                    6.0|        3234|           124.41867|                  31.0|        664|        20.498305|               20.0|     590|
|16long        |                  NaN|                     NA|           1|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|16mo          |            44.762766|                   10.0|        1665|            86.16524|                  31.5|        466|        23.300562|               19.0|     356|
|18mo          |            26.500000|                    9.5|           8|            50.00000|                  50.0|          2|        16.000000|               16.0|       1|
|20to          |            25.000000|                   25.0|           1|            25.00000|                  25.0|          1|        25.000000|               25.0|       1|
|24mo          |            15.000000|                   12.0|          12|            20.75000|                  20.5|          4|        20.750000|               20.5|       4|
|32mo          |            16.156250|                    5.0|          57|            36.91667|                  31.0|         12|        26.909091|               27.0|      11|
|64mo          |             8.000000|                    8.0|           8|                  NA|                    NA|         NA|         8.666667|                8.0|       6|
|NA            |                 -Inf|                    8.0|       38808|           131.70104|                  38.0|       7777|        23.913433|               23.0|    5695|


![plot of chunk summarypagecountsmulti2](figure/summarypagecountsmulti2-1.png)


## Average document dimensions 

Here we use the original data only:

![plot of chunk summaryavedimstime](figure/summaryavedimstime-1.png)




Only cases with 2000 documents are listed here:


|gatherings.original | mean.height| median.height| mean.width| median.width|  n|
|:-------------------|-----------:|-------------:|----------:|------------:|--:|
|4to                 |    21.94737|      21.94737|         21|           21| 19|
|8vo                 |    18.83333|      18.83333|        NaN|          NaN| 12|


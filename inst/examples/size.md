---
title: "Document dimension preprocessing summary"
author: "Leo Lahti"
date: "2016-04-05"
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


Compare gatherings and page counts. Page count information is originally missing but subsequently estimated for 0 documents and updated (changed) for 0 documents. 


![plot of chunk summarypagecomp](figure/summarypagecomp-1.png)

Compare original gatherings and original heights where both are available. The point size indicates the number of documents with the corresponding combination. The red dots indicate the estimated height that is used when only gathering information is available. It seems that in most documents, the given height is smaller than the correponding estimate.

![plot of chunk summarysizevalidation](figure/summarysizevalidation-1.png)

### Gatherings timelines

![plot of chunk papercompbyformat](figure/papercompbyformat-1.png)

## Average page counts 

Multi-volume documents average page counts are given per volume.


|doc.dimension | mean.pages.singlevol| median.pages.singlevol| n.singlevol| mean.pages.multivol| median.pages.multivol| n.multivol| mean.pages.issue| median.pages.issue| n.issue|
|:-------------|--------------------:|----------------------:|-----------:|-------------------:|---------------------:|----------:|----------------:|------------------:|-------:|
|1to           |                 2.00|                    2.0|          15|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|2long         |                80.67|                    4.0|           4|              234.00|                 234.0|          1|               NA|                 NA|      NA|
|2fo           |                15.82|                    4.0|        3663|               41.98|                  23.0|        862|            20.19|               23.0|     843|
|4long         |                20.77|                   11.0|         206|               36.80|                  27.0|         79|            23.31|               21.0|      72|
|4to           |                 -Inf|                    5.0|       15657|               45.11|                  19.0|       4382|            19.01|               17.0|    5167|
|6to           |                27.43|                    4.0|          29|               60.00|                  71.0|          3|            25.00|               25.0|       1|
|8long         |                25.11|                    4.0|          99|               68.70|                  41.0|         23|            24.37|               21.0|      19|
|8vo           |                 -Inf|                    4.0|        7774|              102.43|                  38.0|       1360|            23.19|               21.0|    1069|
|12long        |                 3.33|                    2.0|           7|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|12mo          |                42.51|                    6.0|        3234|              124.42|                  31.0|        664|            20.50|               20.0|     590|
|16long        |                  NaN|                     NA|           1|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|16mo          |                44.76|                   10.0|        1665|               86.17|                  31.5|        466|            23.30|               19.0|     356|
|18mo          |                26.50|                    9.5|           8|               50.00|                  50.0|          2|            16.00|               16.0|       1|
|20to          |                25.00|                   25.0|           1|               25.00|                  25.0|          1|            25.00|               25.0|       1|
|24mo          |                15.00|                   12.0|          12|               20.75|                  20.5|          4|            20.75|               20.5|       4|
|32mo          |                16.16|                    5.0|          57|               36.92|                  31.0|         12|            26.91|               27.0|      11|
|64mo          |                 8.00|                    8.0|           8|                  NA|                    NA|         NA|             8.67|                8.0|       6|
|NA            |                 -Inf|                    8.0|       38808|              131.70|                  38.0|       7777|            23.91|               23.0|    5695|


![plot of chunk summarypagecountsmulti2](figure/summarypagecountsmulti2-1.png)


## Average document dimensions 

Here we use the original data only:

![plot of chunk summaryavedimstime](figure/summaryavedimstime-1.png)




Only cases with 2000 documents are listed here:


|gatherings.original | mean.height| median.height| mean.width| median.width|  n|
|:-------------------|-----------:|-------------:|----------:|------------:|--:|
|4to                 |    21.94737|      21.94737|         21|           21| 19|
|8vo                 |    18.83333|      18.83333|        NaN|          NaN| 12|


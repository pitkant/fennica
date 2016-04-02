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

Document size (area) info in area is available for 37687 documents (52%). Estimates of document size (area) info in gatherings system are available for 71919 documents (100%). 

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


|doc.dimension | mean.pages.singlevol| median.pages.singlevol| n.singlevol|mean.pages.multivol |median.pages.multivol | n.multivol| mean.pages.issue| median.pages.issue| n.issue|
|:-------------|--------------------:|----------------------:|-----------:|:-------------------|:---------------------|----------:|----------------:|------------------:|-------:|
|1to           |             2.000000|                    2.0|           1|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|2long         |            80.666667|                    4.0|           4|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|2fo           |            13.004065|                    4.0|        3690|NA                  |NA                    |         NA|        20.232558|               23.0|     860|
|4long         |            20.830097|                   21.0|         206|NA                  |NA                    |         NA|        22.349594|               21.0|     123|
|4to           |                 -Inf|                   10.0|       15773|NA                  |NA                    |         NA|        18.260652|               17.0|    8379|
|6to           |             9.655172|                    4.0|          29|NA                  |NA                    |         NA|        25.000000|               25.0|       1|
|8long         |            19.141414|                    4.0|          99|NA                  |NA                    |         NA|        24.368421|               21.0|      19|
|8vo           |                 -Inf|                    4.0|        7817|NA                  |NA                    |         NA|        23.245336|               21.0|    1072|
|12long        |             2.571429|                    2.0|           7|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|12mo          |            29.642618|                    5.0|        3285|NA                  |NA                    |         NA|        20.543624|               20.0|     596|
|16long        |                  NaN|                     NA|           1|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|16mo          |            29.400474|                   10.0|        1688|NA                  |NA                    |         NA|        14.325159|               10.0|    1101|
|18mo          |            18.000000|                    9.5|           8|NA                  |NA                    |         NA|        10.800000|                9.5|       5|
|20to          |            25.000000|                   25.0|           1|NA                  |NA                    |         NA|        25.000000|               25.0|       1|
|24mo          |            13.500000|                   12.0|          12|NA                  |NA                    |         NA|        15.500000|               12.0|      10|
|32mo          |            11.603448|                    6.0|          58|NA                  |NA                    |         NA|        26.909091|               27.0|      11|
|64mo          |             8.000000|                    8.0|           8|NA                  |NA                    |         NA|         8.571429|                8.0|       7|
|NA            |                 -Inf|                    8.0|       39232|NA                  |NA                    |         NA|        11.389223|                8.0|   27077|



```
## Error in eval(expr, envir, enclos): could not find function "grid.arrange"
```


## Average document dimensions 

Here we use the original data only:

![plot of chunk summaryavedimstime](figure/summaryavedimstime-1.png)




Only cases with 2000 documents are listed here:


|gatherings.original | mean.height| median.height| mean.width| median.width|    n|
|:-------------------|-----------:|-------------:|----------:|------------:|----:|
|4to                 |    21.94737|      21.94737|   21.00000|     21.00000|   19|
|8vo                 |    18.83333|      18.83333|        NaN|          NaN|   12|
|NA                  |    27.87298|      27.87298|   25.61244|     25.61244| 5030|


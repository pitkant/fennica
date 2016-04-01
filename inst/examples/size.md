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

Document size (area) info in area is available for 16471 documents (100%). Estimates of document size (area) info in gatherings system are available for 16471 documents (100%). 

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
|2long         |             4.000000|                    4.0|           2|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|2fo           |            12.074647|                    4.0|        2197|NA                  |NA                    |         NA|        21.612132|               23.0|     544|
|4long         |            19.914894|                   11.0|         141|NA                  |NA                    |         NA|        23.257576|               21.0|      66|
|4to           |            15.047684|                    6.0|       10989|NA                  |NA                    |         NA|        18.727120|               17.0|    4775|
|8long         |            18.033898|                    5.0|          59|NA                  |NA                    |         NA|        24.562500|               20.5|      16|
|8vo           |            21.460569|                    4.0|        2460|NA                  |NA                    |         NA|        24.265239|               22.0|     607|
|12long        |             3.333333|                    2.0|           3|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|12mo          |            16.753117|                    6.0|         401|NA                  |NA                    |         NA|        18.070513|               12.0|     156|
|16mo          |            13.642857|                   19.0|         168|NA                  |NA                    |         NA|        18.990476|               19.0|     105|
|24mo          |            12.000000|                   12.0|           2|NA                  |NA                    |         NA|        12.000000|               12.0|       2|
|32mo          |            17.500000|                   17.5|           2|NA                  |NA                    |         NA|        31.000000|               31.0|       1|
|64mo          |             8.666667|                    8.0|           6|NA                  |NA                    |         NA|         8.666667|                8.0|       6|
|NA            |            27.850000|                    7.0|          40|NA                  |NA                    |         NA|        19.533333|               20.0|      15|



```
## Error in eval(expr, envir, enclos): could not find function "grid.arrange"
```


## Average document dimensions 

Here we use the original data only:

![plot of chunk summaryavedimstime](figure/summaryavedimstime-1.png)




Only cases with 2000 documents are listed here:


|gatherings.original |mean.height |median.height |mean.width |median.width |  n|
|:-------------------|:-----------|:-------------|:----------|:------------|--:|


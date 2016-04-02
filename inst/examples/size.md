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


```
## Error: incorrect length (0), expecting: 71248
```

```
## Error: incorrect length (0), expecting: 71248
```

```
## Error: incorrect length (0), expecting: 71248
```



|doc.dimension |mean.pages.singlevol |median.pages.singlevol | n.singlevol| mean.pages.multivol| median.pages.multivol| n.multivol| mean.pages.issue| median.pages.issue| n.issue|
|:-------------|:--------------------|:----------------------|-----------:|-------------------:|---------------------:|----------:|----------------:|------------------:|-------:|
|1to           |NA                   |NA                     |          NA|            22.81696|                  23.0|        448|        22.716518|               23.0|     448|
|2long         |NA                   |NA                     |          NA|           234.00000|                 234.0|          1|               NA|                 NA|      NA|
|2fo           |NA                   |NA                     |          NA|            62.52644|                  22.0|        416|        17.339196|               14.0|     398|
|4long         |NA                   |NA                     |          NA|            36.79747|                  27.0|         79|        23.305556|               21.0|      72|
|4to           |NA                   |NA                     |          NA|            45.20100|                  19.0|       4403|        19.035652|               17.0|    5189|
|6to           |NA                   |NA                     |          NA|            60.00000|                  71.0|          3|        25.000000|               25.0|       1|
|8long         |NA                   |NA                     |          NA|            68.69565|                  41.0|         23|        24.368421|               21.0|      19|
|8vo           |NA                   |NA                     |          NA|           102.27273|                  38.0|       1364|        23.245336|               21.0|    1072|
|12mo          |NA                   |NA                     |          NA|           126.60030|                  31.0|        673|        20.543624|               20.0|     596|
|16mo          |NA                   |NA                     |          NA|            85.87846|                  32.0|        469|        23.082418|               19.0|     364|
|18mo          |NA                   |NA                     |          NA|            50.00000|                  50.0|          2|        16.000000|               16.0|       1|
|20to          |NA                   |NA                     |          NA|            25.00000|                  25.0|          1|        25.000000|               25.0|       1|
|24mo          |NA                   |NA                     |          NA|            20.75000|                  20.5|          4|        20.750000|               20.5|       4|
|32mo          |NA                   |NA                     |          NA|            36.91667|                  31.0|         12|        26.909091|               27.0|      11|
|NA            |NA                   |NA                     |          NA|           131.29749|                  38.0|       7859|        23.921235|               23.0|    5764|
|64mo          |NA                   |NA                     |          NA|                  NA|                    NA|         NA|         8.666667|                8.0|       6|


![plot of chunk summarypagecountsmulti2](figure/summarypagecountsmulti2-1.png)


## Average document dimensions 

Here we use the original data only:

![plot of chunk summaryavedimstime](figure/summaryavedimstime-1.png)




Only cases with 2000 documents are listed here:


|gatherings.original | mean.height| median.height| mean.width| median.width|    n|
|:-------------------|-----------:|-------------:|----------:|------------:|----:|
|4to                 |    21.94737|      21.94737|    21.0000|      21.0000|   19|
|8vo                 |    18.83333|      18.83333|        NaN|          NaN|   12|
|NA                  |    27.62515|      27.62515|    25.2099|      25.2099| 4918|


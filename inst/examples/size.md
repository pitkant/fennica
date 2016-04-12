---
title: "Document dimension preprocessing summary"
author: "Leo Lahti"
date: "2016-04-13"
output: markdown_document
---


## Page counts

[Page conversions from raw data to final page count estimates](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/pagecount_conversion_nontrivial.csv)

<!--[Page conversions from raw data to final page count estimates with volume info](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/page_conversion_table_full.csv)-->

[Discarded pagecount info](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/pagecount_discarded.csv)



## Document size comparisons

[Incomplete dimension info - document surface are could not be estimated](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/physical_dimension_incomplete.csv)

[Dimension conversion table](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/conversions_physical_dimension.csv)


These include estimates that are based on auxiliary information sheets:

  * [Document dimension abbreviations](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/document_size_abbreviations.csv)

  * [Standard sheet size estimates](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/sheetsizes.csv)

  * [Document dimension estimates](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/documentdimensions.csv) (used when information is partially missing)


  
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
|1to           |                 2.00|                    2.0|         496|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|2long         |               126.33|                  151.0|           4|              126.33|                 151.0|          3|            47.00|               47.0|       1|
|2fo           |                 -Inf|                    2.0|        3182|              115.52|                  45.0|        153|            24.03|               24.0|     104|
|4long         |                50.02|                    7.0|         206|              106.46|                  35.0|         82|            20.88|               17.0|      57|
|4to           |                 -Inf|                    8.0|       15657|               92.10|                  35.0|       2243|            22.15|               20.0|    1773|
|6to           |               142.25|                   22.5|          29|              278.50|                 278.5|          2|            22.50|               22.5|       2|
|8long         |               144.52|                   63.0|          99|              183.81|                  87.0|         57|            25.24|               21.0|      17|
|8vo           |                 -Inf|                   31.0|        7774|              128.46|                  58.0|       1818|            26.21|               28.0|     992|
|12long        |               351.33|                  359.5|           7|              351.33|                 359.5|          6|            28.00|               28.0|       1|
|12mo          |               153.24|                   54.5|        3234|              239.49|                 148.0|        400|            19.70|               17.0|     116|
|16long        |               151.00|                  151.0|           1|              151.00|                 151.0|          1|               NA|                 NA|      NA|
|16mo          |               121.05|                   55.0|        1665|              165.04|                 119.0|        113|            23.66|               17.0|      50|
|18mo          |               272.00|                  272.0|           8|              272.00|                 272.0|          2|               NA|                 NA|      NA|
|20to          |               208.00|                  208.0|           1|              208.00|                 208.0|          1|               NA|                 NA|      NA|
|24mo          |               431.67|                  497.0|          12|              431.67|                 497.0|          3|               NA|                 NA|      NA|
|32mo          |               211.00|                  225.0|          57|              299.71|                 356.0|          7|               NA|                 NA|      NA|
|64mo          |                  NaN|                     NA|           8|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|NA            |                 -Inf|                   33.0|       38808|              151.80|                 105.0|       8106|            20.94|               16.0|    3303|


![plot of chunk summarypagecountsmulti2](figure/summarypagecountsmulti2-1.png)


## Average document dimensions 

Here we use the original data only:

![plot of chunk summaryavedimstime](figure/summaryavedimstime-1.png)




Only the most frequently occurring gatherings are listed here:


|gatherings.original | mean.width| median.width| mean.height| median.height|  n|
|:-------------------|----------:|------------:|-----------:|-------------:|--:|
|4to                 |         21|           21|       21.95|         21.95| 19|
|8vo                 |        NaN|          NaN|       18.83|         18.83| 12|


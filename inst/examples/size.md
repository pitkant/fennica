---
title: "Document dimension preprocessing summary"
author: "Leo Lahti"
date: "2016-04-18"
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


Compare gatherings and page counts. Page count information is originally missing but subsequently estimated for 48409 documents and updated (changed) for 0 documents. 


![plot of chunk summarypagecomp](figure/summarypagecomp-1.png)

Compare original gatherings and original heights where both are available. The point size indicates the number of documents with the corresponding combination. The red dots indicate the estimated height that is used when only gathering information is available. It seems that in most documents, the given height is smaller than the correponding estimate.

![plot of chunk summarysizevalidation](figure/summarysizevalidation-1.png)

### Gatherings timelines

![plot of chunk papercompbyformat](figure/papercompbyformat-1.png)

## Average page counts 

Multi-volume documents average page counts are given per volume.


|doc.dimension | mean.pages.singlevol| median.pages.singlevol| n.singlevol|mean.pages.multivol |median.pages.multivol | n.multivol| mean.pages.issue| median.pages.issue| n.issue|
|:-------------|--------------------:|----------------------:|-----------:|:-------------------|:---------------------|----------:|----------------:|------------------:|-------:|
|1to           |                 2.00|                    2.0|         456|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|2long         |               106.50|                   99.0|           4|NA                  |NA                    |         NA|            47.00|               47.0|       2|
|2fo           |                 -Inf|                    2.0|        3222|NA                  |NA                    |         NA|            22.35|               18.0|     144|
|4long         |                46.33|                   11.5|         206|NA                  |NA                    |         NA|            19.76|               17.0|      80|
|4to           |                 -Inf|                   20.0|       15657|NA                  |NA                    |         NA|            20.31|               20.0|   12426|
|6to           |                39.02|                   22.5|          29|NA                  |NA                    |         NA|            22.50|               22.5|      27|
|8long         |               123.11|                   63.0|          99|NA                  |NA                    |         NA|            25.24|               21.0|      17|
|8vo           |                 -Inf|                   31.0|        7774|NA                  |NA                    |         NA|            30.20|               31.0|    5911|
|12long        |               352.50|                  359.5|           7|NA                  |NA                    |         NA|            28.00|               28.0|       1|
|12mo          |                75.00|                   56.0|        3234|NA                  |NA                    |         NA|            19.70|               17.0|     116|
|16long        |               151.00|                  151.0|           1|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|16mo          |                55.75|                   49.0|        1665|NA                  |NA                    |         NA|            48.19|               49.0|    1559|
|18mo          |               272.00|                  272.0|           8|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|20to          |               208.00|                  208.0|           1|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|24mo          |               480.67|                  497.0|          12|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|32mo          |               222.54|                  225.0|          57|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|64mo          |                  NaN|                     NA|           8|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|NA            |                 -Inf|                   32.0|       38808|NA                  |NA                    |         NA|            30.75|               32.0|   29230|


![plot of chunk summarypagecountsmulti2](figure/summarypagecountsmulti2-1.png)


## Average document dimensions 

Here we use the original data only:

![plot of chunk summaryavedimstime](figure/summaryavedimstime-1.png)




Only the most frequently occurring gatherings are listed here:


|gatherings.original | mean.width| median.width| mean.height| median.height|  n|
|:-------------------|----------:|------------:|-----------:|-------------:|--:|
|4to                 |         21|           21|       21.95|         21.95| 19|
|8vo                 |        NaN|          NaN|       18.83|         18.83| 12|


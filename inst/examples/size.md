---
title: "Document dimension preprocessing summary"
author: "Leo Lahti"
date: "2016-05-17"
output: markdown_document
---


## Page counts

[Page conversions from raw data to final page count estimates](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/pagecount_conversion_nontrivial.csv)

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


Compare gatherings and page counts. Page count information is originally missing but subsequently estimated for 4901 documents and updated (changed) for 0 documents. 


![plot of chunk summarypagecomp](figure/summarypagecomp-1.png)

Compare original gatherings and original heights where both are available. The point size indicates the number of documents with the corresponding combination. The red dots indicate the estimated height that is used when only gathering information is available. It seems that in most documents, the given height is smaller than the correponding estimate.

![plot of chunk summarysizevalidation](figure/summarysizevalidation-1.png)

### Gatherings timelines

![plot of chunk papercompbyformat](figure/papercompbyformat-1.png)

## Average page counts 

Multi-volume documents average page counts are given per volume.


|doc.dimension | mean.pages.singlevol| median.pages.singlevol| n.singlevol|mean.pages.multivol |median.pages.multivol | n.multivol| mean.pages.issue| median.pages.issue| n.issue|
|:-------------|--------------------:|----------------------:|-----------:|:-------------------|:---------------------|----------:|----------------:|------------------:|-------:|
|1to           |                 1.97|                      2|         473|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|2long         |                58.50|                     26|           4|NA                  |NA                    |         NA|            47.00|               47.0|       1|
|2fo           |                 -Inf|                      4|        3205|NA                  |NA                    |         NA|            19.28|               16.0|     396|
|4long         |                63.53|                     24|         206|NA                  |NA                    |         NA|            22.91|               18.0|     137|
|4to           |                 -Inf|                      8|       15657|NA                  |NA                    |         NA|            19.50|               16.0|    7225|
|6to           |                99.97|                     64|          29|NA                  |NA                    |         NA|            20.92|               13.0|      12|
|8long         |               210.92|                     96|          99|NA                  |NA                    |         NA|            23.93|               24.0|      15|
|8vo           |                 -Inf|                     48|        7774|NA                  |NA                    |         NA|            30.77|               32.0|    4105|
|12long        |               280.43|                    144|           7|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|12mo          |               111.79|                     66|        3234|NA                  |NA                    |         NA|            29.69|               28.0|    1289|
|16long        |               159.00|                    159|           1|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|16mo          |               106.31|                     48|        1665|NA                  |NA                    |         NA|            30.57|               32.0|     818|
|18mo          |               244.88|                    199|           8|NA                  |NA                    |         NA|            44.00|               44.0|       1|
|20to          |               209.00|                    209|           1|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|24mo          |               300.00|                    178|          12|NA                  |NA                    |         NA|            32.00|               32.0|       1|
|32mo          |               227.89|                     94|          57|NA                  |NA                    |         NA|            24.17|               23.5|      12|
|64mo          |                91.50|                    112|           8|NA                  |NA                    |         NA|            24.00|               24.0|       1|
|NA            |               107.50|                     59|       38808|NA                  |NA                    |         NA|            24.80|               23.0|   14243|


![plot of chunk summarypagecountsmulti2](figure/summarypagecountsmulti2-1.png)


## Average document dimensions 

Here we use the original data only:

![plot of chunk summaryavedimstime](figure/summaryavedimstime-1.png)




Only the most frequently occurring gatherings are listed here:


|gatherings.original | mean.width| median.width| mean.height| median.height|  n|
|:-------------------|----------:|------------:|-----------:|-------------:|--:|
|4to                 |         21|           21|       21.95|         21.95| 19|
|8vo                 |        NaN|          NaN|       18.83|         18.83| 12|


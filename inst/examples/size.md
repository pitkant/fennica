---
title: "Document dimension preprocessing summary"
author: "Leo Lahti"
date: "2016-06-21"
output: markdown_document
---


## Page counts

[Page conversions from raw data to final page count estimates](output.tables/pagecount_conversion_nontrivial.csv)

<!--[Page conversions from raw data to final page count estimates with volume info](output.tables/page_conversion_table_full.csv)-->

[Discarded pagecount info](output.tables/pagecount_discarded.csv)



## Document size comparisons

[Incomplete dimension info - document surface are could not be estimated](output.tables/physical_dimension_incomplete.csv)

[Dimension conversion table](output.tables/conversions_physical_dimension.csv)


These include estimates that are based on auxiliary information sheets:

  * [Document dimension abbreviations](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/document_size_abbreviations.csv)

  * [Standard sheet size estimates](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/sheetsizes.csv)

  * [Document dimension estimates](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/documentdimensions.csv) (used when information is partially missing)


  
<!--[Discarded dimension info](output.tables/dimensions_discarded.csv)-->

Document size (area) info in area is available for 34756 documents (51%). Estimates of document size (area) info in gatherings system are available for 67899 documents (100%). 

![plot of chunk summarysize](figure/summarysize-1.png)


Compare gatherings and area sizes as a quality check. This includes all data; the area has been estimated from the gatherings when dimension information was not available.

![plot of chunk summarysizecomp](figure/summarysizecomp-1.png)

Document dimension histogram (surface area). Few document sizes dominate publishing.

![plot of chunk summary-surfacearea](figure/summary-surfacearea-1.png)


Compare gatherings and page counts. Page count information is originally missing but subsequently estimated for 1519 documents and updated (changed) for 0 documents. 


![plot of chunk summarypagecomp](figure/summarypagecomp-1.png)

Compare original gatherings and original heights where both are available. The point size indicates the number of documents with the corresponding combination. The red dots indicate the estimated height that is used when only gathering information is available. It seems that in most documents, the given height is smaller than the correponding estimate.

![plot of chunk summarysizevalidation](figure/summarysizevalidation-1.png)

### Gatherings timelines

![plot of chunk papercompbyformat](figure/papercompbyformat-1.png)

## Average page counts 

Multi-volume documents average page counts are given per volume.


|doc.dimension | mean.pages.singlevol| median.pages.singlevol| n.singlevol|mean.pages.multivol |median.pages.multivol | n.multivol| mean.pages.issue| median.pages.issue| n.issue|
|:-------------|--------------------:|----------------------:|-----------:|:-------------------|:---------------------|----------:|----------------:|------------------:|-------:|
|1to           |                 1.97|                    2.0|         473|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|2long         |                95.25|                   99.5|           4|NA                  |NA                    |         NA|            47.00|               47.0|       1|
|2fo           |                14.25|                    4.0|        2604|NA                  |NA                    |         NA|            19.58|               18.0|     407|
|4long         |                69.50|                   28.0|         206|NA                  |NA                    |         NA|            23.41|               19.0|     148|
|4to           |                36.90|                   12.0|       15229|NA                  |NA                    |         NA|            20.39|               18.0|    7116|
|6to           |                99.97|                   64.0|          29|NA                  |NA                    |         NA|            20.92|               13.0|      12|
|8long         |               210.27|                  112.0|          99|NA                  |NA                    |         NA|            24.80|               24.0|      15|
|8vo           |               112.81|                   54.0|        6701|NA                  |NA                    |         NA|            24.57|               24.0|    2944|
|12long        |               388.14|                  244.0|           7|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|12mo          |               112.91|                   68.0|        3213|NA                  |NA                    |         NA|            29.79|               28.0|    1292|
|16long        |               159.00|                  159.0|           1|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|16mo          |               106.94|                   48.0|        1652|NA                  |NA                    |         NA|            30.31|               32.0|     804|
|18mo          |               244.88|                  199.0|           8|NA                  |NA                    |         NA|            44.00|               44.0|       1|
|20to          |               209.00|                  209.0|           1|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|24mo          |               302.00|                  184.0|          12|NA                  |NA                    |         NA|            32.00|               32.0|       1|
|32mo          |               230.29|                   94.0|          56|NA                  |NA                    |         NA|            24.17|               23.5|      12|
|64mo          |                91.50|                  112.0|           8|NA                  |NA                    |         NA|            24.00|               24.0|       1|
|NA            |               111.25|                   61.0|       37596|NA                  |NA                    |         NA|            24.85|               23.0|   14234|


![plot of chunk summarypagecountsmulti2](figure/summarypagecountsmulti2-1.png)


## Average document dimensions 

Here we use the original data only:

![plot of chunk summaryavedimstime](figure/summaryavedimstime-1.png)




Only the most frequently occurring gatherings are listed here:


|gatherings.original | mean.width| median.width| mean.height| median.height|  n|
|:-------------------|----------:|------------:|-----------:|-------------:|--:|
|4to                 |         21|           21|       21.95|         21.95| 19|
|8vo                 |        NaN|          NaN|       18.83|         18.83| 12|


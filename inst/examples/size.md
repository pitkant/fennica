---
title: "Document dimension preprocessing summary"
author: "Leo Lahti"
date: "2016-05-26"
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

Document size (area) info in area is available for 35686 documents (52%). Estimates of document size (area) info in gatherings system are available for 68027 documents (100%). 

![plot of chunk summarysize](figure/summarysize-1.png)


Compare gatherings and area sizes as a quality check. This includes all data; the area has been estimated from the gatherings when dimension information was not available.

![plot of chunk summarysizecomp](figure/summarysizecomp-1.png)

Document dimension histogram (surface area). Few document sizes dominate publishing.

![plot of chunk summary-surfacearea](figure/summary-surfacearea-1.png)


Compare gatherings and page counts. Page count information is originally missing but subsequently estimated for 4619 documents and updated (changed) for 0 documents. 


![plot of chunk summarypagecomp](figure/summarypagecomp-1.png)

Compare original gatherings and original heights where both are available. The point size indicates the number of documents with the corresponding combination. The red dots indicate the estimated height that is used when only gathering information is available. It seems that in most documents, the given height is smaller than the correponding estimate.

![plot of chunk summarysizevalidation](figure/summarysizevalidation-1.png)

### Gatherings timelines

![plot of chunk papercompbyformat](figure/papercompbyformat-1.png)

## Average page counts 

Multi-volume documents average page counts are given per volume.


|doc.dimension | mean.pages.singlevol| median.pages.singlevol| n.singlevol|mean.pages.multivol |median.pages.multivol | n.multivol| mean.pages.issue| median.pages.issue| n.issue|
|:-------------|--------------------:|----------------------:|-----------:|:-------------------|:---------------------|----------:|----------------:|------------------:|-------:|
|1to           |                 1.97|                      2|         465|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|2long         |                66.67|                     47|           3|NA                  |NA                    |         NA|            47.00|                 47|       1|
|2fo           |                12.67|                      4|        3129|NA                  |NA                    |         NA|            17.76|                 16|     739|
|4long         |                68.43|                     28|         202|NA                  |NA                    |         NA|            23.48|                 20|     147|
|4to           |                36.31|                     12|       14844|NA                  |NA                    |         NA|            20.23|                 18|    7168|
|6to           |                90.08|                     64|          25|NA                  |NA                    |         NA|            21.00|                 13|      10|
|8long         |               210.27|                    112|          99|NA                  |NA                    |         NA|            24.80|                 24|      15|
|8vo           |               102.26|                     54|        7425|NA                  |NA                    |         NA|            24.62|                 24|    3004|
|12long        |               388.14|                    244|           7|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|12mo          |               111.35|                     68|        3197|NA                  |NA                    |         NA|            29.54|                 28|    1290|
|16long        |               159.00|                    159|           1|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|16mo          |               105.54|                     48|        1655|NA                  |NA                    |         NA|            30.55|                 32|     813|
|18mo          |               161.17|                    158|           6|NA                  |NA                    |         NA|            44.00|                 44|       1|
|20to          |               209.00|                    209|           1|NA                  |NA                    |         NA|               NA|                 NA|      NA|
|24mo          |               282.09|                    178|          11|NA                  |NA                    |         NA|            32.00|                 32|       1|
|32mo          |               224.11|                     94|          55|NA                  |NA                    |         NA|            26.00|                 24|      13|
|64mo          |                91.50|                    112|           8|NA                  |NA                    |         NA|            24.00|                 24|       1|
|NA            |               109.67|                     61|       36894|NA                  |NA                    |         NA|            24.77|                 23|   13872|


![plot of chunk summarypagecountsmulti2](figure/summarypagecountsmulti2-1.png)


## Average document dimensions 

Here we use the original data only:

![plot of chunk summaryavedimstime](figure/summaryavedimstime-1.png)




Only the most frequently occurring gatherings are listed here:


|gatherings.original | mean.width| median.width| mean.height| median.height|  n|
|:-------------------|----------:|------------:|-----------:|-------------:|--:|
|4to                 |         21|           21|       21.95|         21.95| 19|
|8vo                 |        NaN|          NaN|       18.75|         18.75|  8|


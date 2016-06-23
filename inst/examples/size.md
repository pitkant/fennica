---
title: "Document dimension preprocessing summary"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2016-06-24"
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

Document size (area) info in area is available for 34757 documents (51%). Estimates of document size (area) info in gatherings system are available for 67900 documents (100%). 

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

<img src="figure/papercompbyformat-1.png" title="plot of chunk papercompbyformat" alt="plot of chunk papercompbyformat" width="430px" /><img src="figure/papercompbyformat-2.png" title="plot of chunk papercompbyformat" alt="plot of chunk papercompbyformat" width="430px" />



<!--

## Average page counts (only works in CERL now)

Multi-volume documents average page counts are given per volume.


|doc.dimension | mean.pages.singlevol| median.pages.singlevol| n.singlevol|mean.pages.multivol |median.pages.multivol | n.multivol|mean.pages.issue |median.pages.issue | n.issue|
|:-------------|--------------------:|----------------------:|-----------:|:-------------------|:---------------------|----------:|:----------------|:------------------|-------:|
|2fo           |                14.34|                      4|        2580|NA                  |NA                    |         NA|NA               |NA                 |      NA|
|4long         |                69.50|                     28|         206|NA                  |NA                    |         NA|NA               |NA                 |      NA|
|4to           |                36.68|                     10|       15230|NA                  |NA                    |         NA|NA               |NA                 |      NA|
|6to           |                99.97|                     64|          29|NA                  |NA                    |         NA|NA               |NA                 |      NA|
|8long         |               210.27|                    112|          99|NA                  |NA                    |         NA|NA               |NA                 |      NA|
|8vo           |               112.83|                     54|        6701|NA                  |NA                    |         NA|NA               |NA                 |      NA|
|12long        |               388.14|                    244|           7|NA                  |NA                    |         NA|NA               |NA                 |      NA|
|12mo          |               112.91|                     68|        3213|NA                  |NA                    |         NA|NA               |NA                 |      NA|
|16long        |               159.00|                    159|           1|NA                  |NA                    |         NA|NA               |NA                 |      NA|
|16mo          |               106.94|                     48|        1652|NA                  |NA                    |         NA|NA               |NA                 |      NA|
|18mo          |               244.88|                    199|           8|NA                  |NA                    |         NA|NA               |NA                 |      NA|
|20to          |               209.00|                    209|           1|NA                  |NA                    |         NA|NA               |NA                 |      NA|
|24mo          |               302.00|                    184|          12|NA                  |NA                    |         NA|NA               |NA                 |      NA|
|32mo          |               230.29|                     94|          56|NA                  |NA                    |         NA|NA               |NA                 |      NA|
|64mo          |                91.50|                    112|           8|NA                  |NA                    |         NA|NA               |NA                 |      NA|
|NA            |               111.27|                     61|       37596|NA                  |NA                    |         NA|NA               |NA                 |      NA|


![plot of chunk summarypagecountsmulti2](figure/summarypagecountsmulti2-1.png)


## Average document dimensions 

Here we use the original data only:

![plot of chunk summaryavedimstime](figure/summaryavedimstime-1.png)




Only the most frequently occurring gatherings are listed here:


|gatherings.original | mean.width| median.width| mean.height| median.height|  n|
|:-------------------|----------:|------------:|-----------:|-------------:|--:|
|4to                 |         21|           21|       21.95|         21.95| 19|
|8vo                 |        NaN|          NaN|       18.83|         18.83| 12|

-->

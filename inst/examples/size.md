---
title: "Document dimension preprocessing summary"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2016-06-28"
output: markdown_document
---




## Page counts

  * Page count missing and estimated for 1544 documents (2.3%).

  * Page count missing and could not be estimated for 0 documents

  * Page count updated for 0 documents.
  
  * [Conversions from raw data to final page count estimates](output.tables/pagecount_conversion_nontrivial.csv)

<!--[Page conversions from raw data to final page count estimates with volume info](output.tables/page_conversion_table_full.csv)-->

  * [Discarded pagecount info](output.tables/pagecount_discarded.csv)

  * [Automated tests for page count conversions](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/tests_polish_physical_extent.csv)


Visual summary of the estimated page counts per gatherings (shown only for the 1544 documents that have missing pagecount info in the original data):

![plot of chunk size-estimated](figure/size-size-estimated-1.png)

## Document size comparisons

  * Document gatherings info is originally available for 30550 documents (45%), and further estimated up to 30550 documents (45%). 

The gatherings is available in the original data but could not be interpreted for 0 documents (ie. 0% of the documents where it is available in principle).

  * Document height info is originally available for 4617 documents (7%), and further estimated up to 35109 documents (51%).

  * Document width info is originally available for 2019 documents (3%), and further estimated up to 35109 documents (51%).

  * Document size (area) info is available for 35109 documents (51%).

  * [List of entries where document surface could not be estimated](output.tables/physical_dimension_incomplete.csv)

  * [Dimension conversions from raw data to final estimates](output.tables/conversions_physical_dimension.csv)

  * [Automated tests for dimension conversions](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/tests_dimension_polish.csv)

The estimates are based on the following auxiliary information sheets:

  * [Document dimension abbreviations](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/document_size_abbreviations.csv)

  * [Standard sheet size estimates](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/sheetsizes.csv)

  * [Document dimension estimates](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/documentdimensions.csv) (used when information is partially missing)


  
<!--[Discarded dimension info](output.tables/dimensions_discarded.csv)-->

Estimates of document size (area) info in gatherings system are available for 68561 documents (100%). Also compare gatherings and area sizes as a quality check. This includes all data; the area has been estimated from the gatherings when dimension information was not available.

![plot of chunk size-summary](figure/size-size-summary-1.png)![plot of chunk size-summary](figure/size-size-summary-2.png)


Document dimension histogram (surface area). Few document sizes dominate publishing.

![plot of chunk size-surfacearea](figure/size-size-surfacearea-1.png)


Gatherings versus page counts, and original gatherings versus original heights where both are available. The point size indicates the number of documents with the corresponding combination. The red dots indicate the estimated height that is used when only gathering information is available. It seems that in most documents, the given height is smaller than the correponding estimate.


![plot of chunk size-pagecomp](figure/size-size-pagecomp-1.png)![plot of chunk size-pagecomp](figure/size-size-pagecomp-2.png)

### Gatherings timelines

<img src="figure/size-size-compbyformat-1.png" title="plot of chunk size-compbyformat" alt="plot of chunk size-compbyformat" width="430px" /><img src="figure/size-size-compbyformat-2.png" title="plot of chunk size-compbyformat" alt="plot of chunk size-compbyformat" width="430px" />



<!--

## Average page counts (only works in CERL now)

Multi-volume documents average page counts are given per volume.


|doc.dimension | mean.pages.singlevol| median.pages.singlevol| n.singlevol|mean.pages.multivol |median.pages.multivol | n.multivol|mean.pages.issue |median.pages.issue | n.issue|
|:-------------|--------------------:|----------------------:|-----------:|:-------------------|:---------------------|----------:|:----------------|:------------------|-------:|
|2fo           |                14.32|                      4|        2593|NA                  |NA                    |         NA|NA               |NA                 |      NA|
|4long         |                69.50|                     28|         206|NA                  |NA                    |         NA|NA               |NA                 |      NA|
|4to           |                36.61|                     10|       15345|NA                  |NA                    |         NA|NA               |NA                 |      NA|
|6to           |                99.97|                     64|          29|NA                  |NA                    |         NA|NA               |NA                 |      NA|
|8long         |               210.27|                    112|          99|NA                  |NA                    |         NA|NA               |NA                 |      NA|
|8vo           |               113.32|                     54|        6744|NA                  |NA                    |         NA|NA               |NA                 |      NA|
|12long        |               388.14|                    244|           7|NA                  |NA                    |         NA|NA               |NA                 |      NA|
|12mo          |               111.79|                     68|        3264|NA                  |NA                    |         NA|NA               |NA                 |      NA|
|16long        |               159.00|                    159|           1|NA                  |NA                    |         NA|NA               |NA                 |      NA|
|16mo          |               105.94|                     48|        1675|NA                  |NA                    |         NA|NA               |NA                 |      NA|
|18mo          |               244.88|                    199|           8|NA                  |NA                    |         NA|NA               |NA                 |      NA|
|20to          |               209.00|                    209|           1|NA                  |NA                    |         NA|NA               |NA                 |      NA|
|24mo          |               302.00|                    184|          12|NA                  |NA                    |         NA|NA               |NA                 |      NA|
|32mo          |               227.09|                     94|          57|NA                  |NA                    |         NA|NA               |NA                 |      NA|
|64mo          |                91.50|                    112|           8|NA                  |NA                    |         NA|NA               |NA                 |      NA|
|NA            |               110.53|                     61|       38011|NA                  |NA                    |         NA|NA               |NA                 |      NA|


![plot of chunk size-pagecountsmulti2](figure/size-size-pagecountsmulti2-1.png)


## Average document dimensions 

Here we use the original data only:

![plot of chunk size-avedimstime](figure/size-size-avedimstime-1.png)




Only the most frequently occurring gatherings are listed here:


|gatherings.original | mean.width| median.width| mean.height| median.height|  n|
|:-------------------|----------:|------------:|-----------:|-------------:|--:|
|4to                 |         21|           21|       21.95|         21.95| 19|
|8vo                 |        NaN|          NaN|       18.83|         18.83| 12|

-->

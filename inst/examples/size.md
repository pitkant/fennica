---
title: "Document dimension preprocessing summary"
author: "Lahti, Marjanen, Roivainen, Tolonen"
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

Document size (area) info in area is available for 20019 documents (99%). Estimates of document size (area) info in gatherings system are available for 20305 documents (100%). 

![plot of chunk summarysize](figure/summarysize-1.png)


Compare gatherings and area sizes as a quality check. This includes all data; the area has been estimated from the gatherings when dimension information was not available.

![plot of chunk summarysizecomp](figure/summarysizecomp-1.png)

Document dimension histogram (surface area). Few document sizes dominate publishing.

![plot of chunk summary-surfacearea](figure/summary-surfacearea-1.png)


Compare gatherings and page counts. Page count information is originally missing but subsequently estimated for 644 documents and updated (changed) for 0 documents. 


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
|2fo           |                 8.62|                    4.0|        2212|NA                  |NA                    |         NA|NA               |NA                 |      NA|
|4long         |                55.27|                   26.0|         181|NA                  |NA                    |         NA|NA               |NA                 |      NA|
|4to           |                23.24|                    8.0|       12660|NA                  |NA                    |         NA|NA               |NA                 |      NA|
|8long         |               225.51|                  122.0|          71|NA                  |NA                    |         NA|NA               |NA                 |      NA|
|8vo           |                83.02|                   34.0|        3436|NA                  |NA                    |         NA|NA               |NA                 |      NA|
|12long        |               583.25|                  666.5|           4|NA                  |NA                    |         NA|NA               |NA                 |      NA|
|12mo          |               200.53|                  100.0|         498|NA                  |NA                    |         NA|NA               |NA                 |      NA|
|16mo          |                47.16|                   48.0|         183|NA                  |NA                    |         NA|NA               |NA                 |      NA|
|24mo          |               453.50|                  340.5|           4|NA                  |NA                    |         NA|NA               |NA                 |      NA|
|32mo          |               254.50|                  254.5|           2|NA                  |NA                    |         NA|NA               |NA                 |      NA|
|64mo          |               117.33|                  128.0|           6|NA                  |NA                    |         NA|NA               |NA                 |      NA|
|NA            |                48.36|                    5.5|         548|NA                  |NA                    |         NA|NA               |NA                 |      NA|


![plot of chunk summarypagecountsmulti2](figure/summarypagecountsmulti2-1.png)


## Average document dimensions 

Here we use the original data only:

![plot of chunk summaryavedimstime](figure/summaryavedimstime-1.png)




Only the most frequently occurring gatherings are listed here:


|gatherings.original |mean.width |median.width |mean.height |median.height |  n|
|:-------------------|:----------|:------------|:-----------|:-------------|--:|

-->

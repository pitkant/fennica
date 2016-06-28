---
title: "Document dimension preprocessing summary"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2016-06-28"
output: markdown_document
---



## Document size comparisons

  * Some dimension info is provided in the original raw data for altogether 35328 documents (51.5%) but could not be interpreted for 4778 documents (ie. dimension info was successfully estimated for 86.5 % of the documents where this field was not empty).

  * Document size (area) info was obtained in the final preprocessed data for altogether 35109 documents (51%). For the remaining documents, critical dimension information was not available or could not be interpreted: [List of entries where document surface could not be estimated](output.tables/physical_dimension_incomplete.csv)

  * Document gatherings info is originally available for 30550 documents (45%), and further estimated up to 30550 documents (45%) in the final preprocessed data.

  * Document height info is originally available for 4617 documents (7%), and further estimated up to 35109 documents (51%) in the final preprocessed data.

  * Document width info is originally available for 2019 documents (3%), and further estimated up to 35109 documents (51%) in the final preprocessed data.


These tables can be used to verify the accuracy of the conversions from the raw data to final estimates:

  * [Dimension conversions from raw data to final estimates](output.tables/conversions_physical_dimension.csv)

  * [Automated tests for dimension conversions](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/tests_dimension_polish.csv)

The estimated dimensions are based on the following auxiliary information sheets:

  * [Document dimension abbreviations](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/document_size_abbreviations.csv)

  * [Standard sheet size estimates](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/sheetsizes.csv)

  * [Document dimension estimates](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/documentdimensions.csv) (used when information is partially missing)


  
<!--[Discarded dimension info](output.tables/dimensions_discarded.csv)-->

Right: original gatherings versus original heights where both are available. The point size indicates the number of documents with the corresponding combination. The red dots indicate the estimated height that is used when only gathering information is available. It seems that in most documents, the given height is smaller than the correponding estimate. Left: Estimates of document size (area) info in gatherings system are available for 68561 documents (100%). Also compare gatherings and area sizes as a quality check. This includes all data; the area has been estimated from the gatherings when dimension information was not available. 

<img src="figure/dimension-summary-1.png" title="plot of chunk summary" alt="plot of chunk summary" width="430px" /><img src="figure/dimension-summary-2.png" title="plot of chunk summary" alt="plot of chunk summary" width="430px" />


Left: Document dimension histogram (surface area). Few document sizes dominate publishing. Right: title count per gatherings.

<img src="figure/dimension-sizes-1.png" title="plot of chunk sizes" alt="plot of chunk sizes" width="430px" /><img src="figure/dimension-sizes-2.png" title="plot of chunk sizes" alt="plot of chunk sizes" width="430px" />

### Gatherings timelines




Gatherings with less than 15 documents in every decade are excluded:


<img src="figure/dimension-compbyformat-1.png" title="plot of chunk compbyformat" alt="plot of chunk compbyformat" width="430px" /><img src="figure/dimension-compbyformat-2.png" title="plot of chunk compbyformat" alt="plot of chunk compbyformat" width="430px" />



<!--


## Average document dimensions 

Here we use the original data only:

![plot of chunk avedimstime](figure/dimension-avedimstime-1.png)




Only the most frequently occurring gatherings are listed here:


|gatherings.original | mean.width| median.width| mean.height| median.height|  n|
|:-------------------|----------:|------------:|-----------:|-------------:|--:|
|4to                 |         21|           21|       21.95|         21.95| 19|
|8vo                 |        NaN|          NaN|       18.83|         18.83| 12|

-->

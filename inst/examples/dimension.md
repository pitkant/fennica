---
title: "Document dimension preprocessing summary"
author: ""
date: "2016-09-13"
output: markdown_document
---



## Document size comparisons

  * Some dimension info is provided in the original raw data for altogether 37941 documents (52.8%) but could not be interpreted for 5254 documents (ie. dimension info was successfully estimated for 86.2 % of the documents where this field was not empty).

  * Document size (area) info was obtained in the final preprocessed data for altogether 37687 documents (52%). For the remaining documents, critical dimension information was not available or could not be interpreted: [List of entries where document surface could not be estimated](output.tables/physical_dimension_incomplete.csv)

  * Document gatherings info is originally available for 32687 documents (45%), and further estimated up to 32687 documents (45%) in the final preprocessed data.

  * Document height info is originally available for 5058 documents (7%), and further estimated up to 37687 documents (52%) in the final preprocessed data.

  * Document width info is originally available for 2021 documents (3%), and further estimated up to 37687 documents (52%) in the final preprocessed data.


These tables can be used to verify the accuracy of the conversions from the raw data to final estimates:

  * [Dimension conversions from raw data to final estimates](output.tables/conversions_physical_dimension.csv)

  * [Automated tests for dimension conversions](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/tests_dimension_polish.csv)



The estimated dimensions are based on the following auxiliary information sheets:

  * [Document dimension abbreviations](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/document_size_abbreviations.csv)

  * [Standard sheet size estimates](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/sheetsizes.csv)

  * [Document dimension estimates](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/documentdimensions.csv) (used when information is partially missing)


  
<!--[Discarded dimension info](output.tables/dimensions_discarded.csv)-->

Left: final gatherings vs. final document dimension (width x height). Right: original gatherings versus original heights where both are available. The point size indicates the number of documents for each case. The red dots indicate the estimated height that is used when only gathering information is available. 


<img src="figure/dimension-summary-1.png" title="plot of chunk summary" alt="plot of chunk summary" width="280px" /><img src="figure/dimension-summary-2.png" title="plot of chunk summary" alt="plot of chunk summary" width="280px" /><img src="figure/dimension-summary-3.png" title="plot of chunk summary" alt="plot of chunk summary" width="280px" />


Left: Document dimension histogram (surface area);
Middle: Paper consumption histogram;
Right: title count per gatherings.

<img src="figure/dimension-sizes-1.png" title="plot of chunk sizes" alt="plot of chunk sizes" width="280px" /><img src="figure/dimension-sizes-2.png" title="plot of chunk sizes" alt="plot of chunk sizes" width="280px" /><img src="figure/dimension-sizes-3.png" title="plot of chunk sizes" alt="plot of chunk sizes" width="280px" />

### Gatherings timelines




Popularity of different document sizes over time. Left: absolute title counts. Right: relative title counts. Gatherings with less than 15 documents at every decade are excluded:


<img src="figure/dimension-compbyformat-1.png" title="plot of chunk compbyformat" alt="plot of chunk compbyformat" width="430px" /><img src="figure/dimension-compbyformat-2.png" title="plot of chunk compbyformat" alt="plot of chunk compbyformat" width="430px" />


### Title count versus paper consumption



![plot of chunk title_vs_paper](figure/dimension-title_vs_paper-1.png)

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

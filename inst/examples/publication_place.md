---
title: "Publication place preprocessing summary"
author: "Helsinki Computational History Group (COMHIS)"
date: "2021-02-17"
output: markdown_document
---

### Publication places

 * 433 [unique publication places](output.tables/publication_place_accepted.csv); available for 68808 documents (96%).
 * 0 [ambiguous publication places](output.tables/publication_place_ambiguous.csv); some of these can be possibly resolved by checking that the the [synonyme list](https://github.com/COMHIS/fennica/blob/master/inst/extdata/PublicationPlaceSynonymes.csv) does not contain multiple versions of the final name (case sensitive). 
 * 0 [unknown place names](output.tables/publication_place_todo.csv) These terms do not map to any known place on the [synonyme list](https://github.com/COMHIS/fennica/blob/master/inst/extdata/PublicationPlaceSynonymes.csv); either because they require further cleaning or have not yet been encountered in the analyses. Terms that are clearly not place names can be added to [stopwords](inst/extdata/stopwords_for_place.csv); borderline cases that are not accepted as place names can be added as NA on the [synonyme list](https://github.com/COMHIS/fennica/blob/master/inst/extdata/PublicationPlaceSynonymes.csv).
 * 33 [discarded place names](output.tables/publication_place_discarded.csv) These terms are potential place names but with a closer check have been explicitly rejected on the [synonyme list](https://github.com/COMHIS/fennica/blob/master/inst/extdata/PublicationPlaceSynonymes.csv)
 * [Conversions from the original to the accepted place names](output.tables/publication_place_conversion_nontrivial.csv) 
 * [Unit tests for place names](https://github.com/COMHIS/fennica/blob/master/inst/extdata/tests_place.csv) are automatically checked during package build

Top-20 publication places are shown together with the number of documents.

<img src="figure/summaryplace-1.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" /><img src="figure/summaryplace-2.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" />


### Publication countries	

 * 35 [unique publication countries](output.tables/publication_country_accepted.csv); available for 68806 documents (96%).
 * 2 [places with unknown publication country](output.tables/publication_place_missingcountry.csv) (0.5% of the unique places; can be added to [country mappings](https://github.com/COMHIS/fennica/blob/master/inst/extdata/reg2country.csv))
 * 6 [potentially ambiguous region-country mappings](output.tables/publication_country_ambiguous.csv) (these may occur in the data in various synonymes and the country is not always clear when multiple countries have a similar place name; the default country is listed first). NOTE: possible improvements should not be done in this output summary but instead in the [country mapping file](https://github.com/COMHIS/fennica/blob/master/inst/extdata/reg2country.csv).


```
## Warning: `data_frame()` is deprecated as of tibble 1.1.0.
## Please use `tibble()` instead.
## This warning is displayed once every 8 hours.
## Call `lifecycle::last_warnings()` to see where this warning was generated.
```



|Country | Documents (n)| Fraction (%)|
|:-------|-------------:|------------:|
|Finland |         59639|         82.9|
|Sweden  |          5106|          7.1|
|Russia  |          1227|          1.7|
|USA     |           869|          1.2|
|Germany |           775|          1.1|
|Estonia |           287|          0.4|


### Geocoordinates

 * 93.7% of the documents were matched to geographic coordinates (based on COMHIS geomapping process).
 * 54 unique places (12.5% of all unique places and 6.34% of all documents) are missing geocoordinates. See [list of places missing geocoordinate information](output.tables/absentgeocoordinates.csv).
 


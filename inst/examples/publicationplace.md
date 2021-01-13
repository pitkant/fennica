---
title: "Publication place preprocessing summary"
author: "Helsinki Computational History Group (COMHIS)"
date: "2021-01-13"
output: markdown_document
---

### Publication places

 * 52 [unique publication places](output.tables/publication_place_accepted.csv); available for 949 documents (95%).
 * 0 [ambiguous publication places](output.tables/publication_place_ambiguous.csv); some of these can be possibly resolved by checking that the the [synonyme list](https://github.com/COMHIS/fennica/blob/master/inst/extdata/PublicationPlaceSynonymes.csv) does not contain multiple versions of the final name (case sensitive). 
 * 0 [unknown place names](output.tables/publication_place_todo.csv) These terms do not map to any known place on the [synonyme list](https://github.com/COMHIS/fennica/blob/master/inst/extdata/PublicationPlaceSynonymes.csv); either because they require further cleaning or have not yet been encountered in the analyses. Terms that are clearly not place names can be added to [stopwords](inst/extdata/stopwords_for_place.csv); borderline cases that are not accepted as place names can be added as NA on the [synonyme list](https://github.com/COMHIS/fennica/blob/master/inst/extdata/PublicationPlaceSynonymes.csv).
 * 6 [discarded place names](output.tables/publication_place_discarded.csv) These terms are potential place names but with a closer check have been explicitly rejected on the [synonyme list](https://github.com/COMHIS/fennica/blob/master/inst/extdata/PublicationPlaceSynonymes.csv)
 * [Conversions from the original to the accepted place names](output.tables/publication_place_conversion_nontrivial.csv) 
 * [Unit tests for place names](https://github.com/COMHIS/fennica/blob/master/inst/extdata/tests_place.csv) are automatically checked during package build

Top-50 publication places are shown together with the number of documents.


```
## Error in top_plot(df, "publication_place", ntop): could not find function "top_plot"
```

```
## Error in top_plot(df, "publication_country", ntop): could not find function "top_plot"
```

<img src="figure/summaryplace-1.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" /><img src="figure/summaryplace-2.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" />


### Publication countries	

 * 12 [unique publication countries](output.tables/publication_country_accepted.csv); available for 948 documents (95%).
 * 1 [places with unknown publication country](output.tables/publication_place_missingcountry.csv) (2% of the unique places; can be added to [country mappings](https://github.com/COMHIS/fennica/blob/master/inst/extdata/reg2country.csv))
 * 6 [potentially ambiguous region-country mappings](output.tables/publication_country_ambiguous.csv) (these may occur in the data in various synonymes and the country is not always clear when multiple countries have a similar place name; the default country is listed first). NOTE: possible improvements should not be done in this output summary but instead in the [country mapping file](https://github.com/COMHIS/fennica/blob/master/inst/extdata/reg2country.csv).


```
## Warning: `data_frame()` is deprecated as of tibble 1.1.0.
## Please use `tibble()` instead.
## This warning is displayed once every 8 hours.
## Call `lifecycle::last_warnings()` to see where this warning was generated.
```



|Country | Documents (n)| Fraction (%)|
|:-------|-------------:|------------:|
|Finland |           828|         83.3|
|Sweden  |            67|          6.7|
|Russia  |            20|          2.0|
|Germany |            15|          1.5|
|USA     |             4|          0.4|
|England |             4|          0.4|


### Geocoordinates

 * 95.4% of the documents were matched to geographic coordinates (based on [Geonames](http://download.geonames.org/export/dump/)).
 * 2 unique places (3.8% of all unique places and 4.63% of all documents) are missing geocoordinates. See [list of places missing geocoordinate information](output.tables/absentgeocoordinates.csv).
 

### Publication geography

 * 0 [unique countries](output.tables/publication_geography_country_accepted.csv) on geographical region considered in the publication; available for 0 documents (NaN%).
 * 0 [unique places](output.tables/publication_geography_place_accepted.csv) on geographical region considered in the publication; available for 0 documents (NaN%).




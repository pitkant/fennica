---
title: "Publication place preprocessing summary"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2016-06-21"
output: markdown_document
---

### Publication places

 * 103 [publication places](output.tables/publication_place_accepted.csv)
 * 20 [publication countries](output.tables/country_accepted.csv) 
 * Publication place is identified for 19116 documents (94%). 
 * Publication country is identified for 19113 documents (94%).
 * 99.9% of the documents could be matched to geographic coordinates (based on the [Geonames](http://download.geonames.org/export/dump/) database). See the [list of places missing geocoordinate information](output.tables/absentgeocoordinates.csv). Altogether ``0.14``% of the documents have missing geocoordinates.
 * [Places with unknown publication country](output.tables/publication_place_missingcountry.csv) (can be added to [country mappings](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/reg2country.csv))
 * [Ambiguous publication places](output.tables/publication_place_ambiguous.csv)
 * [Potentially ambiguous region-country mappings](output.tables/publication_country_ambiguous.csv) (these may occur in the data in various synonymes and the country is not always clear when multiple countries have a similar place name; the default country is listed first)
 * [Discarded publication places](output.tables/publication_place_discarded.csv) (add to [synonyme list](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/PublicationPlaceSynonymes.csv) to accept; or add to [publication place stopwords](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/stopwords_for_place.csv) to completely discard the term)
 * [Conversions from the original to the accepted place names](output.tables/publication_place_conversion_nontrivial.csv)

Top-20 publication places are shown together with the number of documents.

<img src="figure/summaryplace-1.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" /><img src="figure/summaryplace-2.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" />


### Top publication countries


```
## Error in Math.factor(structure(c(14L, 13L, 12L, 11L, 10L, 9L, 8L, 7L, : 'round' not meaningful for factors
```



|Country     |Documents (n) |Fraction (%)      |
|:-----------|:-------------|:-----------------|
|Finland     |14341         |70.6279241566117  |
|Sweden      |3809          |18.7589263728146  |
|Estonia     |256           |1.26077320856932  |
|Germany     |252           |1.24107362718542  |
|Russia      |228           |1.12287613888205  |
|Netherlands |68            |0.334892883526225 |


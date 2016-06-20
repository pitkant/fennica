---
title: "Publication place preprocessing summary"
author: "Leo Lahti"
date: "2016-06-21"
output: markdown_document
---

### Publication places

 * 414 [publication places](output.tables/publication_place_accepted.csv)
 * 33 [publication countries](output.tables/country_accepted.csv) 
 * Publication place is identified for 65181 documents (96%). 
 * Publication country is identified for 65177 documents (96%).
 * 99% of the documents could be matched to geographic coordinates (based on the [Geonames](http://download.geonames.org/export/dump/) database). See the [list of places missing geocoordinate information](output.tables/absentgeocoordinates.csv). Altogether ``1.04``% of the documents have missing geocoordinates.
 * [Places with unknown publication country](output.tables/publication_place_missingcountry.csv) (can be added to [country mappings](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/reg2country.csv))
 * [Ambiguous publication places](output.tables/publication_place_ambiguous.csv)
 * [Potentially ambiguous region-country mappings](output.tables/publication_country_ambiguous.csv) (these may occur in the data in various synonymes and the country is not always clear when multiple countries have a similar place name; the default country is listed first)
 * [Discarded publication places](output.tables/publication_place_discarded.csv) (add to [synonyme list](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/PublicationPlaceSynonymes.csv) to accept; or add to [publication place stopwords](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/stopwords_for_place.csv) to completely discard the term)
 * [Conversions from the original to the accepted place names](output.tables/publication_place_conversion_nontrivial.csv)

Top-20 publication places are shown together with the number of documents.

<img src="figure/summaryplace-1.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" /><img src="figure/summaryplace-2.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" />


### Top publication countries


```
## Error in Math.factor(structure(c(23L, 22L, 21L, 20L, 19L, 18L, 17L, 16L, : 'round' not meaningful for factors
```



|Country |Documents (n) |Fraction (%)      |
|:-------|:-------------|:-----------------|
|Finland |55193         |81.2869114419947  |
|Sweden  |5049          |7.43604471347148  |
|Russia  |2280          |3.35792868819865  |
|Germany |762           |1.12225511421376  |
|USA     |750           |1.1045818053285   |
|Estonia |283           |0.416795534543955 |


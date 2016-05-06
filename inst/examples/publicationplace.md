---
title: "Publication place preprocessing summary"
author: "Leo Lahti"
date: "2016-05-06"
output: markdown_document
---

### Publication places

 * 433 [unique accepted publication places](output.tables/publication_place_accepted.csv)
 * Publication place is identified for 68321 documents (96%). 
 * Publication country is identified for 68320 documents (96%). [List of places with unknown publication country](output.tables/publication_place_missingcountry.csv) (add to [country mappings](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/reg2country.csv))
 * We have 33 [unique accepted publication countries](output.tables/country_accepted.csv)
 * 98.9% of the documents could be matched to geographic coordinates (based on the [Geonames](http://download.geonames.org/export/dump/) database). See the [list of places missing geocoordinate information](output.tables/absentgeocoordinates.csv). Altogether ``1.09``% of the documents have missing geocoordinates.
 * [Non-trivial conversions from the original to final place names](output.tables/publication_place_conversion_nontrivial.csv)
 * [Ambiguous publication places](output.tables/publication_place_ambiguous.csv)
 * [Potentially ambiguous region-country mappings](output.tables/publication_country_ambiguous.csv) (the default country is listed first)
 * [Discarded publication places](output.tables/publication_place_discarded.csv) (add to [synonyme list](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/PublicationPlaceSynonymes.csv) to accept; or add to [publication place stopwords](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/stopwords_for_place.csv) to completely discard the term)

Top-20 publication places are shown together with the number of documents.

<img src="figure/summaryplace-1.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" /><img src="figure/summaryplace-2.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" />



|name    |     n|   fraction|
|:-------|-----:|----------:|
|Finland | 58074| 81.5096564|
|Sweden  |  5072|  7.1187963|
|Russia  |  2435|  3.4176398|
|USA     |   810|  1.1368740|
|Germany |   767|  1.0765214|
|Estonia |   285|  0.4000112|

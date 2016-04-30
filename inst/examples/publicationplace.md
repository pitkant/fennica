---
title: "Publication place preprocessing summary"
author: "Leo Lahti"
<<<<<<< HEAD
date: "2016-05-01"
=======
date: "2016-04-29"
>>>>>>> 73e33fcae99862a21f98acc669db1c21248a82e4
output: markdown_document
---

### Publication places

[Accepted publication countries](output.tables/country_accepted.csv)

[Publication country not identified](output.tables/publication_place_missingcountry.csv) (add to [country mappings](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/reg2country.csv))

[Accepted publication places](output.tables/publication_place_accepted.csv)

[Ambiguous publication places](output.tables/publication_place_ambiguous.csv)

[Ambiguous region-country mappings](output.tables/publication_country_ambiguous.csv)

[Discarded publication places](output.tables/publication_place_discarded.csv) (add to [synonyme list](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/PublicationPlaceSynonymes.csv) to accept; or add to [publication place stopwords](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/stopwords_for_place.csv) to completely discard the term)

[Publication place conversions](output.tables/publication_place_conversion_nontrivial.csv)

<<<<<<< HEAD
[Places missing geocoordinate information](output.tables/absentgeocoordinates.csv). Altogether ``1.12``% of the documents have missing geocoordinates.



Top-20 publication places are shown together with the number of documents. This info is available for 68320 documents (96%). There are 441 unique publication places. Overall 98.9% of the places could be matched to geographic coordinates (from the [Geonames](http://download.geonames.org/export/dump/) database).
=======
[Places missing geocoordinate information](output.tables/absentgeocoordinates.csv). Altogether ``1.08``% of the documents have missing geocoordinates.



Top-20 publication places are shown together with the number of documents. This info is available for 68319 documents (96%). There are 432 unique publication places. Overall 98.9% of the places could be matched to geographic coordinates (from the [Geonames](http://download.geonames.org/export/dump/) database).
>>>>>>> 73e33fcae99862a21f98acc669db1c21248a82e4


<img src="figure/summaryplace-1.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" /><img src="figure/summaryplace-2.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" />



|name    |     n|   fraction|
|:-------|-----:|----------:|
<<<<<<< HEAD
|Finland | 58072| 81.5068493|
|Sweden  |  5070|  7.1159892|
|Russia  |  2433|  3.4148327|
|USA     |   808|  1.1340669|
|Germany |   752|  1.0554682|
=======
|Finland | 58073| 81.5082529|
|Sweden  |  5072|  7.1187963|
|Russia  |  2434|  3.4162362|
|USA     |   810|  1.1368740|
|Germany |   767|  1.0765214|
>>>>>>> 73e33fcae99862a21f98acc669db1c21248a82e4
|Estonia |   285|  0.4000112|

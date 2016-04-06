---
title: "Publication place preprocessing summary"
author: "Leo Lahti"
date: "2016-04-06"
output: markdown_document
---

### Publication places

[Accepted publication countries](output.tables/country_accepted.csv)

[Publication country not identified](output.tables/country_discarded.csv)

[Ambiguous publication places](output.tables/publication_place_ambiguous.csv)

[Discarded publication places](output.tables/publication_place_discarded.csv)

[Publication place conversions](output.tables/publication_place_conversion_nontrivial.csv)

[Places missing geocoordinate information](output.tables/absentgeocoordinates.csv). Altogether ``1.08``% of the documents have missing geocoordinates.



Top-20 publication places are shown together with the number of documents. This info is available for 68314 documents (96%). There are 437 unique publication places. Overall 98.9% of the places could be matched to geographic coordinates (from the [Geonames](http://download.geonames.org/export/dump/) database).


<img src="figure/summaryplace-1.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" /><img src="figure/summaryplace-2.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" />



|name    |     n|   fraction|
|:-------|-----:|----------:|
|Finland | 58073| 81.5082529|
|Sweden  |  5072|  7.1187963|
|Russia  |  2433|  3.4148327|
|USA     |   809|  1.1354705|
|Germany |   768|  1.0779250|
|Estonia |   285|  0.4000112|

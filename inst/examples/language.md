---
title: "Language summaries"
author: "Leo Lahti"
date: "2016-07-13"
output: markdown_document
---

## Language

 * 45 unique languages
 * The languages may come in [combinations](output.tables/language_conversions.csv)
 * 1795 multilingual documents (8.83%)  
 * 46 docs (0.23%) with no recognized language 
 * [Discarded languages](output.tables/language_discarded.csv)

Language codes are from [MARC](http://www.loc.gov/marc/languages/language_code.html); new custom abbreviations can be added in [this table](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/language_abbreviations.csv).

Title count per language (including multi-language documents):

![plot of chunk summarylang](figure/summarylang-1.png)


### Top languages


|Language              | Documents (n)| Fraction (%)|
|:---------------------|-------------:|------------:|
|Swedish               |          9918|         44.3|
|Latin                 |          7868|         35.1|
|Finnish               |          3242|         14.5|
|Greek Ancient to 1453 |           454|          2.0|
|German                |           369|          1.6|
|French                |           308|          1.4|


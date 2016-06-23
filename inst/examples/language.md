---
title: "Language summaries"
author: "Leo Lahti"
date: "2016-06-24"
output: markdown_document
---

## Language

 * 40 unique languages
 * The languages may come in [combinations](output.tables/language_conversions.csv)
 * 4107 docs (6.05%) with multiple languages
 * 724 docs (1.07%) with no recognized language 
 * [Discarded languages](output.tables/language_discarded.csv)

Language codes are from [MARC](http://www.loc.gov/marc/languages/language_code.html); new custom abbreviations can be added in [this table](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/language_abbreviations.csv).

Title count per language (including multi-language documents):

![plot of chunk summarylang](figure/summarylang-1.png)


### Top languages


|Language           | Documents (n)| Fraction (%)|
|:------------------|-------------:|------------:|
|Finnish            |         30765|         43.1|
|Swedish            |         24427|         34.2|
|Latin              |          6906|          9.7|
|Multiple languages |          4107|          5.8|
|German             |          2242|          3.1|
|French             |          1005|          1.4|


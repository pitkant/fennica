---
title: "Language summaries"
author: "Leo Lahti"
date: "2016-06-30"
output: markdown_document
---

## Language

 * 40 unique languages
 * The languages may come in [combinations](output.tables/language_conversions.csv)
 * 4333 docs (6.02%) with multiple languages
 * 733 docs (1.02%) with no recognized language 
 * [Discarded languages](output.tables/language_discarded.csv)

Language codes are from [MARC](http://www.loc.gov/marc/languages/language_code.html); new custom abbreviations can be added in [this table](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/language_abbreviations.csv).

Title count per language (including multi-language documents):

![plot of chunk summarylang](figure/summarylang-1.png)


### Top languages


|Language           | Documents (n)| Fraction (%)|
|:------------------|-------------:|------------:|
|Finnish            |         33062|         43.7|
|Swedish            |         25939|         34.3|
|Latin              |          6933|          9.2|
|Multiple languages |          4333|          5.7|
|German             |          2297|          3.0|
|French             |          1060|          1.4|


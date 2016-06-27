---
title: "Language summaries"
author: "Leo Lahti"
date: "2016-06-28"
output: markdown_document
---

## Language

 * 40 unique languages
 * The languages may come in [combinations](output.tables/language_conversions.csv)
 * 4151 docs (6.05%) with multiple languages
 * 728 docs (1.06%) with no recognized language 
 * [Discarded languages](output.tables/language_discarded.csv)

Language codes are from [MARC](http://www.loc.gov/marc/languages/language_code.html); new custom abbreviations can be added in [this table](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/language_abbreviations.csv).

Title count per language (including multi-language documents):

![plot of chunk summarylang](figure/summarylang-1.png)


### Top languages


|Language           | Documents (n)| Fraction (%)|
|:------------------|-------------:|------------:|
|Finnish            |         31094|         43.1|
|Swedish            |         24628|         34.1|
|Latin              |          6932|          9.6|
|Multiple languages |          4151|          5.8|
|German             |          2281|          3.2|
|French             |          1042|          1.4|


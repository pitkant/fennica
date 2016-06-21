---
title: "Language summaries"
author: "Leo Lahti"
date: "2016-06-21"
output: markdown_document
---

## Language

 * 40 unique languages
 * The languages may come in [combinations](output.tables/language_conversions.csv)
 * 1795 docs (8.84%) with multiple languages
 * 46 docs (0.23%) with no recognized language 
 * [Discarded languages](output.tables/language_discarded.csv)

Language codes are from [MARC](http://www.loc.gov/marc/languages/language_code.html); new custom abbreviations can be added in [this table](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/language_abbreviations.csv).

Title count per language (including multi-language documents):

![plot of chunk summarylang](figure/summarylang-1.png)


### Top languages


|Language           | Documents (n)| Fraction (%)|
|:------------------|-------------:|------------:|
|Swedish            |          9587|         43.6|
|Latin              |          6511|         29.6|
|Finnish            |          3191|         14.5|
|Multiple languages |          1795|          8.2|
|German             |           348|          1.6|
|French             |           306|          1.4|


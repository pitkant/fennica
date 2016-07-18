---
title: "Language summaries"
author: "Leo Lahti"
date: "2016-07-18"
output: markdown_document
---

## Language

 * 27 unique languages
 * The languages may come in [combinations](output.tables/language_conversions.csv)
 * 593 multilingual documents (5.93%)  
 * 117 docs (1.17%) with no recognized language 
 * [Discarded languages](output.tables/language_discarded.csv)

Language codes are from [MARC](http://www.loc.gov/marc/languages/language_code.html); new custom abbreviations can be added in [this table](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/language_abbreviations.csv).

Title count per language (including multi-language documents):

![plot of chunk summarylang](figure/summarylang-1.png)


### Top languages


|Language | Documents (n)| Fraction (%)|
|:--------|-------------:|------------:|
|Finnish  |          4814|         45.6|
|Swedish  |          3696|         35.0|
|Latin    |          1188|         11.2|
|German   |           328|          3.1|
|French   |           158|          1.5|
|Russian  |           138|          1.3|


---
title: "Language summaries"
author: "Leo Lahti"
date: "2016-07-18"
output: markdown_document
---

## Language

 * 23 unique languages
 * The languages may come in [combinations](output.tables/language_conversions.csv)
 * 605 multilingual documents (6.05%)  
 * 101 docs (1.01%) with no recognized language 
 * [Discarded languages](output.tables/language_discarded.csv)

Language codes are from [MARC](http://www.loc.gov/marc/languages/language_code.html); new custom abbreviations can be added in [this table](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/language_abbreviations.csv).

Title count per language (including multi-language documents):

![plot of chunk summarylang](figure/summarylang-1.png)


### Top languages


|Language | Documents (n)| Fraction (%)|
|:--------|-------------:|------------:|
|Finnish  |          4907|         46.3|
|Swedish  |          3636|         34.3|
|Latin    |          1146|         10.8|
|German   |           351|          3.3|
|Russian  |           158|          1.5|
|French   |           152|          1.4|


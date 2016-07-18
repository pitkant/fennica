---
title: "Language summaries"
author: "Leo Lahti"
date: "2016-07-19"
output: markdown_document
---

## Language

 * 26 unique languages
 * The languages may come in [combinations](output.tables/language_conversions.csv)
 * 609 multilingual documents (6.09%)  
 * 94 docs (0.94%) with no recognized language 
 * [Discarded languages](output.tables/language_discarded.csv)

Language codes are from [MARC](http://www.loc.gov/marc/languages/language_code.html); new custom abbreviations can be added in [this table](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/language_abbreviations.csv).

Title count per language (including multi-language documents):

![plot of chunk summarylang](figure/summarylang-1.png)


### Top languages


|Language | Documents (n)| Fraction (%)|
|:--------|-------------:|------------:|
|Finnish  |          4913|         46.3|
|Swedish  |          3735|         35.2|
|Latin    |          1094|         10.3|
|German   |           334|          3.1|
|French   |           148|          1.4|
|Russian  |           145|          1.4|


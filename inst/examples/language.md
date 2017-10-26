---
title: "Language summaries"
author: "Leo Lahti"
date: "2017-10-26"
output: markdown_document
---

## Language

 * 39 [unique languages](output.tables/language_accepted.csv)
 * The languages may come in [combinations](output.tables/language_conversions.csv)
 * 4210 multilingual documents (5.98%)  
 * 727 docs (1.03%) with empty or [unrecognized language](output.tables/language_discarded.csv)

Language codes are from [MARC](http://www.loc.gov/marc/languages/language_code.html); new custom abbreviations can be added in [this table](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/language_abbreviations.csv).

Title count per language (including multi-language documents):

![plot of chunk summarylang](figure/summarylang-1.png)


### Top languages

Number of documents assigned with each language. For a complete list,
see [accepted languages](output.tables/language_accepted.csv).


|Language | Documents (n)| Fraction (%)|
|:--------|-------------:|------------:|
|Finnish  |         34732|         46.6|
|Swedish  |         26050|         34.9|
|Latin    |          7814|         10.5|
|German   |          2303|          3.1|
|Russian  |          1057|          1.4|
|French   |          1027|          1.4|


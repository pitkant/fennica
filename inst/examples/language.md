---
title: "Language summaries"
author: "Leo Lahti"
date: "2018-12-27"
output: markdown_document
---

## Language

 * 40 [unique languages](output.tables/language_accepted.csv)
 * 34 [unique primary languages](output.tables/language_accepted.csv)  
 * 66276 single-language documents (94.07%)
 * 4175 multilingual documents (5.93%) 
 * [Conversions from raw to preprocessed language entries](output.tables/language_conversions.csv) 
 * 727 documents (1.03%) with [unrecognized language](output.tables/language_discarded.csv)

Language codes are from [MARC](http://www.loc.gov/marc/languages/language_code.html); new custom abbreviations can be added in [this table](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/language_abbreviations.csv).

Title count per language (including multi-language documents; note the log10 scale):

![plot of chunk summarylang](figure/summarylang-1.png)


### Top languages

Number of documents assigned with each language (top-10). For a complete list,
see [accepted languages](output.tables/language_accepted.csv).


|Language        |Documents (n) |Fraction (%) |
|:---------------|:-------------|:------------|
|Finnish         |32348         |45.9         |
|Swedish         |23019         |32.7         |
|Latin           |6168          |8.8          |
|German          |1859          |2.6          |
|Finnish;Swedish |1383          |2            |
|Russian         |729           |1            |
|Undetermined    |727           |1            |
|French          |615           |0.9          |
|Latin;Swedish   |591           |0.8          |
|English         |338           |0.5          |


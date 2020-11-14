---
title: "Language summaries"
author: "Leo Lahti"
date: "2020-11-14"
output: markdown_document
---

## Language

 * 40 [unique languages](output.tables/language_accepted.csv)
 * 34 [unique primary languages](output.tables/language_accepted.csv)  
 * 66311 single-language documents (94.07%)
 * 4178 multilingual documents (5.93%) 
 * [Conversions from raw to preprocessed language entries](output.tables/language_conversions.csv) 
 * 729 documents (1.03%) with [unrecognized language](output.tables/language_discarded.csv)

Language codes are from [MARC](http://www.loc.gov/marc/languages/language_code.html); new custom abbreviations can be added in [this table](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/language_abbreviations.csv).

Title count per language (including multi-language documents; note the log10 scale):

![plot of chunk summarylang](figure/summarylang-1.png)


### Top languages

Number of documents assigned with each language (top-10). For a complete list,
see [accepted languages](output.tables/language_accepted.csv).


|Language        |Documents (n) |Fraction (%) |
|:---------------|:-------------|:------------|
|Finnish         |32356         |45.9         |
|Swedish         |23022         |32.7         |
|Latin           |6180          |8.8          |
|German          |1858          |2.6          |
|Finnish;Swedish |1382          |2            |
|Russian         |731           |1            |
|Undetermined    |729           |1            |
|French          |617           |0.9          |
|Latin;Swedish   |591           |0.8          |
|English         |344           |0.5          |


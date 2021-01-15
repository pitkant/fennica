---
title: "Language summaries"
author: "Leo Lahti"
date: "2021-01-15"
output: markdown_document
---

## Language

 * 15 [unique languages](output.tables/language_accepted.csv)
 * 15 [unique primary languages](output.tables/language_accepted.csv)  
 * 933 single-language documents (93.86%)
 * 61 multilingual documents (6.14%) 
 * [Conversions from raw to preprocessed language entries](output.tables/language_conversions.csv) 
 * 11 documents (1.11%) with [unrecognized language](output.tables/language_discarded.csv)

Language codes are from [MARC](http://www.loc.gov/marc/languages/language_code.html); new custom abbreviations can be added in [this table](https://github.com/COMHIS/fennica/blob/master/inst/extdata/language_abbreviations.csv).

Title count per language (including multi-language documents; note the log10 scale):


```
## Error in top_plot(df, "languages", ntop = ntop, log10 = TRUE): could not find function "top_plot"
```


### Top languages

Number of documents assigned with each language (top-10). For a complete list,
see [accepted languages](output.tables/language_accepted.csv).


|Language                       |Documents (n) |Fraction (%) |
|:------------------------------|:-------------|:------------|
|Finnish                        |472           |47.5         |
|Swedish                        |317           |31.9         |
|Latin                          |94            |9.5          |
|Finnish;Swedish                |20            |2            |
|German                         |15            |1.5          |
|Undetermined                   |11            |1.1          |
|Latin;Swedish                  |10            |1            |
|French                         |7             |0.7          |
|Russian                        |6             |0.6          |
|Latin;Greek, Ancient (to 1453) |6             |0.6          |


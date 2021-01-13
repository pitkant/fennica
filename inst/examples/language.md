---
title: "Language summaries"
author: "Leo Lahti"
date: "2021-01-13"
output: markdown_document
---

## Language

 * 12 [unique languages](output.tables/language_accepted.csv)
 * 10 [unique primary languages](output.tables/language_accepted.csv)  
 * 942 single-language documents (94.77%)
 * 52 multilingual documents (5.23%) 
 * [Conversions from raw to preprocessed language entries](output.tables/language_conversions.csv) 
 * 7 documents (0.7%) with [unrecognized language](output.tables/language_discarded.csv)

Language codes are from [MARC](http://www.loc.gov/marc/languages/language_code.html); new custom abbreviations can be added in [this table](https://github.com/COMHIS/fennica/blob/master/inst/extdata/language_abbreviations.csv).

Title count per language (including multi-language documents; note the log10 scale):


```
## Error in top_plot(df, "languages", ntop = ntop, log10 = TRUE): could not find function "top_plot"
```


### Top languages

Number of documents assigned with each language (top-10). For a complete list,
see [accepted languages](output.tables/language_accepted.csv).


|Language        |Documents (n) |Fraction (%) |
|:---------------|:-------------|:------------|
|Finnish         |426           |42.9         |
|Swedish         |363           |36.5         |
|Latin           |92            |9.3          |
|German          |20            |2            |
|Finnish;Swedish |13            |1.3          |
|Russian         |12            |1.2          |
|French          |11            |1.1          |
|Latin;Swedish   |10            |1            |
|Undetermined    |7             |0.7          |
|Swedish;Finnish |5             |0.5          |


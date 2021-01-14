---
title: "Language summaries"
author: "Leo Lahti"
date: "2021-01-15"
output: markdown_document
---

## Language

 * 15 [unique languages](output.tables/language_accepted.csv)
 * 13 [unique primary languages](output.tables/language_accepted.csv)  
 * 936 single-language documents (94.55%)
 * 54 multilingual documents (5.45%) 
 * [Conversions from raw to preprocessed language entries](output.tables/language_conversions.csv) 
 * 9 documents (0.91%) with [unrecognized language](output.tables/language_discarded.csv)

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
|Finnish         |455           |46           |
|Swedish         |318           |32.1         |
|Latin           |95            |9.6          |
|German          |26            |2.6          |
|Finnish;Swedish |17            |1.7          |
|Latin;Swedish   |10            |1            |
|French          |10            |1            |
|Undetermined    |9             |0.9          |
|Russian         |9             |0.9          |
|English         |6             |0.6          |


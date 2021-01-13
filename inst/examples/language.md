---
title: "Language summaries"
author: "Leo Lahti"
date: "2021-01-13"
output: markdown_document
---

## Language

 * 40 [unique languages](output.tables/language_accepted.csv)
 * 34 [unique primary languages](output.tables/language_accepted.csv)  
 * 67046 single-language documents (94.03%)
 * 4255 multilingual documents (5.97%) 
 * [Conversions from raw to preprocessed language entries](output.tables/language_conversions.csv) 
 * 731 documents (1.03%) with [unrecognized language](output.tables/language_discarded.csv)

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
|Finnish         |32396         |45.4         |
|Swedish         |23301         |32.7         |
|Latin           |6575          |9.2          |
|German          |1868          |2.6          |
|Finnish;Swedish |1382          |1.9          |
|Undetermined    |731           |1            |
|Russian         |731           |1            |
|French          |621           |0.9          |
|Latin;Swedish   |610           |0.9          |
|English         |344           |0.5          |


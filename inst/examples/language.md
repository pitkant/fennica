---
title: "Language summaries"
author: "Leo Lahti"
date: "2021-03-05"
output: markdown_document
---

## Language

 * 40 [unique languages](output.tables/languages_accepted.csv)
 * 34 [unique primary languages](output.tables/language_primary_accepted.csv)  
 * 67623 single-language documents (94.03%)
 * 4296 multilingual documents (5.97%) 
 * [Conversions from raw to preprocessed language entries](output.tables/language_conversions.csv) 
 * 733 documents (1.02%) with [unrecognized language](output.tables/language_discarded.csv)

Language codes are from [MARC](http://www.loc.gov/marc/languages/language_code.html); new custom abbreviations can be added in [this table](https://github.com/COMHIS/fennica/blob/master/inst/extdata/language_abbreviations.csv).



### Top languages

Number of titles assigned with each language (top-10). For a complete list,
see [accepted languages](output.tables/language_accepted.csv).


|Language        |Documents (n) |Fraction (%) |
|:---------------|:-------------|:------------|
|Finnish         |32708         |45.5         |
|Swedish         |23476         |32.6         |
|Latin           |6587          |9.2          |
|German          |1899          |2.6          |
|Finnish;Swedish |1397          |1.9          |
|Russian         |749           |1            |
|Undetermined    |733           |1            |
|French          |646           |0.9          |
|Latin;Swedish   |610           |0.8          |
|English         |345           |0.5          |

Title count per language (including multi-language documents; note the log10 scale):

![plot of chunk summarylang](figure/summarylang-1.png)

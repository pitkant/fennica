---
title: "Generic document summaries"
author: "Leo Lahti"
date: "2016-04-27"
output: markdown_document
---


### Publication year

[Publication year conversions](output.tables/publication_year_conversion.csv)

[Publication year discarded](output.tables/publication_year_discarded.csv)

Publication year is available for 71248 documents (100%). The publication years span 1488-1919

![plot of chunk summarypublicationyear](figure/summarypublicationyear-1.png)


### Titles

[Publication titles](output.tables/title_accepted.csv)

[Publication titles discarded](output.tables/title_discarded.csv)

[Title harmonization table](output.tables/title_conversion_nontrivial.csv)

Top-20 titles are shown together with the number of documents. This info is available for 71245 documents (100%). There are 56603 unique titles.

![plot of chunk summarytitle](figure/summarytitle-1.png)

## Language

Statistics:

 * 40 unique languages
 * 4292 docs with multiple languages
 * 599 docs (0.84%) with no recognized language 
 
[Language conversions](output.tables/language_conversions.csv) Language codes as in [marc database](http://www.loc.gov/marc/languages/language_code.html); new custom abbreviations can be added in [this table](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/language_abbreviations.csv)

[Discarded languages](output.tables/language_discarded.csv)

Title count per language:

![plot of chunk summarylang](figure/summarylang-1.png)


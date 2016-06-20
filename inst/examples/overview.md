---
title: "Preprocessing overview"
author: "Leo Lahti"
date: "2016-06-20"
output: markdown_document
---

# Preprocessing summary

## Specific fields

  * [Author info](author.md)
  * [Gender info](gender.md)
  * [Publisher info](publisher.md)
  * [Publication geography](publicationplace.md)
  * [Publication year info](publicationyear.md)
  * [Titles](title.md)  
  * [Document sizes](size.md)
  * [Document and subject topics](topic.md)
  * [Languages](language.md)

## Field conversions

This documents the conversions from raw data to the final preprocessed version (accepted, discarded, conversions). Only some of the key tables are explicitly linked below. The complete list of all summary tables is [here](output.tables/).

## Annotated documents

Fraction of documents with data:

![plot of chunk summaryannotations](figure/summaryannotations-1.png)

Same in exact numbers: documents with available/missing entries, and number of unique entries for each field. Sorted by missing data:


|field name                        | missing (%)| available (%)| available (n)| unique (n)|
|:---------------------------------|-----------:|-------------:|-------------:|----------:|
|publication_frequency             |       100.0|           0.0|             0|          1|
|volnumber                         |       100.0|           0.0|             0|          1|
|uncontrolled                      |       100.0|           0.0|             3|          4|
|successor                         |       100.0|           0.0|            14|         15|
|parts                             |        99.9|           0.1|            44|          8|
|publication_year_till             |        98.6|           1.4|           981|        167|
|width.original                    |        97.1|           2.9|          1950|        293|
|height.original                   |        93.4|           6.6|          4514|        335|
|subject_geography                 |        91.5|           8.5|          5770|        764|
|note_granter                      |        91.4|           8.6|          5843|         98|
|note_510c                         |        90.2|           9.8|          6641|       6446|
|note_source                       |        82.8|          17.2|         11706|       4970|
|title_uniform                     |        82.1|          17.9|         12182|       8915|
|author_death                      |        73.9|          26.1|         17722|        363|
|first_edition                     |        73.1|          26.9|         18255|          3|
|author_birth                      |        72.5|          27.5|         18650|        346|
|corporate                         |        72.1|          27.9|         18933|        645|
|subject_topic                     |        69.4|          30.6|         20755|       3509|
|obl                               |        55.4|          44.6|         30303|          3|
|width                             |        48.8|          51.2|         34756|        296|
|height                            |        48.8|          51.2|         34756|        336|
|area                              |        48.8|          51.2|         34756|        760|
|paper.consumption.km2             |        48.8|          51.2|         34756|       4289|
|holder                            |        47.3|          52.7|         35749|       2096|
|author_gender                     |        44.1|          55.9|         37969|          4|
|self_published                    |        43.4|          56.6|         38413|          3|
|author_name                       |        33.0|          67.0|         45513|      11970|
|author                            |        33.0|          67.0|         45513|      12034|
|publisher                         |        16.9|          83.1|         56444|       9814|
|country                           |         4.0|          96.0|         65177|         33|
|publication_place                 |         4.0|          96.0|         65181|        414|
|pagecount.orig                    |         2.2|          97.8|         66380|        998|
|language                          |         1.1|          98.9|         67175|        254|
|latitude                          |         1.0|          99.0|         67191|        351|
|longitude                         |         1.0|          99.0|         67191|        351|
|dissertation                      |         0.0|         100.0|         67873|          3|
|publication_year_from             |         0.0|         100.0|         67880|        350|
|title                             |         0.0|         100.0|         67896|      53823|
|synodal                           |         0.0|         100.0|         67898|          3|
|language.Swedish                  |         0.0|         100.0|         67899|          2|
|language.Finnish                  |         0.0|         100.0|         67899|          2|
|language.Latin                    |         0.0|         100.0|         67899|          2|
|language.English                  |         0.0|         100.0|         67899|          2|
|language.French                   |         0.0|         100.0|         67899|          2|
|language.German                   |         0.0|         100.0|         67899|          2|
|language.Hebrew                   |         0.0|         100.0|         67899|          2|
|language.Greek, Ancient (to 1453) |         0.0|         100.0|         67899|          1|
|language.Arabic                   |         0.0|         100.0|         67899|          2|
|language.Italian                  |         0.0|         100.0|         67899|          2|
|language.Danish                   |         0.0|         100.0|         67899|          2|
|language.Sami                     |         0.0|         100.0|         67899|          2|
|language.Dutch                    |         0.0|         100.0|         67899|          2|
|language.Syriac, Modern           |         0.0|         100.0|         67899|          2|
|language.Spanish                  |         0.0|         100.0|         67899|          2|
|language.Lule Sami                |         0.0|         100.0|         67899|          2|
|language.Portuguese               |         0.0|         100.0|         67899|          2|
|language.Russian                  |         0.0|         100.0|         67899|          2|
|language.Northern Sami            |         0.0|         100.0|         67899|          2|
|language.Greek, Modern (1453-)    |         0.0|         100.0|         67899|          1|
|language.Estonian                 |         0.0|         100.0|         67899|          2|
|language.Esperanto                |         0.0|         100.0|         67899|          2|
|language.Norwegian                |         0.0|         100.0|         67899|          2|
|language.Polish                   |         0.0|         100.0|         67899|          2|
|language.Finno-Ugrian (Other)     |         0.0|         100.0|         67899|          1|
|language.Undetermined             |         0.0|         100.0|         67899|          2|
|language.Lithuanian               |         0.0|         100.0|         67899|          2|
|language.Hungarian                |         0.0|         100.0|         67899|          2|
|language.Tibetan                  |         0.0|         100.0|         67899|          2|
|language.Czech                    |         0.0|         100.0|         67899|          2|
|language.Afroasiatic (Other)      |         0.0|         100.0|         67899|          1|
|language.Latvian                  |         0.0|         100.0|         67899|          2|
|language.Icelandic                |         0.0|         100.0|         67899|          2|
|language.Ukrainian                |         0.0|         100.0|         67899|          2|
|language.Karelian                 |         0.0|         100.0|         67899|          2|
|language.Church Slavic            |         0.0|         100.0|         67899|          2|
|language.Erzya                    |         0.0|         100.0|         67899|          2|
|language.Yiddish                  |         0.0|         100.0|         67899|          2|
|language.Votic                    |         0.0|         100.0|         67899|          2|
|language.Germanic (Other)         |         0.0|         100.0|         67899|          1|
|language.Multiple languages       |         0.0|         100.0|         67899|          2|
|pagecount                         |         0.0|         100.0|         67899|        997|
|gatherings.original               |         0.0|         100.0|         67899|         18|
|obl.original                      |         0.0|         100.0|         67899|          2|
|original_row                      |         0.0|         100.0|         67899|      67899|
|author_pseudonyme                 |         0.0|         100.0|         67899|          2|
|publication_year                  |         0.0|         100.0|         67899|        349|
|publication_decade                |         0.0|         100.0|         67899|         40|
|gatherings                        |         0.0|         100.0|         67899|         18|
|volcount                          |         0.0|         100.0|         67899|          1|
|issue                             |         0.0|         100.0|         67899|          1|



## Histograms of all entries for numeric variables

<img src="figure/summary-histograms-1.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-2.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-3.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-4.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-5.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-6.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-7.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-8.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-9.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-10.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-11.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-12.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-13.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-14.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-15.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-16.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-17.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-18.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-19.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" />

## Histograms of the top entries for factor variables


```
## Error in dfs$names: $ operator is invalid for atomic vectors
```

<img src="figure/summary-bars-1.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-2.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-3.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-4.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-5.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" />




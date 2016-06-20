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
|volnumber                         |       100.0|           0.0|             0|          1|
|uncontrolled                      |        99.8|           0.2|           111|         99|
|successor                         |        99.4|           0.6|           404|        396|
|publication_frequency             |        98.6|           1.4|           997|         51|
|width.original                    |        97.3|           2.7|          1952|        293|
|publication_year_till             |        93.9|           6.1|          4330|        190|
|height.original                   |        93.1|           6.9|          4949|        335|
|subject_geography                 |        91.9|           8.1|          5771|        764|
|note_granter                      |        91.8|           8.2|          5843|         98|
|note_510c                         |        90.7|           9.3|          6645|       6450|
|note_source                       |        83.6|          16.4|         11710|       4972|
|title_uniform                     |        82.9|          17.1|         12182|       8915|
|author_death                      |        75.1|          24.9|         17723|        363|
|author_birth                      |        73.8|          26.2|         18651|        346|
|first_edition                     |        73.4|          26.6|         18921|          3|
|corporate                         |        71.5|          28.5|         20281|       1406|
|subject_topic                     |        70.9|          29.1|         20766|       3513|
|obl                               |        54.5|          45.5|         32440|          3|
|holder                            |        49.4|          50.6|         36083|       2136|
|width                             |        47.6|          52.4|         37328|        296|
|height                            |        47.6|          52.4|         37328|        336|
|area                              |        47.6|          52.4|         37328|        766|
|paper.consumption.km2             |        47.6|          52.4|         37328|       4303|
|author_gender                     |        46.7|          53.3|         37970|          4|
|self_published                    |        46.1|          53.9|         38414|          3|
|author_name                       |        36.1|          63.9|         45514|      11970|
|author                            |        36.1|          63.9|         45514|      12034|
|publisher                         |        17.5|          82.5|         58768|      10837|
|pagecount.orig                    |         6.9|          93.1|         66356|        992|
|country                           |         4.1|          95.9|         68317|         33|
|publication_place                 |         4.1|          95.9|         68321|        434|
|latitude                          |         1.1|          98.9|         70468|        365|
|longitude                         |         1.1|          98.9|         70468|        365|
|language                          |         1.0|          99.0|         70519|        257|
|dissertation                      |         0.0|         100.0|         71222|          3|
|publication_year_from             |         0.0|         100.0|         71229|        351|
|title                             |         0.0|         100.0|         71245|      56603|
|synodal                           |         0.0|         100.0|         71247|          3|
|language.Swedish                  |         0.0|         100.0|         71248|          2|
|language.Finnish                  |         0.0|         100.0|         71248|          2|
|language.Latin                    |         0.0|         100.0|         71248|          2|
|language.English                  |         0.0|         100.0|         71248|          2|
|language.French                   |         0.0|         100.0|         71248|          2|
|language.German                   |         0.0|         100.0|         71248|          2|
|language.Hebrew                   |         0.0|         100.0|         71248|          2|
|language.Greek, Ancient (to 1453) |         0.0|         100.0|         71248|          1|
|language.Arabic                   |         0.0|         100.0|         71248|          2|
|language.Italian                  |         0.0|         100.0|         71248|          2|
|language.Danish                   |         0.0|         100.0|         71248|          2|
|language.Sami                     |         0.0|         100.0|         71248|          2|
|language.Dutch                    |         0.0|         100.0|         71248|          2|
|language.Syriac, Modern           |         0.0|         100.0|         71248|          2|
|language.Spanish                  |         0.0|         100.0|         71248|          2|
|language.Lule Sami                |         0.0|         100.0|         71248|          2|
|language.Portuguese               |         0.0|         100.0|         71248|          2|
|language.Russian                  |         0.0|         100.0|         71248|          2|
|language.Northern Sami            |         0.0|         100.0|         71248|          2|
|language.Greek, Modern (1453-)    |         0.0|         100.0|         71248|          1|
|language.Estonian                 |         0.0|         100.0|         71248|          2|
|language.Esperanto                |         0.0|         100.0|         71248|          2|
|language.Norwegian                |         0.0|         100.0|         71248|          2|
|language.Polish                   |         0.0|         100.0|         71248|          2|
|language.Finno-Ugrian (Other)     |         0.0|         100.0|         71248|          1|
|language.Undetermined             |         0.0|         100.0|         71248|          2|
|language.Lithuanian               |         0.0|         100.0|         71248|          2|
|language.Hungarian                |         0.0|         100.0|         71248|          2|
|language.Tibetan                  |         0.0|         100.0|         71248|          2|
|language.Czech                    |         0.0|         100.0|         71248|          2|
|language.Afroasiatic (Other)      |         0.0|         100.0|         71248|          1|
|language.Latvian                  |         0.0|         100.0|         71248|          2|
|language.Icelandic                |         0.0|         100.0|         71248|          2|
|language.Ukrainian                |         0.0|         100.0|         71248|          2|
|language.Karelian                 |         0.0|         100.0|         71248|          2|
|language.Church Slavic            |         0.0|         100.0|         71248|          2|
|language.Erzya                    |         0.0|         100.0|         71248|          2|
|language.Yiddish                  |         0.0|         100.0|         71248|          2|
|language.Votic                    |         0.0|         100.0|         71248|          2|
|language.Germanic (Other)         |         0.0|         100.0|         71248|          1|
|language.Multiple languages       |         0.0|         100.0|         71248|          2|
|pagecount                         |         0.0|         100.0|         71248|        991|
|gatherings.original               |         0.0|         100.0|         71248|         18|
|obl.original                      |         0.0|         100.0|         71248|          2|
|original_row                      |         0.0|         100.0|         71248|      71248|
|author_pseudonyme                 |         0.0|         100.0|         71248|          2|
|publication_year                  |         0.0|         100.0|         71248|        350|
|publication_decade                |         0.0|         100.0|         71248|         40|
|gatherings                        |         0.0|         100.0|         71248|         18|
|volcount                          |         0.0|         100.0|         71248|          1|



## Histograms of all entries for numeric variables

<img src="figure/summary-histograms-1.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-2.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-3.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-4.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-5.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-6.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-7.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-8.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-9.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-10.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-11.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-12.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-13.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-14.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-15.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-16.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-17.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-18.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" />

## Histograms of the top entries for factor variables

<img src="figure/summary-bars-1.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-2.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-3.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-4.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-5.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-6.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-7.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-8.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-9.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-10.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-11.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-12.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-13.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-14.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-15.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-16.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" />




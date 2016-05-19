---
title: "Preprocessing overview"
author: "Leo Lahti"
date: "2016-05-19"
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
  * [Document topics](topic.md)
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
|uncontrolled                      |        99.8|           0.2|           106|         96|
|successor                         |        99.4|           0.6|           389|        382|
|publication_frequency             |        98.6|           1.4|           973|         50|
|width.original                    |        97.4|           2.6|          1784|        279|
|height.original                   |        93.2|           6.8|          4606|        314|
|subject_geography                 |        92.2|           7.8|          5329|        729|
|note_granter                      |        92.0|           8.0|          5435|         95|
|note_510c                         |        90.6|           9.4|          6365|       6189|
|note_source                       |        83.4|          16.6|         11309|       4857|
|title_uniform                     |        83.2|          16.8|         11451|       8495|
|author_death                      |        75.8|          24.2|         16482|        363|
|author_birth                      |        74.3|          25.7|         17504|        346|
|corporate                         |        71.5|          28.5|         19408|       1373|
|subject_topic                     |        70.9|          29.1|         19819|       3395|
|obl                               |        54.2|          45.8|         31133|          3|
|holder                            |        49.3|          50.7|         34516|       2107|
|width                             |        47.5|          52.5|         35686|        282|
|height                            |        47.5|          52.5|         35686|        315|
|area                              |        47.5|          52.5|         35686|        697|
|paper.consumption.km2             |        47.5|          52.5|         35686|       4122|
|author_gender                     |        46.5|          53.5|         36402|          4|
|publication_year_till             |        38.7|          61.3|         41732|        199|
|self_published                    |        37.7|          62.3|         42371|          3|
|author_name                       |        36.9|          63.1|         42913|      11612|
|author                            |        36.9|          63.1|         42913|      11644|
|country                           |        15.7|          84.3|         57361|         34|
|publication_place                 |        15.7|          84.3|         57362|        436|
|pagecount.orig                    |         6.8|          93.2|         63403|        987|
|latitude                          |         3.5|          96.5|         65617|        365|
|longitude                         |         3.5|          96.5|         65617|        365|
|publisher                         |         1.6|          98.4|         66938|      10538|
|language                          |         1.0|          99.0|         67335|        255|
|publication_year_from             |         0.3|          99.7|         67842|        350|
|dissertation                      |         0.0|         100.0|         68004|          3|
|title                             |         0.0|         100.0|         68024|      54296|
|synodal                           |         0.0|         100.0|         68026|          3|
|language.Swedish                  |         0.0|         100.0|         68027|          2|
|language.Finnish                  |         0.0|         100.0|         68027|          2|
|language.Latin                    |         0.0|         100.0|         68027|          2|
|language.English                  |         0.0|         100.0|         68027|          2|
|language.French                   |         0.0|         100.0|         68027|          2|
|language.German                   |         0.0|         100.0|         68027|          2|
|language.Hebrew                   |         0.0|         100.0|         68027|          2|
|language.Greek, Ancient (to 1453) |         0.0|         100.0|         68027|          1|
|language.Arabic                   |         0.0|         100.0|         68027|          2|
|language.Italian                  |         0.0|         100.0|         68027|          2|
|language.Danish                   |         0.0|         100.0|         68027|          2|
|language.Sami                     |         0.0|         100.0|         68027|          2|
|language.Dutch                    |         0.0|         100.0|         68027|          2|
|language.Syriac, Modern           |         0.0|         100.0|         68027|          2|
|language.Spanish                  |         0.0|         100.0|         68027|          2|
|language.Lule Sami                |         0.0|         100.0|         68027|          2|
|language.Portuguese               |         0.0|         100.0|         68027|          2|
|language.Russian                  |         0.0|         100.0|         68027|          2|
|language.Northern Sami            |         0.0|         100.0|         68027|          2|
|language.Greek, Modern (1453-)    |         0.0|         100.0|         68027|          1|
|language.Estonian                 |         0.0|         100.0|         68027|          2|
|language.Esperanto                |         0.0|         100.0|         68027|          2|
|language.Norwegian                |         0.0|         100.0|         68027|          2|
|language.Polish                   |         0.0|         100.0|         68027|          2|
|language.Finno-Ugrian (Other)     |         0.0|         100.0|         68027|          1|
|language.Undetermined             |         0.0|         100.0|         68027|          2|
|language.Lithuanian               |         0.0|         100.0|         68027|          2|
|language.Hungarian                |         0.0|         100.0|         68027|          2|
|language.Tibetan                  |         0.0|         100.0|         68027|          2|
|language.Czech                    |         0.0|         100.0|         68027|          2|
|language.Afroasiatic (Other)      |         0.0|         100.0|         68027|          1|
|language.Latvian                  |         0.0|         100.0|         68027|          2|
|language.Icelandic                |         0.0|         100.0|         68027|          2|
|language.Ukrainian                |         0.0|         100.0|         68027|          2|
|language.Karelian                 |         0.0|         100.0|         68027|          2|
|language.Church Slavic            |         0.0|         100.0|         68027|          2|
|language.Erzya                    |         0.0|         100.0|         68027|          2|
|language.Yiddish                  |         0.0|         100.0|         68027|          2|
|language.Votic                    |         0.0|         100.0|         68027|          2|
|language.Germanic (Other)         |         0.0|         100.0|         68027|          1|
|language.Multiple languages       |         0.0|         100.0|         68027|          2|
|pagecount                         |         0.0|         100.0|         68027|        986|
|gatherings.original               |         0.0|         100.0|         68027|         18|
|obl.original                      |         0.0|         100.0|         68027|          2|
|original_row                      |         0.0|         100.0|         68027|      68027|
|publication_year                  |         0.0|         100.0|         68027|        349|
|publication_decade                |         0.0|         100.0|         68027|         40|
|author_pseudonyme                 |         0.0|         100.0|         68027|          2|
|gatherings                        |         0.0|         100.0|         68027|         18|
|volcount                          |         0.0|         100.0|         68027|          1|



## Histograms of all entries for numeric variables

<img src="figure/summary-histograms-1.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-2.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-3.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-4.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-5.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-6.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-7.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-8.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-9.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-10.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-11.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-12.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-13.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-14.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-15.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-16.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-17.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-18.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" />

## Histograms of the top entries for factor variables

<img src="figure/summary-bars-1.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-2.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-3.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-4.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-5.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-6.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-7.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-8.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-9.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-10.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-11.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-12.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-13.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-14.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-15.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-16.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-17.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" />




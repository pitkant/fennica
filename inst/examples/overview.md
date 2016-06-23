---
title: "Preprocessing overview"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2016-06-23"
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
|parts                             |       100.0|           0.0|             0|          1|
|publication_frequency             |       100.0|           0.0|             0|          1|
|uncontrolled                      |       100.0|           0.0|             0|          1|
|successor                         |       100.0|           0.0|             0|          1|
|volnumber                         |       100.0|           0.0|             0|          1|
|publication_year_till             |        99.1|           0.9|           192|         98|
|width.original                    |        98.9|           1.1|           222|        131|
|height.original                   |        98.7|           1.3|           263|        137|
|first_edition                     |        78.9|          21.1|          4279|          3|
|subject_geography                 |        76.3|          23.7|          4818|        470|
|note_granter                      |        73.3|          26.7|          5427|         31|
|note_510c                         |        68.0|          32.0|          6502|       6353|
|author_death                      |        58.9|          41.1|          8348|        262|
|author_birth                      |        54.6|          45.4|          9221|        254|
|author_gender                     |        50.5|          49.5|         10043|          4|
|author_name                       |        45.6|          54.4|         11047|       2645|
|author                            |        45.6|          54.4|         11047|       2676|
|title_uniform                     |        44.3|          55.7|         11302|       8298|
|note_source                       |        43.1|          56.9|         11554|       4930|
|holder                            |        40.6|          59.4|         12071|         44|
|corporate                         |         8.7|          91.3|         18544|        468|
|country                           |         6.1|          93.9|         19070|         20|
|publication_place                 |         5.9|          94.1|         19113|        107|
|subject_topic                     |         5.0|          95.0|         19297|       3111|
|pagecount.orig                    |         3.2|          96.8|         19661|        566|
|obl                               |         2.7|          97.3|         19757|          3|
|width                             |         1.4|          98.6|         20019|        139|
|height                            |         1.4|          98.6|         20019|        142|
|area                              |         1.4|          98.6|         20019|        217|
|paper.consumption.km2             |         1.4|          98.6|         20019|       1262|
|latitude                          |         0.3|          99.7|         20246|         93|
|longitude                         |         0.3|          99.7|         20246|         93|
|language                          |         0.2|          99.8|         20259|        143|
|dissertation                      |         0.1|          99.9|         20280|          3|
|publication_year_from             |         0.0|         100.0|         20300|        261|
|synodal                           |         0.0|         100.0|         20304|          3|
|language.Swedish                  |         0.0|         100.0|         20305|          2|
|language.Finnish                  |         0.0|         100.0|         20305|          2|
|language.Latin                    |         0.0|         100.0|         20305|          2|
|language.English                  |         0.0|         100.0|         20305|          2|
|language.French                   |         0.0|         100.0|         20305|          2|
|language.German                   |         0.0|         100.0|         20305|          2|
|language.Hebrew                   |         0.0|         100.0|         20305|          2|
|language.Greek, Ancient (to 1453) |         0.0|         100.0|         20305|          1|
|language.Arabic                   |         0.0|         100.0|         20305|          2|
|language.Italian                  |         0.0|         100.0|         20305|          2|
|language.Danish                   |         0.0|         100.0|         20305|          2|
|language.Sami                     |         0.0|         100.0|         20305|          2|
|language.Dutch                    |         0.0|         100.0|         20305|          2|
|language.Syriac, Modern           |         0.0|         100.0|         20305|          2|
|language.Spanish                  |         0.0|         100.0|         20305|          2|
|language.Lule Sami                |         0.0|         100.0|         20305|          2|
|language.Portuguese               |         0.0|         100.0|         20305|          2|
|language.Russian                  |         0.0|         100.0|         20305|          2|
|language.Northern Sami            |         0.0|         100.0|         20305|          2|
|language.Greek, Modern (1453-)    |         0.0|         100.0|         20305|          1|
|language.Estonian                 |         0.0|         100.0|         20305|          1|
|language.Esperanto                |         0.0|         100.0|         20305|          1|
|language.Norwegian                |         0.0|         100.0|         20305|          1|
|language.Polish                   |         0.0|         100.0|         20305|          1|
|language.Finno-Ugrian (Other)     |         0.0|         100.0|         20305|          1|
|language.Undetermined             |         0.0|         100.0|         20305|          1|
|language.Lithuanian               |         0.0|         100.0|         20305|          1|
|language.Hungarian                |         0.0|         100.0|         20305|          1|
|language.Tibetan                  |         0.0|         100.0|         20305|          1|
|language.Czech                    |         0.0|         100.0|         20305|          1|
|language.Afroasiatic (Other)      |         0.0|         100.0|         20305|          1|
|language.Latvian                  |         0.0|         100.0|         20305|          1|
|language.Icelandic                |         0.0|         100.0|         20305|          1|
|language.Ukrainian                |         0.0|         100.0|         20305|          1|
|language.Karelian                 |         0.0|         100.0|         20305|          2|
|language.Church Slavic            |         0.0|         100.0|         20305|          1|
|language.Erzya                    |         0.0|         100.0|         20305|          1|
|language.Yiddish                  |         0.0|         100.0|         20305|          1|
|language.Votic                    |         0.0|         100.0|         20305|          1|
|language.Germanic (Other)         |         0.0|         100.0|         20305|          1|
|language.Multiple languages       |         0.0|         100.0|         20305|          2|
|title                             |         0.0|         100.0|         20305|      16914|
|pagecount                         |         0.0|         100.0|         20305|        565|
|gatherings.original               |         0.0|         100.0|         20305|         14|
|obl.original                      |         0.0|         100.0|         20305|          2|
|original_row                      |         0.0|         100.0|         20305|      20305|
|author_pseudonyme                 |         0.0|         100.0|         20305|          2|
|publication_year                  |         0.0|         100.0|         20305|        260|
|publication_decade                |         0.0|         100.0|         20305|         31|
|gatherings                        |         0.0|         100.0|         20305|         14|
|volcount                          |         0.0|         100.0|         20305|          1|
|singlevol                         |         0.0|         100.0|         20305|          2|
|multivol                          |         0.0|         100.0|         20305|          1|
|issue                             |         0.0|         100.0|         20305|          1|



## Histograms of all entries for numeric variables

<img src="figure/summary-histograms-1.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-2.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-3.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-4.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-5.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-6.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-7.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-8.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-9.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-10.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-11.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-12.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-13.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-14.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-15.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-16.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-17.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-18.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-19.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" />


## Histograms of the top entries for factor variables

Non-trivial factors with at least 2 levels are shown.






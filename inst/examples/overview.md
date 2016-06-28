---
title: "Preprocessing overview"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2016-06-28"
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
  * [Page counts](pagecount.md)
  * [Physical dimension](dimension.md)    
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
|publication_year_till             |        98.6|           1.4|           986|        170|
|width.original                    |        97.1|           2.9|          2019|        307|
|height.original                   |        93.3|           6.7|          4617|        350|
|subject_geography                 |        91.5|           8.5|          5837|        779|
|note_granter                      |        91.5|           8.5|          5845|         98|
|note_510c                         |        90.3|           9.7|          6648|       6453|
|note_source                       |        82.9|          17.1|         11750|       5001|
|title_uniform                     |        82.2|          17.8|         12209|       8937|
|author_death                      |        74.0|          26.0|         17806|        364|
|first_edition                     |        73.4|          26.6|         18256|          3|
|author_birth                      |        72.7|          27.3|         18739|        347|
|corporate                         |        72.3|          27.7|         18969|        652|
|subject_topic                     |        69.5|          30.5|         20878|       3529|
|obl                               |        55.4|          44.6|         30550|          3|
|width                             |        48.8|          51.2|         35109|        310|
|height                            |        48.8|          51.2|         35109|        351|
|area                              |        48.8|          51.2|         35109|        811|
|paper.consumption.km2             |        48.8|          51.2|         35109|       4341|
|holder                            |        47.5|          52.5|         35961|       2122|
|author_gender                     |        44.3|          55.7|         38195|          4|
|self_published                    |        39.6|          60.4|         41391|          2|
|author_name                       |        33.2|          66.8|         45805|      12012|
|author                            |        33.2|          66.8|         45805|      12076|
|publisher                         |        12.3|          87.7|         60128|       6615|
|country                           |         4.2|          95.8|         65649|         34|
|publication_place                 |         4.2|          95.8|         65662|        411|
|pagecount.orig                    |         2.3|          97.7|         67017|        999|
|latitude                          |         1.2|          98.8|         67766|        333|
|longitude                         |         1.2|          98.8|         67766|        333|
|language                          |         1.1|          98.9|         67833|        256|
|publication_year_from             |         1.0|          99.0|         67882|        352|
|publication_year                  |         1.0|          99.0|         67901|        352|
|publication_decade                |         1.0|          99.0|         67901|         42|
|dissertation                      |         0.0|         100.0|         68535|          3|
|title                             |         0.0|         100.0|         68558|      54274|
|synodal                           |         0.0|         100.0|         68560|          3|
|language.Swedish                  |         0.0|         100.0|         68561|          2|
|language.Finnish                  |         0.0|         100.0|         68561|          2|
|language.Latin                    |         0.0|         100.0|         68561|          2|
|language.English                  |         0.0|         100.0|         68561|          2|
|language.French                   |         0.0|         100.0|         68561|          2|
|language.German                   |         0.0|         100.0|         68561|          2|
|language.Hebrew                   |         0.0|         100.0|         68561|          2|
|language.Greek, Ancient (to 1453) |         0.0|         100.0|         68561|          1|
|language.Arabic                   |         0.0|         100.0|         68561|          2|
|language.Italian                  |         0.0|         100.0|         68561|          2|
|language.Danish                   |         0.0|         100.0|         68561|          2|
|language.Sami                     |         0.0|         100.0|         68561|          2|
|language.Dutch                    |         0.0|         100.0|         68561|          2|
|language.Syriac, Modern           |         0.0|         100.0|         68561|          2|
|language.Spanish                  |         0.0|         100.0|         68561|          2|
|language.Lule Sami                |         0.0|         100.0|         68561|          2|
|language.Portuguese               |         0.0|         100.0|         68561|          2|
|language.Russian                  |         0.0|         100.0|         68561|          2|
|language.Northern Sami            |         0.0|         100.0|         68561|          2|
|language.Greek, Modern (1453-)    |         0.0|         100.0|         68561|          1|
|language.Estonian                 |         0.0|         100.0|         68561|          2|
|language.Esperanto                |         0.0|         100.0|         68561|          2|
|language.Norwegian                |         0.0|         100.0|         68561|          2|
|language.Polish                   |         0.0|         100.0|         68561|          2|
|language.Finno-Ugrian (Other)     |         0.0|         100.0|         68561|          1|
|language.Undetermined             |         0.0|         100.0|         68561|          2|
|language.Lithuanian               |         0.0|         100.0|         68561|          2|
|language.Hungarian                |         0.0|         100.0|         68561|          2|
|language.Tibetan                  |         0.0|         100.0|         68561|          2|
|language.Czech                    |         0.0|         100.0|         68561|          2|
|language.Afroasiatic (Other)      |         0.0|         100.0|         68561|          1|
|language.Latvian                  |         0.0|         100.0|         68561|          2|
|language.Icelandic                |         0.0|         100.0|         68561|          2|
|language.Ukrainian                |         0.0|         100.0|         68561|          2|
|language.Karelian                 |         0.0|         100.0|         68561|          2|
|language.Church Slavic            |         0.0|         100.0|         68561|          2|
|language.Erzya                    |         0.0|         100.0|         68561|          2|
|language.Yiddish                  |         0.0|         100.0|         68561|          2|
|language.Votic                    |         0.0|         100.0|         68561|          2|
|language.Germanic (Other)         |         0.0|         100.0|         68561|          1|
|language.Multiple languages       |         0.0|         100.0|         68561|          2|
|pagecount                         |         0.0|         100.0|         68561|        998|
|gatherings.original               |         0.0|         100.0|         68561|         18|
|obl.original                      |         0.0|         100.0|         68561|          2|
|original_row                      |         0.0|         100.0|         68561|      68561|
|author_pseudonyme                 |         0.0|         100.0|         68561|          2|
|gatherings                        |         0.0|         100.0|         68561|         18|
|volcount                          |         0.0|         100.0|         68561|          1|
|singlevol                         |         0.0|         100.0|         68561|          2|
|multivol                          |         0.0|         100.0|         68561|          1|
|issue                             |         0.0|         100.0|         68561|          1|



## Histograms of all entries for numeric variables

<img src="figure/summary-histograms-1.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-2.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-3.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-4.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-5.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-6.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-7.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-8.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-9.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-10.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-11.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-12.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-13.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-14.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-15.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-16.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-17.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-18.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-19.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" />


## Histograms of the top entries for factor variables

Non-trivial factors with at least 2 levels are shown.






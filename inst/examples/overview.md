---
title: "Preprocessing overview"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2016-07-18"
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

  * 71919 documents in the original raw data
  * 10000 documents in the final preprocessed data (13.9%)

Fraction of documents with data:

![plot of chunk summaryannotations](figure/summaryannotations-1.png)

Same in exact numbers: documents with available/missing entries, and number of unique entries for each field. Sorted by missing data:


|field name                     | missing (%)| available (%)| available (n)| unique (n)|
|:------------------------------|-----------:|-------------:|-------------:|----------:|
|volnumber                      |       100.0|           0.0|             0|          1|
|parts                          |        99.9|           0.1|             7|          3|
|uncontrolled                   |        99.9|           0.2|            15|         15|
|successor                      |        99.5|           0.5|            52|         53|
|publication_frequency          |        98.6|           1.5|           145|         28|
|width.original                 |        97.3|           2.7|           270|         98|
|publication_interval           |        95.2|           4.9|           485|        399|
|publication_year_till          |        93.8|           6.2|           625|         81|
|height.original                |        93.2|           6.8|           679|        113|
|subject_geography              |        92.2|           7.8|           783|        198|
|note_granter                   |        91.5|           8.5|           850|         35|
|note_510c                      |        90.7|           9.3|           929|        926|
|first_edition                  |        90.3|           9.7|           968|          3|
|note_source                    |        83.7|          16.3|          1628|        761|
|title_uniform                  |        82.7|          17.3|          1732|       1575|
|author_death                   |        75.2|          24.8|          2478|        305|
|author_birth                   |        73.9|          26.1|          2609|        296|
|corporate                      |        71.2|          28.8|          2882|        402|
|subject_topic                  |        70.8|          29.2|          2918|        920|
|obl                            |        53.9|          46.1|          4609|          3|
|holder                         |        50.2|          49.8|          4984|        625|
|self_published                 |        48.3|          51.7|          5170|          2|
|paper                          |        47.2|          52.8|          5276|       1334|
|width                          |        47.2|          52.8|          5279|        104|
|height                         |        47.2|          52.8|          5279|        119|
|area                           |        47.2|          52.8|          5279|        185|
|author_gender                  |        46.7|          53.3|          5333|          4|
|author_name                    |        36.4|          63.6|          6360|       3456|
|author                         |        36.4|          63.6|          6360|       3462|
|pagecount.orig                 |         7.1|          92.9|          9292|        616|
|publication_place              |         4.3|          95.7|          9574|        192|
|country                        |         4.3|          95.7|          9574|         25|
|latitude                       |         2.2|          97.8|          9784|        119|
|longitude                      |         2.2|          97.8|          9784|        119|
|language                       |         1.2|          98.8|          9883|        101|
|publication_year_from          |         0.9|          99.1|          9911|        316|
|publication_year               |         0.8|          99.2|          9915|        316|
|publication_decade             |         0.8|          99.2|          9915|         39|
|publisher                      |         0.2|          99.8|          9976|        377|
|pagecount                      |         0.0|         100.0|          9997|        616|
|dissertation                   |         0.0|         100.0|          9999|          3|
|language.Swedish               |         0.0|         100.0|         10000|          2|
|language.Finnish               |         0.0|         100.0|         10000|          2|
|language.French                |         0.0|         100.0|         10000|          2|
|language.Latin                 |         0.0|         100.0|         10000|          2|
|language.English               |         0.0|         100.0|         10000|          2|
|language.Italian               |         0.0|         100.0|         10000|          2|
|language.German                |         0.0|         100.0|         10000|          2|
|language.Greek Ancient to 1453 |         0.0|         100.0|         10000|          2|
|language.Russian               |         0.0|         100.0|         10000|          2|
|language.Danish                |         0.0|         100.0|         10000|          2|
|language.Spanish               |         0.0|         100.0|         10000|          2|
|language.Finno-Ugrian Other    |         0.0|         100.0|         10000|          2|
|language.Dutch                 |         0.0|         100.0|         10000|          2|
|language.Norwegian             |         0.0|         100.0|         10000|          2|
|language.Arabic                |         0.0|         100.0|         10000|          2|
|language.Estonian              |         0.0|         100.0|         10000|          2|
|language.Undetermined          |         0.0|         100.0|         10000|          2|
|language.Hebrew                |         0.0|         100.0|         10000|          2|
|language.Afroasiatic Other     |         0.0|         100.0|         10000|          2|
|language.Hungarian             |         0.0|         100.0|         10000|          2|
|language.Icelandic             |         0.0|         100.0|         10000|          2|
|language.Czech                 |         0.0|         100.0|         10000|          2|
|language.Esperanto             |         0.0|         100.0|         10000|          2|
|language.Karelian              |         0.0|         100.0|         10000|          2|
|language.Polish                |         0.0|         100.0|         10000|          2|
|language.Northern Sami         |         0.0|         100.0|         10000|          2|
|language.Church Slavic         |         0.0|         100.0|         10000|          2|
|language.Ukrainian             |         0.0|         100.0|         10000|          2|
|multilingual                   |         0.0|         100.0|         10000|          2|
|title                          |         0.0|         100.0|         10000|       9241|
|gatherings.original            |         0.0|         100.0|         10000|         14|
|obl.original                   |         0.0|         100.0|         10000|          2|
|synodal                        |         0.0|         100.0|         10000|          2|
|original_row                   |         0.0|         100.0|         10000|      10000|
|author_pseudonyme              |         0.0|         100.0|         10000|          2|
|gatherings                     |         0.0|         100.0|         10000|         14|
|volcount                       |         0.0|         100.0|         10000|          1|
|singlevol                      |         0.0|         100.0|         10000|          2|
|multivol                       |         0.0|         100.0|         10000|          1|
|issue                          |         0.0|         100.0|         10000|          2|



## Histograms of all entries for numeric variables

<img src="figure/summary-histograms-1.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-2.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-3.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-4.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-5.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-6.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-7.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-8.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-9.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-10.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-11.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-12.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-13.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-14.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-15.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-16.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-17.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-18.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-19.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" />


## Histograms of the top entries for factor variables

Non-trivial factors with at least 2 levels are shown.





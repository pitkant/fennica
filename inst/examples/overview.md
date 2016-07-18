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
|parts                          |        99.9|           0.1|             8|          4|
|uncontrolled                   |        99.9|           0.1|            11|         12|
|successor                      |        99.4|           0.6|            60|         61|
|publication_frequency          |        98.5|           1.5|           149|         22|
|width.original                 |        97.0|           3.0|           299|        107|
|publication_interval           |        95.3|           4.7|           470|        400|
|publication_year_till          |        93.9|           6.1|           606|         97|
|height.original                |        92.8|           7.1|           715|        115|
|note_granter                   |        91.9|           8.1|           813|         32|
|subject_geography              |        91.5|           8.5|           847|        221|
|note_510c                      |        90.5|           9.5|           952|        943|
|first_edition                  |        89.9|          10.1|          1006|          3|
|note_source                    |        83.6|          16.4|          1641|        775|
|title_uniform                  |        83.3|          16.7|          1673|       1491|
|author_death                   |        75.6|          24.4|          2440|        304|
|author_birth                   |        74.0|          26.0|          2598|        292|
|corporate                      |        71.5|          28.5|          2846|        399|
|subject_topic                  |        70.9|          29.1|          2914|        916|
|obl                            |        54.3|          45.7|          4572|          3|
|holder                         |        49.1|          50.9|          5086|        707|
|self_published                 |        48.1|          51.9|          5192|          2|
|paper                          |        47.3|          52.7|          5269|       1359|
|width                          |        47.3|          52.7|          5272|        114|
|height                         |        47.3|          52.7|          5272|        119|
|area                           |        47.3|          52.7|          5272|        196|
|author_gender                  |        46.7|          53.3|          5327|          4|
|author_name                    |        35.9|          64.1|          6409|       3477|
|author                         |        35.9|          64.1|          6409|       3480|
|pagecount.orig                 |         6.5|          93.5|          9346|        632|
|publication_place              |         3.9|          96.1|          9608|        187|
|country                        |         3.9|          96.1|          9608|         24|
|latitude                       |         2.0|          98.0|          9803|        118|
|longitude                      |         2.0|          98.0|          9803|        118|
|language                       |         1.0|          99.0|          9899|        104|
|publication_year_from          |         0.8|          99.2|          9918|        318|
|publication_year               |         0.8|          99.2|          9923|        318|
|publication_decade             |         0.8|          99.2|          9923|         39|
|publisher                      |         0.4|          99.6|          9963|        370|
|dissertation                   |         0.1|          99.9|          9994|          3|
|pagecount                      |         0.0|         100.0|          9997|        633|
|language.Finnish               |         0.0|         100.0|         10000|          2|
|language.Swedish               |         0.0|         100.0|         10000|          2|
|language.German                |         0.0|         100.0|         10000|          2|
|language.Latin                 |         0.0|         100.0|         10000|          2|
|language.Greek Ancient to 1453 |         0.0|         100.0|         10000|          2|
|language.French                |         0.0|         100.0|         10000|          2|
|language.English               |         0.0|         100.0|         10000|          2|
|language.Russian               |         0.0|         100.0|         10000|          2|
|language.Norwegian             |         0.0|         100.0|         10000|          2|
|language.Danish                |         0.0|         100.0|         10000|          2|
|language.Hungarian             |         0.0|         100.0|         10000|          2|
|language.Estonian              |         0.0|         100.0|         10000|          2|
|language.Polish                |         0.0|         100.0|         10000|          2|
|language.Icelandic             |         0.0|         100.0|         10000|          2|
|language.Italian               |         0.0|         100.0|         10000|          2|
|language.Finno-Ugrian Other    |         0.0|         100.0|         10000|          2|
|language.Northern Sami         |         0.0|         100.0|         10000|          2|
|language.Spanish               |         0.0|         100.0|         10000|          2|
|language.Greek Modern 1453-    |         0.0|         100.0|         10000|          2|
|language.Sami                  |         0.0|         100.0|         10000|          2|
|language.Lithuanian            |         0.0|         100.0|         10000|          2|
|language.Hebrew                |         0.0|         100.0|         10000|          2|
|language.Esperanto             |         0.0|         100.0|         10000|          2|
|language.Dutch                 |         0.0|         100.0|         10000|          2|
|multilingual                   |         0.0|         100.0|         10000|          2|
|title                          |         0.0|         100.0|         10000|       9248|
|gatherings.original            |         0.0|         100.0|         10000|         17|
|obl.original                   |         0.0|         100.0|         10000|          2|
|synodal                        |         0.0|         100.0|         10000|          2|
|original_row                   |         0.0|         100.0|         10000|      10000|
|author_pseudonyme              |         0.0|         100.0|         10000|          2|
|gatherings                     |         0.0|         100.0|         10000|         17|
|volcount                       |         0.0|         100.0|         10000|          1|
|singlevol                      |         0.0|         100.0|         10000|          2|
|multivol                       |         0.0|         100.0|         10000|          1|
|issue                          |         0.0|         100.0|         10000|          2|



## Histograms of all entries for numeric variables

<img src="figure/summary-histograms-1.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-2.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-3.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-4.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-5.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-6.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-7.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-8.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-9.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-10.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-11.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-12.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-13.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-14.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-15.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-16.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-17.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-18.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-19.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" />


## Histograms of the top entries for factor variables

Non-trivial factors with at least 2 levels are shown.





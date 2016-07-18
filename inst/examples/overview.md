---
title: "Preprocessing overview"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2016-07-19"
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
|parts                          |        99.9|           0.1|             6|          2|
|uncontrolled                   |        99.9|           0.1|            12|         13|
|successor                      |        99.3|           0.7|            71|         72|
|publication_frequency          |        98.6|           1.4|           138|         28|
|width.original                 |        97.4|           2.6|           264|         85|
|publication_interval           |        95.3|           4.7|           474|        402|
|publication_year_till          |        93.9|           6.1|           606|         90|
|height.original                |        93.3|           6.7|           673|        103|
|note_granter                   |        92.1|           7.9|           789|         32|
|subject_geography              |        91.8|           8.2|           816|        208|
|note_510c                      |        91.2|           8.8|           884|        875|
|first_edition                  |        89.8|          10.2|          1018|          3|
|note_source                    |        84.1|          15.9|          1588|        767|
|title_uniform                  |        83.1|          16.9|          1686|       1512|
|author_death                   |        75.3|          24.7|          2472|        295|
|author_birth                   |        74.0|          26.0|          2601|        293|
|corporate                      |        72.2|          27.8|          2780|        401|
|subject_topic                  |        71.7|          28.3|          2834|        908|
|obl                            |        55.0|          45.0|          4496|          3|
|holder                         |        49.3|          50.7|          5072|        669|
|paper                          |        48.4|          51.6|          5158|       1313|
|paper.check                    |        48.4|          51.6|          5158|       1313|
|width                          |        48.4|          51.6|          5160|         95|
|height                         |        48.4|          51.6|          5160|        106|
|area                           |        48.4|          51.6|          5160|        173|
|self_published                 |        47.9|          52.1|          5213|          3|
|author_gender                  |        46.7|          53.3|          5333|          4|
|author_name                    |        35.9|          64.1|          6411|       3429|
|author                         |        35.9|          64.1|          6411|       3435|
|pagecount.orig                 |         6.8|          93.2|          9317|        606|
|publication_place              |         4.3|          95.7|          9568|        184|
|country                        |         4.3|          95.7|          9568|         23|
|latitude                       |         2.0|          98.0|          9797|        115|
|longitude                      |         2.0|          98.0|          9797|        115|
|language                       |         0.9|          99.1|          9906|        112|
|publication_year_from          |         0.8|          99.2|          9916|        313|
|publication_year               |         0.8|          99.2|          9919|        313|
|publication_decade             |         0.8|          99.2|          9919|         38|
|publisher                      |         0.2|          99.8|          9978|        375|
|pagecount                      |         0.0|         100.0|          9998|        607|
|dissertation                   |         0.0|         100.0|          9998|          3|
|synodal                        |         0.0|         100.0|          9999|          3|
|language.Swedish               |         0.0|         100.0|         10000|          2|
|language.Finnish               |         0.0|         100.0|         10000|          2|
|language.Danish                |         0.0|         100.0|         10000|          2|
|language.Latin                 |         0.0|         100.0|         10000|          2|
|language.French                |         0.0|         100.0|         10000|          2|
|language.Germanic Other        |         0.0|         100.0|         10000|          2|
|language.English               |         0.0|         100.0|         10000|          2|
|language.German                |         0.0|         100.0|         10000|          2|
|language.Russian               |         0.0|         100.0|         10000|          2|
|language.Icelandic             |         0.0|         100.0|         10000|          2|
|language.Greek Ancient to 1453 |         0.0|         100.0|         10000|          2|
|language.Estonian              |         0.0|         100.0|         10000|          2|
|language.Dutch                 |         0.0|         100.0|         10000|          2|
|language.Hebrew                |         0.0|         100.0|         10000|          2|
|language.Afroasiatic Other     |         0.0|         100.0|         10000|          2|
|language.Norwegian             |         0.0|         100.0|         10000|          2|
|language.Finno-Ugrian Other    |         0.0|         100.0|         10000|          2|
|language.Polish                |         0.0|         100.0|         10000|          2|
|language.Arabic                |         0.0|         100.0|         10000|          2|
|language.Italian               |         0.0|         100.0|         10000|          2|
|language.Undetermined          |         0.0|         100.0|         10000|          2|
|language.Esperanto             |         0.0|         100.0|         10000|          2|
|language.Sami                  |         0.0|         100.0|         10000|          2|
|language.Karelian              |         0.0|         100.0|         10000|          2|
|language.Hungarian             |         0.0|         100.0|         10000|          2|
|language.Votic                 |         0.0|         100.0|         10000|          2|
|language.Church Slavic         |         0.0|         100.0|         10000|          2|
|multilingual                   |         0.0|         100.0|         10000|          2|
|title                          |         0.0|         100.0|         10000|       9231|
|gatherings.original            |         0.0|         100.0|         10000|         16|
|obl.original                   |         0.0|         100.0|         10000|          2|
|original_row                   |         0.0|         100.0|         10000|      10000|
|author_pseudonyme              |         0.0|         100.0|         10000|          2|
|gatherings                     |         0.0|         100.0|         10000|         16|
|volcount                       |         0.0|         100.0|         10000|          1|
|singlevol                      |         0.0|         100.0|         10000|          2|
|multivol                       |         0.0|         100.0|         10000|          1|
|issue                          |         0.0|         100.0|         10000|          2|



## Histograms of all entries for numeric variables

<img src="figure/summary-histograms-1.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-2.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-3.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-4.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-5.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-6.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-7.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-8.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-9.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-10.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-11.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-12.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-13.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-14.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-15.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-16.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-17.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-18.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-19.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-20.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" />


## Histograms of the top entries for factor variables

Non-trivial factors with at least 2 levels are shown.





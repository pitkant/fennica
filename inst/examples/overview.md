---
title: "Preprocessing overview"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2016-08-30"
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
  * 71919 documents in the final preprocessed data (100%)

Fraction of documents with data:

![plot of chunk summaryannotations](figure/summaryannotations-1.png)

Same in exact numbers: documents with available/missing entries, and number of unique entries for each field. Sorted by missing data:


|field name                     | missing (%)| available (%)| available (n)| unique (n)|
|:------------------------------|-----------:|-------------:|-------------:|----------:|
|volnumber                      |       100.0|           0.0|             0|          1|
|parts                          |        99.9|           0.1|            44|          8|
|uncontrolled                   |        99.8|           0.2|           111|         99|
|publisher                      |        99.7|           0.3|           190|        129|
|successor                      |        99.4|           0.6|           404|        396|
|publication_frequency          |        98.6|           1.4|          1001|         51|
|width.original                 |        97.2|           2.8|          2021|        307|
|publication_interval           |        95.3|           4.7|          3349|       2228|
|publication_year_till          |        94.0|           6.0|          4337|        195|
|height.original                |        93.0|           7.0|          5058|        350|
|subject_geography              |        91.9|           8.1|          5838|        779|
|note_granter                   |        91.9|           8.1|          5845|         98|
|note_510c                      |        90.8|           9.2|          6652|       6457|
|note_source                    |        83.7|          16.3|         11754|       5003|
|title_uniform                  |        83.0|          17.0|         12209|       8937|
|author_death                   |        75.2|          24.8|         17807|        364|
|author_birth                   |        73.9|          26.1|         18740|        347|
|first_edition                  |        73.7|          26.3|         18922|          3|
|corporate                      |        71.7|          28.3|         20324|       1419|
|subject_topic                  |        71.0|          29.0|         20889|       3533|
|obl                            |        54.6|          45.4|         32687|          3|
|holder                         |        49.5|          50.5|         36295|       2162|
|paper                          |        47.6|          52.4|         37664|       4266|
|width                          |        47.6|          52.4|         37687|        310|
|height                         |        47.6|          52.4|         37687|        351|
|area                           |        47.6|          52.4|         37687|        816|
|author_gender                  |        46.9|          53.1|         38197|          5|
|self_published                 |        42.8|          57.2|         41158|          2|
|author_name                    |        36.3|          63.7|         45806|      12012|
|author                         |        36.3|          63.7|         45806|      12076|
|pagecount.orig                 |         6.8|          93.2|         67048|        978|
|country                        |         4.3|          95.7|         68806|         34|
|publication_place              |         4.3|          95.7|         68807|        432|
|latitude                       |         2.0|          98.0|         70466|        199|
|longitude                      |         2.0|          98.0|         70466|        199|
|language                       |         1.0|          99.0|         71186|        259|
|publication_year_from          |         1.0|          99.0|         71235|        357|
|publication_year               |         0.9|          99.1|         71254|        357|
|publication_decade             |         0.9|          99.1|         71254|         44|
|dissertation                   |         0.0|         100.0|         71893|          3|
|pagecount                      |         0.0|         100.0|         71896|        978|
|title                          |         0.0|         100.0|         71916|      57062|
|synodal                        |         0.0|         100.0|         71918|          3|
|language.Swedish               |         0.0|         100.0|         71919|          2|
|language.Finnish               |         0.0|         100.0|         71919|          2|
|language.Latin                 |         0.0|         100.0|         71919|          2|
|language.English               |         0.0|         100.0|         71919|          2|
|language.French                |         0.0|         100.0|         71919|          2|
|language.German                |         0.0|         100.0|         71919|          2|
|language.Hebrew                |         0.0|         100.0|         71919|          2|
|language.Greek Ancient to 1453 |         0.0|         100.0|         71919|          2|
|language.Arabic                |         0.0|         100.0|         71919|          2|
|language.Italian               |         0.0|         100.0|         71919|          2|
|language.Danish                |         0.0|         100.0|         71919|          2|
|language.Sami                  |         0.0|         100.0|         71919|          2|
|language.Dutch                 |         0.0|         100.0|         71919|          2|
|language.Syriac Modern         |         0.0|         100.0|         71919|          2|
|language.Spanish               |         0.0|         100.0|         71919|          2|
|language.Lule Sami             |         0.0|         100.0|         71919|          2|
|language.Portuguese            |         0.0|         100.0|         71919|          2|
|language.Russian               |         0.0|         100.0|         71919|          2|
|language.Northern Sami         |         0.0|         100.0|         71919|          2|
|language.Greek Modern 1453-    |         0.0|         100.0|         71919|          2|
|language.Estonian              |         0.0|         100.0|         71919|          2|
|language.Esperanto             |         0.0|         100.0|         71919|          2|
|language.Norwegian             |         0.0|         100.0|         71919|          2|
|language.Polish                |         0.0|         100.0|         71919|          2|
|language.Finno-Ugrian Other    |         0.0|         100.0|         71919|          2|
|language.Undetermined          |         0.0|         100.0|         71919|          2|
|language.Lithuanian            |         0.0|         100.0|         71919|          2|
|language.Hungarian             |         0.0|         100.0|         71919|          2|
|language.Tibetan               |         0.0|         100.0|         71919|          2|
|language.Czech                 |         0.0|         100.0|         71919|          2|
|language.Afroasiatic Other     |         0.0|         100.0|         71919|          2|
|language.Latvian               |         0.0|         100.0|         71919|          2|
|language.Icelandic             |         0.0|         100.0|         71919|          2|
|language.Ukrainian             |         0.0|         100.0|         71919|          2|
|language.Karelian              |         0.0|         100.0|         71919|          2|
|language.Church Slavic         |         0.0|         100.0|         71919|          2|
|language.Erzya                 |         0.0|         100.0|         71919|          2|
|language.Yiddish               |         0.0|         100.0|         71919|          2|
|language.Votic                 |         0.0|         100.0|         71919|          2|
|language.Germanic Other        |         0.0|         100.0|         71919|          2|
|multilingual                   |         0.0|         100.0|         71919|          2|
|gatherings.original            |         0.0|         100.0|         71919|         18|
|obl.original                   |         0.0|         100.0|         71919|          2|
|original_row                   |         0.0|         100.0|         71919|      71919|
|author_pseudonyme              |         0.0|         100.0|         71919|          2|
|gatherings                     |         0.0|         100.0|         71919|         18|
|volcount                       |         0.0|         100.0|         71919|          1|
|singlevol                      |         0.0|         100.0|         71919|          2|
|multivol                       |         0.0|         100.0|         71919|          1|
|issue                          |         0.0|         100.0|         71919|          2|



## Histograms of all entries for numeric variables

<img src="figure/summary-histograms-1.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-2.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-3.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-4.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-5.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-6.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-7.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-8.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-9.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-10.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-11.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-12.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-13.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-14.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-15.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-16.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-17.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-18.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-19.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" />


## Histograms of the top entries for factor variables

Non-trivial factors with at least 2 levels are shown.





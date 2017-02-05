---
title: "Preprocessing overview"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2017-02-05"
output: markdown_document
---

# Preprocessing summary

The data spanning years 1488-1955 has been
included and contains 70471 documents (also other
filter may apply depending on the data collection, see the source code
for details.



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
  * 70471 documents in the final preprocessed data (97.99%)

Fraction of documents with data:

![plot of chunk summaryannotations](figure/summaryannotations-1.png)

Same in exact numbers: documents with available/missing entries, and number of unique entries for each field. Sorted by missing data:


|field name                     | missing (%)| available (%)| available (n)| unique (n)|
|:------------------------------|-----------:|-------------:|-------------:|----------:|
|volnumber                      |       100.0|           0.0|             0|          1|
|parts                          |        99.9|           0.1|            44|          8|
|uncontrolled                   |        99.8|           0.2|           111|         99|
|successor                      |        99.4|           0.6|           404|        396|
|publication_frequency_annual   |        98.4|           1.6|          1149|         82|
|publication_frequency_text     |        98.3|           1.7|          1218|         26|
|width.original                 |        97.2|           2.8|          1950|        293|
|publication_interval_from      |        96.1|           3.9|          2745|        106|
|publication_interval_till      |        96.1|           3.9|          2752|        113|
|publication_year_till          |        94.7|           5.3|          3724|        191|
|height.original                |        93.0|           7.0|          4950|        335|
|note_granter                   |        92.0|           8.0|          5665|         96|
|subject_geography              |        91.9|           8.1|          5692|        758|
|note_510c                      |        90.9|           9.1|          6384|       6203|
|note_source                    |        84.2|          15.8|         11143|       4662|
|title_uniform                  |        83.1|          16.9|         11885|       8676|
|author_age                     |        77.8|          22.2|         15648|        108|
|author_death                   |        74.9|          25.1|         17684|        364|
|author_birth                   |        74.7|          25.3|         17851|        340|
|first_edition                  |        73.2|          26.8|         18857|          3|
|corporate                      |        72.3|          27.7|         19545|       1404|
|subject_topic                  |        71.6|          28.4|         20021|       3481|
|obl                            |        51.6|          48.4|         34112|          3|
|holder                         |        49.4|          50.6|         35630|       2136|
|paper                          |        48.1|          51.9|         36549|       4241|
|width                          |        48.1|          51.9|         36560|        295|
|height                         |        48.1|          51.9|         36560|        336|
|area                           |        48.1|          51.9|         36560|        764|
|author_gender                  |        47.1|          52.9|         37295|          5|
|self_published                 |        42.9|          57.1|         40262|          2|
|author_name                    |        36.5|          63.5|         44725|      11621|
|author                         |        36.5|          63.5|         44729|      11684|
|publisher                      |        13.8|          86.2|         60741|      12973|
|pagecount.orig                 |         6.8|          93.2|         65678|        980|
|country                        |         4.1|          95.9|         67556|         33|
|publication_place              |         4.1|          95.9|         67557|        425|
|latitude                       |         2.0|          98.0|         69068|        195|
|longitude                      |         2.0|          98.0|         69068|        195|
|language                       |         1.0|          99.0|         69744|        255|
|publication_year_from          |         0.1|          99.9|         70433|        357|
|dissertation                   |         0.0|         100.0|         70450|          3|
|pagecount                      |         0.0|         100.0|         70460|        980|
|title                          |         0.0|         100.0|         70468|      55881|
|pagecount.sheet                |         0.0|         100.0|         70469|        783|
|synodal                        |         0.0|         100.0|         70470|          3|
|language.Swedish               |         0.0|         100.0|         70471|          2|
|language.Finnish               |         0.0|         100.0|         70471|          2|
|language.Latin                 |         0.0|         100.0|         70471|          2|
|language.English               |         0.0|         100.0|         70471|          2|
|language.French                |         0.0|         100.0|         70471|          2|
|language.German                |         0.0|         100.0|         70471|          2|
|language.Hebrew                |         0.0|         100.0|         70471|          2|
|language.Greek Ancient to 1453 |         0.0|         100.0|         70471|          2|
|language.Arabic                |         0.0|         100.0|         70471|          2|
|language.Italian               |         0.0|         100.0|         70471|          2|
|language.Danish                |         0.0|         100.0|         70471|          2|
|language.Sami                  |         0.0|         100.0|         70471|          2|
|language.Dutch                 |         0.0|         100.0|         70471|          2|
|language.Syriac Modern         |         0.0|         100.0|         70471|          2|
|language.Spanish               |         0.0|         100.0|         70471|          2|
|language.Lule Sami             |         0.0|         100.0|         70471|          2|
|language.Portuguese            |         0.0|         100.0|         70471|          2|
|language.Russian               |         0.0|         100.0|         70471|          2|
|language.Northern Sami         |         0.0|         100.0|         70471|          2|
|language.Greek Modern 1453-    |         0.0|         100.0|         70471|          2|
|language.Estonian              |         0.0|         100.0|         70471|          2|
|language.Esperanto             |         0.0|         100.0|         70471|          2|
|language.Norwegian             |         0.0|         100.0|         70471|          2|
|language.Polish                |         0.0|         100.0|         70471|          2|
|language.Finno-Ugrian Other    |         0.0|         100.0|         70471|          2|
|language.Undetermined          |         0.0|         100.0|         70471|          2|
|language.Lithuanian            |         0.0|         100.0|         70471|          2|
|language.Hungarian             |         0.0|         100.0|         70471|          2|
|language.Tibetan               |         0.0|         100.0|         70471|          2|
|language.Czech                 |         0.0|         100.0|         70471|          2|
|language.Afroasiatic Other     |         0.0|         100.0|         70471|          2|
|language.Latvian               |         0.0|         100.0|         70471|          2|
|language.Icelandic             |         0.0|         100.0|         70471|          2|
|language.Ukrainian             |         0.0|         100.0|         70471|          2|
|language.Karelian              |         0.0|         100.0|         70471|          2|
|language.Church Slavic         |         0.0|         100.0|         70471|          2|
|language.Erzya                 |         0.0|         100.0|         70471|          2|
|language.Yiddish               |         0.0|         100.0|         70471|          2|
|language.Votic                 |         0.0|         100.0|         70471|          2|
|language.Germanic Other        |         0.0|         100.0|         70471|          2|
|multilingual                   |         0.0|         100.0|         70471|          2|
|pagecount.multiplier           |         0.0|         100.0|         70471|          1|
|pagecount.squarebracket        |         0.0|         100.0|         70471|        364|
|pagecount.plate                |         0.0|         100.0|         70471|         56|
|pagecount.arabic               |         0.0|         100.0|         70471|        835|
|pagecount.roman                |         0.0|         100.0|         70471|        109|
|gatherings.original            |         0.0|         100.0|         70471|         18|
|obl.original                   |         0.0|         100.0|         70471|          2|
|original_row                   |         0.0|         100.0|         70471|      70471|
|pagecount_from                 |         0.0|         100.0|         70471|          2|
|author_pseudonyme              |         0.0|         100.0|         70471|          2|
|publication_year               |         0.0|         100.0|         70471|        356|
|publication_decade             |         0.0|         100.0|         70471|         44|
|gatherings                     |         0.0|         100.0|         70471|         18|
|volcount                       |         0.0|         100.0|         70471|          1|
|singlevol                      |         0.0|         100.0|         70471|          2|
|multivol                       |         0.0|         100.0|         70471|          1|
|issue                          |         0.0|         100.0|         70471|          1|

```
##            used  (Mb) gc trigger  (Mb) max used  (Mb)
## Ncells   909163  48.6    1770749  94.6  1770749  94.6
## Vcells 20509911 156.5   48411544 369.4 48294888 368.5
```



## Histograms of all entries for numeric variables


```
## Error in freq && !equidist: invalid 'x' type in 'x && y'
```


## Histograms of the top entries for factor variables

Non-trivial factors with at least 2 levels are shown.





---
title: "Preprocessing overview"
author: "Helsinki Computational History Group (COMHIS)"
date: "2020-12-02"
output: markdown_document
---

# Preprocessing summary

The data spanning years 1522-1972 has been included and contains 71301 documents (also other filter may apply depending on the data collection, see the source code for details.



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


## Annotated documents

  * 71919 documents in the original raw data
  * 71301 documents in the final preprocessed data (99.14%)

Fraction of documents with data:

![plot of chunk summaryannotations](figure/summaryannotations-1.png)

Same in exact numbers: documents with available/missing entries, and number of unique entries for each field. Sorted by missing data:


Table: Data availability

|field name                   | available (%)| available (n)| missing (%)| unique (n)|
|:----------------------------|-------------:|-------------:|-----------:|----------:|
|width.original               |           0.0|             0|       100.0|          1|
|parts                        |           0.1|            44|        99.9|          8|
|uncontrolled                 |           0.2|           109|        99.8|         97|
|successor                    |           0.6|           403|        99.4|        395|
|publication_frequency_annual |           1.6|          1148|        98.4|         82|
|publication_frequency_text   |           1.7|          1216|        98.3|         26|
|publication_interval_from    |           3.4|          2428|        96.6|        103|
|publication_interval_till    |           3.4|          2434|        96.6|        110|
|height.original              |           4.2|          3013|        95.8|         46|
|publication_year_till        |           6.8|          4824|        93.2|        307|
|subject_geography            |           8.1|          5785|        91.9|        765|
|note_granter                 |           8.2|          5845|        91.8|         98|
|note_510c                    |           9.3|          6649|        90.7|       6454|
|note_source                  |          16.4|         11724|        83.6|       4979|
|title_uniform                |          17.1|         12194|        82.9|       8924|
|author_age                   |          22.0|         15674|        78.0|        113|
|author_death                 |          24.9|         17736|        75.1|        364|
|author_birth                 |          26.2|         18660|        73.8|        343|
|first_edition                |          26.6|         18948|        73.4|          3|
|corporate                    |          28.5|         20305|        71.5|       1415|
|subject_topic                |          29.2|         20802|        70.8|       3514|
|gatherings.original          |          45.5|         32465|        54.5|         18|
|author_gender                |          47.1|         33566|        52.9|          5|
|gatherings                   |          47.5|         33888|        52.5|         18|
|width                        |          49.7|         35417|        50.3|         38|
|height                       |          49.7|         35417|        50.3|         50|
|area                         |          49.7|         35417|        50.3|         65|
|holder                       |          50.6|         36094|        49.4|       2136|
|original                     |          52.8|         37627|        47.2|       1020|
|author_name                  |          63.9|         45535|        36.1|      11974|
|author                       |          63.9|         45535|        36.1|      12035|
|self_published               |          79.9|         56936|        20.1|          3|
|publisher                    |          86.3|         61566|        13.7|       8130|
|pagecount                    |          93.3|         66489|         6.7|        981|
|longitude                    |          95.6|         68166|         4.4|        386|
|latitude                     |          95.6|         68166|         4.4|        383|
|publication_country          |          95.9|         68345|         4.1|         34|
|publication_place            |          95.9|         68351|         4.1|        430|
|dissertation                 |         100.0|         71275|         0.0|          3|
|publication_year_from        |         100.0|         71283|         0.0|        358|
|title                        |         100.0|         71298|         0.0|      56637|
|pagecount.sheet              |         100.0|         71299|         0.0|        783|
|synodal                      |         100.0|         71300|         0.0|          3|
|original_row                 |         100.0|         71301|         0.0|      71301|
|language_count               |         100.0|         71301|         0.0|          7|
|multilingual                 |         100.0|         71301|         0.0|          2|
|languages                    |         100.0|         71301|         0.0|        255|
|language_primary             |         100.0|         71301|         0.0|         35|
|pagecount.multiplier         |         100.0|         71301|         0.0|          1|
|pagecount.squarebracket      |         100.0|         71301|         0.0|        367|
|pagecount.plate              |         100.0|         71301|         0.0|         56|
|pagecount.arabic             |         100.0|         71301|         0.0|        833|
|pagecount.roman              |         100.0|         71301|         0.0|        109|
|obl.original                 |         100.0|         71301|         0.0|          2|
|obl                          |         100.0|         71301|         0.0|          2|
|pagecount_from               |         100.0|         71301|         0.0|          1|
|author_pseudonyme            |         100.0|         71301|         0.0|          2|
|publication_year             |         100.0|         71301|         0.0|        357|
|publication_decade           |         100.0|         71301|         0.0|         44|
|issue                        |         100.0|         71301|         0.0|          1|

```
##            used  (Mb) gc trigger  (Mb) max used  (Mb)
## Ncells  1754470  93.7    4956526 264.8  6195657 330.9
## Vcells 21362809 163.0   38211816 291.6 38204471 291.5
```


## Field conversions

This documents the conversions from raw data to the final preprocessed version (accepted, discarded, conversions). Only some of the key tables are explicitly linked below. The complete list of all summary tables is [here](output.tables/).

Brief description of the fields:

 * [Description of the original MARC fields](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/fieldnames.csv)

 * [Description of the preprocessed fields](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/fieldname_table.csv)


## Histograms of all entries for numeric variables


```
## Error in which(num): argument to 'which' is not logical
```

```
## Error in eval(expr, envir, enclos): object 'numeric.fields' not found
```


## Histograms of the top entries for factor variables

Non-trivial factors with at least 2 levels are shown.


```
## Error in which(fac): argument to 'which' is not logical
```

```
## Error in eval(expr, envir, enclos): object 'factor.fields' not found
```



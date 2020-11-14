---
title: "Preprocessing overview"
author: "Helsinki Computational History Group (COMHIS)"
date: "2020-11-14"
output: markdown_document
---

# Preprocessing summary

The data spanning years 1522-1972 has been included and contains 70489 documents (also other filter may apply depending on the data collection, see the source code for details.



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
  * 70489 documents in the final preprocessed data (98.01%)

Fraction of documents with data:

![plot of chunk summaryannotations](figure/summaryannotations-1.png)

Same in exact numbers: documents with available/missing entries, and number of unique entries for each field. Sorted by missing data:


Table: Data availability

|field name                   | available (%)| available (n)| missing (%)| unique (n)|
|:----------------------------|-------------:|-------------:|-----------:|----------:|
|width.original               |           0.0|             0|       100.0|          1|
|volnumber                    |           0.0|             0|       100.0|          1|
|parts                        |           0.1|            44|        99.9|          8|
|uncontrolled                 |           0.2|           109|        99.8|         97|
|successor                    |           0.6|           403|        99.4|        395|
|publication_frequency_annual |           1.6|          1148|        98.4|         82|
|publication_frequency_text   |           1.7|          1216|        98.3|         26|
|publication_interval_from    |           3.4|          2428|        96.6|        103|
|publication_interval_till    |           3.5|          2434|        96.5|        110|
|height.original              |           4.3|          3013|        95.7|         46|
|publication_year_till        |           6.8|          4795|        93.2|        303|
|note_granter                 |           8.0|          5666|        92.0|         96|
|subject_geography            |           8.1|          5706|        91.9|        759|
|note_510c                    |           9.1|          6384|        90.9|       6203|
|note_source                  |          15.8|         11145|        84.2|       4662|
|title_uniform                |          16.9|         11892|        83.1|       8681|
|author_age                   |          22.2|         15627|        77.8|         90|
|author_death                 |          25.1|         17685|        74.9|        363|
|author_birth                 |          25.3|         17844|        74.7|        338|
|first_edition                |          26.8|         18882|        73.2|          3|
|corporate                    |          27.7|         19544|        72.3|       1407|
|subject_topic                |          28.4|         20033|        71.6|       3481|
|gatherings.original          |          44.9|         31672|        55.1|         18|
|author_gender                |          46.6|         32883|        53.4|          5|
|gatherings                   |          47.0|         33095|        53.0|         17|
|paper                        |          48.8|         34387|        51.2|       3304|
|print_area                   |          48.8|         34387|        51.2|       3304|
|width                        |          49.1|         34624|        50.9|         36|
|height                       |          49.1|         34624|        50.9|         49|
|area                         |          49.1|         34624|        50.9|         64|
|holder                       |          50.5|         35624|        49.5|       2136|
|author_name                  |          63.4|         44723|        36.6|      11624|
|author                       |          63.4|         44723|        36.6|      11685|
|self_published               |          79.7|         56180|        20.3|          3|
|publisher                    |          86.3|         60810|        13.7|       8120|
|longitude                    |          95.8|         67554|         4.2|        386|
|latitude                     |          95.8|         67554|         4.2|        383|
|publication_country          |          95.9|         67566|         4.1|         34|
|publication_place            |          95.9|         67572|         4.1|        429|
|pagecount                    |          97.3|         68620|         2.7|        977|
|pagecount.orig               |          97.3|         68620|         2.7|        977|
|obl                          |          97.8|         68931|         2.2|          3|
|dissertation                 |         100.0|         70468|         0.0|          3|
|publication_year_from        |         100.0|         70471|         0.0|        357|
|title                        |         100.0|         70486|         0.0|      55882|
|pagecount.sheet              |         100.0|         70487|         0.0|        783|
|synodal                      |         100.0|         70488|         0.0|          3|
|language_count               |         100.0|         70489|         0.0|          7|
|multilingual                 |         100.0|         70489|         0.0|          2|
|languages                    |         100.0|         70489|         0.0|        253|
|language_primary             |         100.0|         70489|         0.0|         35|
|pagecount.multiplier         |         100.0|         70489|         0.0|          1|
|pagecount.squarebracket      |         100.0|         70489|         0.0|        364|
|pagecount.plate              |         100.0|         70489|         0.0|         56|
|pagecount.arabic             |         100.0|         70489|         0.0|        833|
|pagecount.roman              |         100.0|         70489|         0.0|        109|
|obl.original                 |         100.0|         70489|         0.0|          2|
|original_row                 |         100.0|         70489|         0.0|      70489|
|pagecount_from               |         100.0|         70489|         0.0|          1|
|author_pseudonyme            |         100.0|         70489|         0.0|          2|
|publication_year             |         100.0|         70489|         0.0|        356|
|publication_decade           |         100.0|         70489|         0.0|         44|
|volcount                     |         100.0|         70489|         0.0|          1|
|singlevol                    |         100.0|         70489|         0.0|          2|
|multivol                     |         100.0|         70489|         0.0|          1|
|issue                        |         100.0|         70489|         0.0|          1|

```
##            used  (Mb) gc trigger  (Mb) max used  (Mb)
## Ncells  1504034  80.4    3733433 199.4  3993834 213.3
## Vcells 22474437 171.5   48936916 373.4 40677340 310.4
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



---
title: "Preprocessing overview"
author: "Helsinki Computational History Group (COMHIS)"
date: "2019-11-09"
output: markdown_document
---

# Preprocessing summary

The data spanning years 1488-1999 has been included and contains 70450 documents (also other filter may apply depending on the data collection, see the source code for details.



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
  * 70450 documents in the final preprocessed data (97.96%)

Fraction of documents with data:

![plot of chunk summaryannotations](figure/summaryannotations-1.png)

Same in exact numbers: documents with available/missing entries, and number of unique entries for each field. Sorted by missing data:


|field name                   | available (%)| available (n)| missing (%)| unique (n)|
|:----------------------------|-------------:|-------------:|-----------:|----------:|
|volnumber                    |           0.0|             0|       100.0|          1|
|parts                        |           0.1|            44|        99.9|          8|
|uncontrolled                 |           0.2|           111|        99.8|         99|
|successor                    |           0.6|           404|        99.4|        396|
|publication_frequency_annual |           1.6|          1149|        98.4|         82|
|publication_frequency_text   |           1.7|          1218|        98.3|         26|
|width.original               |           2.8|          1950|        97.2|        293|
|publication_interval_from    |           3.9|          2744|        96.1|        107|
|publication_interval_till    |           3.9|          2751|        96.1|        114|
|publication_year_till        |           5.3|          3724|        94.7|        193|
|height.original              |           7.0|          4951|        93.0|        335|
|note_granter                 |           8.0|          5665|        92.0|         96|
|subject_geography            |           8.1|          5692|        91.9|        758|
|note_510c                    |           9.1|          6382|        90.9|       6201|
|note_source                  |          15.8|         11135|        84.2|       4656|
|title_uniform                |          16.9|         11883|        83.1|       8674|
|author_age                   |          22.2|         15629|        77.8|         90|
|author_death                 |          25.1|         17682|        74.9|        364|
|author_birth                 |          25.3|         17845|        74.7|        338|
|first_edition                |          26.8|         18858|        73.2|          3|
|corporate                    |          27.7|         19529|        72.3|       1405|
|subject_topic                |          28.4|         20001|        71.6|       3480|
|gatherings.original          |          44.9|         31655|        55.1|         17|
|author_gender                |          46.7|         32868|        53.3|          5|
|gatherings                   |          48.4|         34091|        51.6|         17|
|holder                       |          50.6|         35615|        49.4|       2136|
|paper                        |          51.5|         36278|        48.5|       4220|
|print_area                   |          51.5|         36278|        48.5|       4220|
|width                        |          51.9|         36541|        48.1|        295|
|height                       |          51.9|         36541|        48.1|        336|
|area                         |          51.9|         36541|        48.1|        764|
|author_name                  |          63.5|         44705|        36.5|      11621|
|author                       |          63.5|         44705|        36.5|      11682|
|self_published               |          79.7|         56152|        20.3|          3|
|publisher                    |          86.3|         60778|        13.7|       8110|
|longitude                    |          95.8|         67522|         4.2|        384|
|latitude                     |          95.8|         67522|         4.2|        381|
|publication_country          |          95.9|         67534|         4.1|         34|
|publication_place            |          95.9|         67540|         4.1|        427|
|obl                          |          96.5|         67971|         3.5|          3|
|pagecount                    |          97.3|         68581|         2.7|        980|
|pagecount.orig               |          97.3|         68581|         2.7|        980|
|dissertation                 |         100.0|         70429|         0.0|          3|
|publication_year_from        |         100.0|         70431|         0.0|        358|
|title                        |         100.0|         70447|         0.0|      55861|
|pagecount.sheet              |         100.0|         70448|         0.0|        783|
|synodal                      |         100.0|         70449|         0.0|          3|
|language_count               |         100.0|         70450|         0.0|          7|
|multilingual                 |         100.0|         70450|         0.0|          2|
|languages                    |         100.0|         70450|         0.0|        253|
|language_primary             |         100.0|         70450|         0.0|         35|
|pagecount.multiplier         |         100.0|         70450|         0.0|          1|
|pagecount.squarebracket      |         100.0|         70450|         0.0|        364|
|pagecount.plate              |         100.0|         70450|         0.0|         56|
|pagecount.arabic             |         100.0|         70450|         0.0|        835|
|pagecount.roman              |         100.0|         70450|         0.0|        109|
|obl.original                 |         100.0|         70450|         0.0|          2|
|original_row                 |         100.0|         70450|         0.0|      70450|
|pagecount_from               |         100.0|         70450|         0.0|          1|
|author_pseudonyme            |         100.0|         70450|         0.0|          2|
|publication_year             |         100.0|         70450|         0.0|        358|
|publication_decade           |         100.0|         70450|         0.0|         46|
|volcount                     |         100.0|         70450|         0.0|          1|
|singlevol                    |         100.0|         70450|         0.0|          2|
|multivol                     |         100.0|         70450|         0.0|          1|
|issue                        |         100.0|         70450|         0.0|          1|

```
##            used  (Mb) gc trigger  (Mb) max used  (Mb)
## Ncells  1418585  75.8    3965152 211.8  4956441 264.8
## Vcells 20462207 156.2   43227140 329.8 43210034 329.7
```


## Field conversions

This documents the conversions from raw data to the final preprocessed version (accepted, discarded, conversions). Only some of the key tables are explicitly linked below. The complete list of all summary tables is [here](output.tables/).

Brief description of the fields:

 * [Description of the original MARC fields](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/fieldnames.csv)

 * [Description of the preprocessed fields](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/fieldname_table.csv)


## Histograms of all entries for numeric variables

<img src="figure/summary-histograms-1.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-2.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-3.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-4.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-5.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-6.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-7.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-8.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-9.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-10.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-11.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-12.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-13.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-14.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-15.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-16.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-17.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-18.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-19.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-20.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-21.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-22.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-23.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-24.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-25.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-26.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-27.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-28.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-29.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-30.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" />


## Histograms of the top entries for factor variables

Non-trivial factors with at least 2 levels are shown.





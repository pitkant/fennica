---
title: "Preprocessing overview"
author: "Leo Lahti"
date: "2016-04-02"
output: markdown_document
---

# Summary

Date:


```
## [1] "Sat Apr  2 10:00:51 2016"
```


## Specific fields

  * [Author info](author.md)
  * [Gender info](gender.md)
  * [Publisher info](publisher.md)
  * [Publication geography](publicationplace.md)
  * [Generic document info](documents.md)
  * [Document sizes](size.md)
  * [Document topics](topic.md)


## Field conversions

This documents the conversions from raw data to the final preprocessed version (accepted, discarded, conversions). Only some of the key tables are explicitly linked below. The complete list of all summary tables is [here](output.tables/).

## Annotated documents

Fraction of documents with entries:

![plot of chunk summaryannotations](figure/summaryannotations-1.png)

Documents with data (number and percentage) and number of unique entries for each field:


|field_name            | missing| available|     n| unique_entries|
|:---------------------|-------:|---------:|-----:|--------------:|
|volnumber             |   100.0|       0.0|     0|              1|
|publication_frequency |   100.0|       0.0|     0|              1|
|publication_interval  |   100.0|       0.0|     0|              1|
|uncontrolled          |   100.0|       0.0|     0|              1|
|successor             |   100.0|       0.0|     0|              1|
|width.original        |    99.9|       0.1|    23|             12|
|height.original       |    99.8|       0.2|    41|             15|
|publication_year_till |    99.2|       0.8|   136|             69|
|physical_accomppanied |    98.8|       1.2|   204|             43|
|physical_details      |    98.4|       1.6|   256|             33|
|language2             |    97.3|       2.7|   448|             24|
|subject_geography     |    76.3|      23.7|  3899|            374|
|note_year             |    75.3|      24.7|  4062|            217|
|note_granter          |    75.3|      24.7|  4070|             28|
|author_gender         |    71.9|      28.1|  4625|              3|
|note_510c             |    69.2|      30.8|  5081|           4973|
|self_published        |    67.6|      32.4|  5343|              3|
|author                |    67.0|      33.0|  5439|           1547|
|author_name           |    66.9|      33.1|  5453|           1544|
|author_death          |    61.5|      38.5|  6339|            249|
|author_birth          |    56.9|      43.1|  7100|            244|
|note_source           |    45.5|      54.5|  8970|           3829|
|title_uniform         |    42.0|      58.0|  9546|           7394|
|title_remainder       |    42.0|      58.0|  9554|           9289|
|holder                |    38.4|      61.6| 10145|             28|
|note_general          |     7.4|      92.6| 15260|           8132|
|subject_topic         |     3.3|      96.7| 15928|           2825|
|corporate             |     1.6|      98.4| 16200|            417|
|publisher             |     1.3|      98.7| 16249|           2816|
|obl                   |     0.2|      99.8| 16431|              3|
|dissertation          |     0.1|      99.9| 16449|              3|
|synodal               |     0.1|      99.9| 16449|              2|
|latitude              |     0.1|      99.9| 16462|             81|
|longitude             |     0.1|      99.9| 16462|             81|
|publication_year_from |     0.0|     100.0| 16466|            256|
|language.finnish      |     0.0|     100.0| 16471|              2|
|language.swedish      |     0.0|     100.0| 16471|              2|
|language.latin        |     0.0|     100.0| 16471|              2|
|language.german       |     0.0|     100.0| 16471|              2|
|language.english      |     0.0|     100.0| 16471|              2|
|language.french       |     0.0|     100.0| 16471|              2|
|language.russian      |     0.0|     100.0| 16471|              2|
|language.greek        |     0.0|     100.0| 16471|              2|
|language.danish       |     0.0|     100.0| 16471|              2|
|language.italian      |     0.0|     100.0| 16471|              2|
|language.hebrew       |     0.0|     100.0| 16471|              2|
|language.dutch        |     0.0|     100.0| 16471|              2|
|language.spanish      |     0.0|     100.0| 16471|              2|
|language.sami         |     0.0|     100.0| 16471|              2|
|language.modern_greek |     0.0|     100.0| 16471|              2|
|language.icelandic    |     0.0|     100.0| 16471|              1|
|language.arabic       |     0.0|     100.0| 16471|              2|
|language.portuguese   |     0.0|     100.0| 16471|              2|
|language.finnougrian  |     0.0|     100.0| 16471|              1|
|language.multiple     |     0.0|     100.0| 16471|              2|
|language.undetermined |     0.0|     100.0| 16471|              2|
|title                 |     0.0|     100.0| 16471|          13753|
|pagecount             |     0.0|     100.0| 16471|            220|
|volcount              |     0.0|     100.0| 16471|              1|
|gatherings.original   |     0.0|     100.0| 16471|             14|
|obl.original          |     0.0|     100.0| 16471|              2|
|original_row          |     0.0|     100.0| 16471|          16471|
|gatherings            |     0.0|     100.0| 16471|             14|
|width                 |     0.0|     100.0| 16471|             26|
|height                |     0.0|     100.0| 16471|             24|
|area                  |     0.0|     100.0| 16471|             34|
|publication_year      |     0.0|     100.0| 16471|            255|
|publication_decade    |     0.0|     100.0| 16471|             31|
|publication_place     |     0.0|     100.0| 16471|             83|
|country               |     0.0|     100.0| 16471|             16|
|paper.consumption.km2 |     0.0|     100.0| 16471|            504|
|author_pseudonyme     |     0.0|     100.0| 16471|              1|
|pagecount.orig        |     0.0|     100.0| 16471|            220|
|myplace               |     0.0|     100.0| 16471|              3|


## Histograms of all entries for numeric variables

<img src="figure/summary-histograms-1.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-2.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-3.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-4.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-5.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-6.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-7.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-8.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-9.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-10.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-11.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-12.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-13.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-14.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-15.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-16.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-17.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" />

## Histograms of the top entries for factor variables


```
## Error in dfs$names: $ operator is invalid for atomic vectors
```

<img src="figure/summary-bars-1.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-2.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-3.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-4.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-5.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-6.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-7.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-8.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-9.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" />




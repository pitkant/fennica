---
title: "Preprocessing overview"
author: "Leo Lahti"
date: "2016-04-08"
output: markdown_document
---

# Preprocessing summary

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

Fraction of documents with data:

![plot of chunk summaryannotations](figure/summaryannotations-1.png)

Same in exact numbers: documents with available/missing entries, and number of unique entries for each field. Sorted by missing data:


|field name            | missing (%)| available (%)| available (n)| unique (n)|
|:---------------------|-----------:|-------------:|-------------:|----------:|
|uncontrolled          |        99.8|           0.2|           111|         99|
|successor             |        99.4|           0.6|           404|        396|
|publication_frequency |        98.6|           1.4|           997|         51|
|width.original        |        97.3|           2.7|          1952|        293|
|publication_year_till |        93.9|           6.1|          4330|        190|
|height.original       |        93.1|           6.9|          4949|        335|
|subject_geography     |        91.9|           8.1|          5771|        764|
|note_granter          |        91.8|           8.2|          5843|         98|
|note_510c             |        90.7|           9.3|          6645|       6450|
|note_source           |        83.6|          16.4|         11710|       4972|
|title_uniform         |        82.9|          17.1|         12182|       8915|
|author_death          |        75.3|          24.7|         17590|        363|
|author_birth          |        74.0|          26.0|         18552|        346|
|corporate             |        71.5|          28.5|         20281|       1406|
|subject_topic         |        70.9|          29.1|         20766|       3513|
|author_gender         |        66.6|          33.4|         23801|          3|
|paper.consumption.km2 |        65.3|          34.7|         24696|       1266|
|self_published        |        59.3|          40.7|         29020|          3|
|obl                   |        54.5|          45.5|         32440|          3|
|author                |        51.8|          48.2|         34333|       9044|
|author_name           |        51.4|          48.6|         34596|       9143|
|holder                |        49.4|          50.6|         36083|       2136|
|width                 |        47.6|          52.4|         37328|        296|
|height                |        47.6|          52.4|         37328|        336|
|area                  |        47.6|          52.4|         37328|        766|
|pagecount             |        43.0|          57.0|         40579|        393|
|pagecount.orig        |        43.0|          57.0|         40579|        393|
|publisher             |        17.5|          82.5|         58766|      10750|
|country               |         4.3|          95.7|         68214|         34|
|publication_place     |         4.1|          95.9|         68318|        465|
|latitude              |         1.2|          98.8|         70362|        365|
|longitude             |         1.2|          98.8|         70362|        365|
|dissertation          |         0.0|         100.0|         71222|          3|
|synodal               |         0.0|         100.0|         71222|          2|
|publication_year_from |         0.0|         100.0|         71229|        351|
|title                 |         0.0|         100.0|         71245|      56603|
|language.finnish      |         0.0|         100.0|         71248|          2|
|language.swedish      |         0.0|         100.0|         71248|          2|
|language.latin        |         0.0|         100.0|         71248|          2|
|language.german       |         0.0|         100.0|         71248|          2|
|language.english      |         0.0|         100.0|         71248|          2|
|language.french       |         0.0|         100.0|         71248|          2|
|language.russian      |         0.0|         100.0|         71248|          2|
|language.greek        |         0.0|         100.0|         71248|          2|
|language.danish       |         0.0|         100.0|         71248|          2|
|language.italian      |         0.0|         100.0|         71248|          2|
|language.hebrew       |         0.0|         100.0|         71248|          2|
|language.dutch        |         0.0|         100.0|         71248|          2|
|language.spanish      |         0.0|         100.0|         71248|          2|
|language.sami         |         0.0|         100.0|         71248|          2|
|language.modern_greek |         0.0|         100.0|         71248|          2|
|language.icelandic    |         0.0|         100.0|         71248|          2|
|language.arabic       |         0.0|         100.0|         71248|          2|
|language.portuguese   |         0.0|         100.0|         71248|          2|
|language.finnougrian  |         0.0|         100.0|         71248|          2|
|language.multiple     |         0.0|         100.0|         71248|          2|
|language.undetermined |         0.0|         100.0|         71248|          2|
|gatherings.original   |         0.0|         100.0|         71248|         18|
|obl.original          |         0.0|         100.0|         71248|          2|
|original_row          |         0.0|         100.0|         71248|      71248|
|gatherings            |         0.0|         100.0|         71248|         18|
|publication_year      |         0.0|         100.0|         71248|        350|
|publication_decade    |         0.0|         100.0|         71248|         40|
|author_pseudonyme     |         0.0|         100.0|         71248|          1|



## Histograms of all entries for numeric variables

<img src="figure/summary-histograms-1.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-2.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-3.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-4.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-5.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-6.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-7.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-8.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-9.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-10.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-11.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-12.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-13.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-14.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-15.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" />

## Histograms of the top entries for factor variables

<img src="figure/summary-bars-1.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-2.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-3.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-4.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-5.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-6.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-7.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-8.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-9.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-10.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-11.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-12.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-13.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-14.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-15.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-16.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-17.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" />




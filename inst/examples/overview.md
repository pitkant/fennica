---
title: "Preprocessing overview"
author: "Leo Lahti"
date: "2016-04-13"
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
|paper.consumption.km2 |        83.2|          16.8|         11953|       2550|
|title_uniform         |        82.9|          17.1|         12182|       8915|
|author_death          |        75.3|          24.7|         17625|        363|
|author_birth          |        73.9|          26.1|         18586|        346|
|corporate             |        71.5|          28.5|         20281|       1406|
|subject_topic         |        70.9|          29.1|         20766|       3513|
|pagecount             |        68.0|          32.0|         22831|        794|
|pagecount.orig        |        68.0|          32.0|         22831|        794|
|author_gender         |        63.9|          36.1|         25736|          3|
|obl                   |        54.5|          45.5|         32440|          3|
|holder                |        49.4|          50.6|         36083|       2136|
|width                 |        47.6|          52.4|         37328|        296|
|height                |        47.6|          52.4|         37328|        336|
|area                  |        47.6|          52.4|         37328|        766|
|self_published        |        46.6|          53.4|         38027|          3|
|author_name           |        36.8|          63.2|         45010|      11925|
|author                |        36.8|          63.2|         45010|      11962|
|publisher             |        17.5|          82.5|         58766|      10756|
|country               |         4.1|          95.9|         68311|         34|
|publication_place     |         4.1|          95.9|         68317|        437|
|latitude              |         1.1|          98.9|         70454|        363|
|longitude             |         1.1|          98.9|         70454|        363|
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
|author_pseudonyme     |         0.0|         100.0|         71248|          2|
|language              |         0.0|         100.0|         71248|        136|



## Histograms of all entries for numeric variables

<img src="figure/summary-histograms-1.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-2.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-3.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-4.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-5.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-6.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-7.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-8.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-9.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-10.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-11.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-12.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-13.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-14.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-15.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" />

## Histograms of the top entries for factor variables

<img src="figure/summary-bars-1.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-2.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-3.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-4.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-5.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-6.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-7.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-8.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-9.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-10.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-11.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-12.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-13.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-14.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-15.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-16.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-17.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-18.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" />




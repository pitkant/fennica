---
title: "Preprocessing summary"
author: "Leo Lahti and Niko Ilomäki"
date: "March 2, 2016"
---

# Fennica summary

## Annotated documents

Fraction of documents with entries for each annotation field. For a full list of summaries for field contents, see [here](https://github.com/rOpenGov/fennica/tree/master/inst/examples/output.tables).



Conversions from the original to preprocessed fields:


|marc_field     |marc_clearname        |preprocessed_fields                                                                                                                                                                                                                                                                                                                                                        |
|:--------------|:---------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|001            |control_number        |NA                                                                                                                                                                                                                                                                                                                                                                         |
|008lang        |language              |language.finnish;language.swedish;language.latin;language.german;language.english;language.french;language.russian;language.greek;language.danish;language.italian;language.hebrew;language.dutch;language.spanish;language.sami;language.modern_greek;language.icelandic;language.arabic;language.portuguese;language.finnougrian;language.multiple;language.undetermined |
|041a           |language              |language.finnish;language.swedish;language.latin;language.german;language.english;language.french;language.russian;language.greek;language.danish;language.italian;language.hebrew;language.dutch;language.spanish;language.sami;language.modern_greek;language.icelandic;language.arabic;language.portuguese;language.finnougrian;language.multiple;language.undetermined |
|041h           |language2             |language2                                                                                                                                                                                                                                                                                                                                                                  |
|100a           |author_name           |author_name                                                                                                                                                                                                                                                                                                                                                                |
|100d           |author_date           |author_birth;author_death                                                                                                                                                                                                                                                                                                                                                  |
|110a           |110a                  |NA                                                                                                                                                                                                                                                                                                                                                                         |
|240a           |title_uniform         |title_uniform                                                                                                                                                                                                                                                                                                                                                              |
|240n           |title_uniform2        |NA                                                                                                                                                                                                                                                                                                                                                                         |
|245a           |title                 |title                                                                                                                                                                                                                                                                                                                                                                      |
|245b           |title_remainder       |title_remainder                                                                                                                                                                                                                                                                                                                                                            |
|245c           |245c                  |NA                                                                                                                                                                                                                                                                                                                                                                         |
|260a           |publication_place     |publication_place                                                                                                                                                                                                                                                                                                                                                          |
|260b           |publisher             |publisher                                                                                                                                                                                                                                                                                                                                                                  |
|260c           |publication_time      |publication_year_from;publication_year_till                                                                                                                                                                                                                                                                                                                                |
|260e           |260e                  |NA                                                                                                                                                                                                                                                                                                                                                                         |
|260f           |260f                  |NA                                                                                                                                                                                                                                                                                                                                                                         |
|300a           |physical_extent       |pagecount;volnumber;volcount                                                                                                                                                                                                                                                                                                                                               |
|300b           |physical_details      |physical_details                                                                                                                                                                                                                                                                                                                                                           |
|300c           |physical_dimension    |gatherings.original;width.original;height.original;obl.original                                                                                                                                                                                                                                                                                                            |
|300e           |physical_accomppanied |physical_accomppanied                                                                                                                                                                                                                                                                                                                                                      |
|310a           |publication_frequency |publication_frequency                                                                                                                                                                                                                                                                                                                                                      |
|362a           |publication_interval  |publication_interval                                                                                                                                                                                                                                                                                                                                                       |
|440a           |440a                  |NA                                                                                                                                                                                                                                                                                                                                                                         |
|440v           |440v                  |NA                                                                                                                                                                                                                                                                                                                                                                         |
|500a           |note_general          |note_general                                                                                                                                                                                                                                                                                                                                                               |
|502a           |note_dissertation     |dissertation;synodal                                                                                                                                                                                                                                                                                                                                                       |
|502c           |note_granter          |note_granter                                                                                                                                                                                                                                                                                                                                                               |
|502d           |note_year             |note_year                                                                                                                                                                                                                                                                                                                                                                  |
|510a           |note_source           |note_source                                                                                                                                                                                                                                                                                                                                                                |
|510c           |note_510c             |note_510c                                                                                                                                                                                                                                                                                                                                                                  |
|650a           |subject_topic         |subject_topic                                                                                                                                                                                                                                                                                                                                                              |
|650x           |650x                  |NA                                                                                                                                                                                                                                                                                                                                                                         |
|650y           |650y                  |NA                                                                                                                                                                                                                                                                                                                                                                         |
|650z           |650z                  |NA                                                                                                                                                                                                                                                                                                                                                                         |
|650y.651y      |publication_topic     |NA                                                                                                                                                                                                                                                                                                                                                                         |
|650z.651a.651z |publication_geography |NA                                                                                                                                                                                                                                                                                                                                                                         |
|651a           |subject_geography     |subject_geography                                                                                                                                                                                                                                                                                                                                                          |
|700a           |700a                  |NA                                                                                                                                                                                                                                                                                                                                                                         |
|700d           |700d                  |NA                                                                                                                                                                                                                                                                                                                                                                         |
|710a           |corporate             |corporate                                                                                                                                                                                                                                                                                                                                                                  |
|720a           |uncontrolled          |uncontrolled                                                                                                                                                                                                                                                                                                                                                               |
|740a           |uncontrolled_title    |NA                                                                                                                                                                                                                                                                                                                                                                         |
|772c           |772c                  |NA                                                                                                                                                                                                                                                                                                                                                                         |
|772d           |772d                  |NA                                                                                                                                                                                                                                                                                                                                                                         |
|772t           |772t                  |NA                                                                                                                                                                                                                                                                                                                                                                         |
|785t           |successor             |successor                                                                                                                                                                                                                                                                                                                                                                  |
|852a           |holder                |holder                                                                                                                                                                                                                                                                                                                                                                     |
|852j           |852j                  |NA                                                                                                                                                                                                                                                                                                                                                                         |
|852z           |852z                  |NA                                                                                                                                                                                                                                                                                                                                                                         |
|866x           |866x                  |NA                                                                                                                                                                                                                                                                                                                                                                         |
|900a           |900a                  |NA                                                                                                                                                                                                                                                                                                                                                                         |
|900d           |900d                  |NA                                                                                                                                                                                                                                                                                                                                                                         |
|900u           |900u                  |NA                                                                                                                                                                                                                                                                                                                                                                         |
|976a           |976a                  |NA                                                                                                                                                                                                                                                                                                                                                                         |
|976b           |976b                  |NA                                                                                                                                                                                                                                                                                                                                                                         |


Percentage of non-NA entries among all documents in the preprocessed data (note that in some cases a significant fraction of this information is missing already in the raw data)

![plot of chunk missingb](figure/missingb-1.png)


Fields of special interest: real success percentage (proportion of successful conversions compared to non-NA entries in the original data):

![plot of chunk missing2](figure/missing2-1.png)

## Pagecounts

[Discarded page count data](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/pagecount_discarded.csv)

[Successfully converted page counts](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/pagecount_conversion.csv)

Compare gatherings and cm2 sizes as a quality check. This includes all data; the area has been estimated from the gatherings when dimension information was not available.

![plot of chunk summarysizecomp](figure/summarysizecomp-1.png)

Compare gatherings and page counts. 

![plot of chunk summarypagecomp](figure/summarypagecomp-1.png)

## Publication time

[Successfully converted publication times](output.tables/publication-time-accepted.csv)

[Discarded publication times](output.tables/publication-time-discarded.csv)

![plot of chunk publication_time](figure/publication_time-1.png)

## Publication places

Top-20 publication places are shown together with the number of documents. This info is available for 68829 documents (96%). There are 452 unique publication places.

![plot of chunk publication_place](figure/publication_place-1.png)

[Successfully converted publication places](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/publication_place_accepted.csv)

[Discarded publication places](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/publication_place_discarded.csv)

[Publication places missing country information](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/publication_place_missingcountry.csv)



## Dimensions

[Successfully converted dimension info](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/accepted_dimensions.csv)

[Discarded dimension info](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/missing_dimensions.csv)

[Discarded gatherings info](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/missing_gatherings.csv)


## Publisher 

[Discarded publisher info](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/publisher_discarded.csv) (Check that ok to discard these)

[Converted publishers](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/publisher_accepted.csv) (Check for formatting and synonymes)

[Self-published accepted](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/self_published_accepted.csv) (Check for formatting and synonymes)

[Self-published raw fields](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/self_published_rawfields.csv) (Check that the self-publication is a correct classification for these docs)



We also have corporate info available ?

[Accepted corporate info](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/corporate_accepted.csv)

[Discarded corporate info](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/corporate_discarded.csv)


## Authors

[Accepted unique authors](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/author_accepted.csv)

[Discarded authors](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/author_discarded.csv)

[Discarded author first names](output.tables/author_name_discarded_first.csv)

[Discarded author last names](output.tables/author_name_discarded_last.csv)

[Authors missing life years](output.tables/authors_missing_lifeyears.csv)


Top-50 uniquely identified authors and number of documents for each (duplicate docs not checked yet).

![plot of chunk authors](figure/authors-1.png)


## Topics






[Complete subject topic counts](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/subjecttopics.tab)

Top-50 topics and number of documents for each. In total, there are 0 unique topics and 0 documents assigned to one or more topics (NaN).


```
## Error in plot.window(xlim, ylim, log = log, ...): need finite 'xlim' values
```

![plot of chunk topics3](figure/topics3-1.png)


## Subject geographical places



Top-50 geographical places are shown together with the number of documents assigned to that region. Geography information is available for 5838 documents (8%). There are 645 unique geographical places.

![plot of chunk geo2](figure/geo2-1.png)



[Complete geoplace listing](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/geoplaces.csv)


## Geocoordinates for publication places

Altogether ``1.0289353`` places have missing geocoordinates:

[Places with missing geocoordinates](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/missing_geocoordinates.csv)



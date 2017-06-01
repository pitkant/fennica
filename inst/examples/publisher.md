---
title: "Publisher preprocessing summary"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2017-06-01"
output: markdown_document
---


### Publishers

 * 7974 [unique publishers](output.tables/publisher_accepted.csv)

 * 60824 documents have unambiguous publisher information (86.3%). This includes documents identified as self-published; the author name is used as the publisher in those cases (if known).

 * 1864 documents are identified as self-published (2.6%). 

 * [Discarded publisher entries](output.tables/publisher_discarded.csv)

 * [Conversions from original to final names](output.tables/publisher_conversion_nontrivial.csv) (only non-trivial conversions shown)


The 20 most common publishers are shown with the number of documents. 

![plot of chunk summarypublisher2](figure/summarypublisher2-1.png)

### Publication timeline for top publishers

Title count

![plot of chunk summaryTop10pubtimeline](figure/summaryTop10pubtimeline-1.png)



Title count versus paper consumption (top publishers):

![plot of chunk publishertitlespapers](figure/publishertitlespapers-1.png)

|publisher                        | titles|     paper|
|:--------------------------------|------:|---------:|
|Frenckell, Johan Christopher I   |   1740| 1460952.5|
|Frenckell, Johan Christopher II  |   2205| 2622613.1|
|Hansson, Peter                   |    982| 1612252.9|
|Kämpe, Johan                     |    986| 1556110.9|
|Londicer, Georg Wilhelm          |   2100|  590734.4|
|Otava                            |   2188| 2017674.9|
|Söderström                       |   1203|  943434.8|
|Suomalaisen Kirjallisuuden Seura |    973| 1390833.1|
|Wall, Johan Larsson              |   1266| 2210292.0|
|WSOY                             |   2882| 1862844.8|


### Corporates

Summaries of the corporate field.

 * 1404 [unique corporates](output.tables/corporate_accepted.csv)

 * 19529 documents have unambiguous corporate information (27.7%). 

 * [Discarded corporate entries](output.tables/corporate_discarded.csv)

 * [Conversions from original to final names](output.tables/corporate_conversion_nontrivial.csv) (only non-trivial conversions shown)


The 20 most common corporates are shown with the number of documents. 

![plot of chunk summarycorporate2](figure/summarycorporate2-1.png)




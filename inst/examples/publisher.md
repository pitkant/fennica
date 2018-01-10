---
title: "Publisher preprocessing summary"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2018-01-10"
output: markdown_document
---


### Publishers

 * 8132 [unique publishers](output.tables/publisher_accepted.csv)

 * 60833 documents have unambiguous publisher information (86.3%). This includes documents identified as self-published; the author name is used as the publisher in those cases (if known).

 * 1909 documents are identified as self-published (2.7%). 

 * [Discarded publisher entries](output.tables/publisher_discarded.csv)

 * [Conversions from original to final names](output.tables/publisher_conversion_nontrivial.csv) (only non-trivial conversions shown)


The 20 most common publishers are shown with the number of documents. 

![plot of chunk summarypublisher2](figure/summarypublisher2-1.png)

### Publication timeline for top publishers

Title count

![plot of chunk summaryTop10pubtimeline](figure/summaryTop10pubtimeline-1.png)



Title count versus paper consumption (top publishers):

![plot of chunk publishertitlespapers](figure/publishertitlespapers-1.png)

|publisher                       | titles|     paper|
|:-------------------------------|------:|---------:|
|Edlund                          |   1066| 1906547.7|
|Frenckell, Johan Christopher I  |   1742| 1463305.3|
|Frenckell, Johan Christopher II |   2205| 2622613.1|
|Hansson, Peter                  |    982| 1612252.9|
|Kämpe, Johan                    |    987| 1556538.7|
|Londicer, Georg Wilhelm         |   2100|  590734.4|
|Otava                           |   2188| 2011285.5|
|Söderström                      |   1207|  947046.8|
|Wall, Johan Larsson             |   1266| 2210292.0|
|WSOY                            |   2881| 1861956.8|


### Corporates

Summaries of the corporate field.

 * 1404 [unique corporates](output.tables/corporate_accepted.csv)

 * 19529 documents have unambiguous corporate information (27.7%). 

 * [Discarded corporate entries](output.tables/corporate_discarded.csv)

 * [Conversions from original to final names](output.tables/corporate_conversion_nontrivial.csv) (only non-trivial conversions shown)


The 20 most common corporates are shown with the number of documents. 

![plot of chunk summarycorporate2](figure/summarycorporate2-1.png)




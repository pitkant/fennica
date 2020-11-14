---
title: "Publisher preprocessing summary"
author: "Helsinki Computational History Group (COMHIS)"
date: "2020-11-14"
output: markdown_document
---


### Publishers

 * 8120 [unique publishers](output.tables/publisher_accepted.csv)

 * 60810 documents have unambiguous publisher information (86.3%). This includes documents identified as self-published; the author name is used as the publisher in those cases (if known).

 * 1909 documents are identified as self-published (2.7%). 

 * [Discarded publisher entries](output.tables/publisher_discarded.csv)

 * [Conversions from original to final names](output.tables/publisher_conversion_nontrivial.csv) (only non-trivial conversions shown)


The 20 most common publishers are shown with the number of documents. 

![plot of chunk summarypublisher2](figure/summarypublisher2-1.png)

### Publication timeline for top publishers

Title count





Title count versus paper consumption (top publishers):

![plot of chunk publishertitlespapers](figure/publishertitlespapers-1.png)

|publisher                       | titles|     paper|
|:-------------------------------|------:|---------:|
|Edlund                          |   1066| 1814256.9|
|Frenckell, Johan Christopher I  |   1742| 1462097.8|
|Frenckell, Johan Christopher II |   2208| 2626298.5|
|Hansson, Peter                  |    982| 1612030.7|
|Kämpe, Johan                    |    990| 1558465.1|
|Londicer, Georg Wilhelm         |   2103|  591634.4|
|Otava                           |   2187| 1767032.7|
|Söderström                      |   1207|  852544.8|
|Wall, Johan Larsson             |   1266| 2210292.0|
|WSOY                            |   2878| 1722436.1|


### Corporates

Summaries of the corporate field.

 * 1407 [unique corporates](output.tables/corporate_accepted.csv)

 * 19544 documents have unambiguous corporate information (27.7%). 

 * [Discarded corporate entries](output.tables/corporate_discarded.csv)

 * [Conversions from original to final names](output.tables/corporate_conversion_nontrivial.csv) (only non-trivial conversions shown)


The 20 most common corporates are shown with the number of documents. 

![plot of chunk summarycorporate2](figure/summarycorporate2-1.png)




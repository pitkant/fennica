---
title: "Publisher preprocessing summary"
author: "Helsinki Computational History Group (COMHIS)"
date: "2019-06-09"
output: markdown_document
---


### Publishers

 * 8110 [unique publishers](output.tables/publisher_accepted.csv)

 * 60778 documents have unambiguous publisher information (86.3%). This includes documents identified as self-published; the author name is used as the publisher in those cases (if known).

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
|Edlund                          |   1066| 1906547.7|
|Frenckell, Johan Christopher I  |   1742| 1463305.3|
|Frenckell, Johan Christopher II |   2205| 2622613.1|
|Hansson, Peter                  |    981| 1603815.4|
|Kämpe, Johan                    |    987| 1556538.7|
|Londicer, Georg Wilhelm         |   2100|  590734.4|
|Otava                           |   2188| 2002856.3|
|Söderström                      |   1207|  947046.8|
|Wall, Johan Larsson             |   1266| 2210292.0|
|WSOY                            |   2881| 1861956.8|


### Corporates

Summaries of the corporate field.

 * 1405 [unique corporates](output.tables/corporate_accepted.csv)

 * 19529 documents have unambiguous corporate information (27.7%). 

 * [Discarded corporate entries](output.tables/corporate_discarded.csv)

 * [Conversions from original to final names](output.tables/corporate_conversion_nontrivial.csv) (only non-trivial conversions shown)


The 20 most common corporates are shown with the number of documents. 

![plot of chunk summarycorporate2](figure/summarycorporate2-1.png)




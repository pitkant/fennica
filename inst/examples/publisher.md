---
title: "Publisher preprocessing summary"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2016-07-27"
output: markdown_document
---


### Publishers

 * 7393 [unique publishers](output.tables/publisher_accepted.csv)

 * 71719 documents have unambiguous publisher information (100%). 

 * [Discarded publisher entries](output.tables/publisher_discarded.csv)

 * [Conversions from original to final names](output.tables/publisher_conversion_nontrivial.csv) (only non-trivial conversions shown)


The 20 most common publishers are shown with the number of documents. 

![plot of chunk summarypublisher2](figure/summarypublisher2-1.png)

### Publication timeline for top publishers

Title count


```
## Warning: Removed 3 rows containing missing values (position_stack).
```

![plot of chunk summaryTop10pubtimeline](figure/summaryTop10pubtimeline-1.png)



Title count versus paper consumption (top publishers):

![plot of chunk publishertitlespapers](figure/publishertitlespapers-1.png)

|publisher                       | titles|      paper|
|:-------------------------------|------:|----------:|
|                                |  12077| 11492653.8|
|<<<Author>>>                    |   1708|   549155.1|
|Frenckell, Johan Christopher I  |   1744|  1361610.0|
|Frenckell, Johan Christopher II |   2216|  2422445.8|
|Hansson, Peter                  |   1095|  1461684.9|
|Londicer, Georg Wilhelm         |   2110|   308398.6|
|Otava                           |   2129|  1936637.4|
|Söderström                      |   1179|   895139.4|
|Wall, Johan Larsson             |   1404|  1427113.4|
|WSOY                            |   2801|  1741728.9|



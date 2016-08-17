---
title: "Publisher preprocessing summary"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2016-08-17"
output: markdown_document
---


### Publishers

 * 7593 [unique publishers](output.tables/publisher_accepted.csv)

 * 64864 documents have unambiguous publisher information (90%). 

 * [Discarded publisher entries](output.tables/publisher_discarded.csv)

 * [Conversions from original to final names](output.tables/publisher_conversion_nontrivial.csv) (only non-trivial conversions shown)


The 20 most common publishers are shown with the number of documents. 

![plot of chunk summarypublisher2](figure/summarypublisher2-1.png)

### Publication timeline for top publishers

Title count


```
## Warning: Removed 5 rows containing missing values (position_stack).
```

![plot of chunk summaryTop10pubtimeline](figure/summaryTop10pubtimeline-1.png)



Title count versus paper consumption (top publishers):

![plot of chunk publishertitlespapers](figure/publishertitlespapers-1.png)

|publisher                       | titles|     paper|
|:-------------------------------|------:|---------:|
|                                |   3468| 3066511.5|
|<<Author>>                      |   1730|  591767.8|
|Frenckell, Johan Christopher I  |   1744| 1361610.0|
|Frenckell, Johan Christopher II |   2216| 2422445.8|
|Hansson, Peter                  |   1095| 1461684.9|
|Londicer, Georg Wilhelm         |   2110|  308398.6|
|Otava                           |   2176| 2016736.0|
|Söderström                      |   1198|  907538.7|
|Wall, Johan Larsson             |   1404| 1427113.4|
|WSOY                            |   2903| 1834784.9|



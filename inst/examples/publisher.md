---
title: "Publisher preprocessing summary"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2016-10-04"
output: markdown_document
---


### Publishers

 * 7568 [unique publishers](output.tables/publisher_accepted.csv)

 * 62032 documents have unambiguous publisher information (86%). 

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
|<Author>                        |   2604| 1308306.7|
|Frenckell, Johan Christopher I  |   1744| 1361610.0|
|Frenckell, Johan Christopher II |   2216| 2422445.8|
|Hansson, Peter                  |   1095| 1468422.4|
|Kämpe, Johan                    |   1033| 1129371.0|
|Londicer, Georg Wilhelm         |   2110|  308398.6|
|Otava                           |   2190| 2026893.8|
|Söderström                      |   1184|  896211.4|
|Wall, Johan Larsson             |   1404| 1474596.8|
|WSOY                            |   2908| 1838063.3|



---
title: "Publisher preprocessing summary"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2016-06-28"
output: markdown_document
---


### Publishers

 * 7299 [unique publishers](output.tables/publisher_accepted.csv)

 * 63065 documents have unambiguous publisher information (88%). 

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

|publisher                       | titles| paper|
|:-------------------------------|------:|-----:|
|                                |   3353|  2.35|
|<<Author>>                      |   1734|  0.38|
|Frenckell, Johan Christopher I  |   1744|  0.82|
|Frenckell, Johan Christopher II |   2216|  2.41|
|Hansson, Peter                  |   1095|  1.78|
|Londicer, Georg Wilhelm         |   2110|  0.18|
|Otava                           |   2129|  1.12|
|Söderström                      |   1177|  0.54|
|Wall, Johan Larsson             |   1404|  1.07|
|WSOY                            |   2802|  1.04|

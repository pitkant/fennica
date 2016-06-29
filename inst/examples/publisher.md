---
title: "Publisher preprocessing summary"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2016-06-29"
output: markdown_document
---


### Publishers

 * 7429 [unique publishers](output.tables/publisher_accepted.csv)

 * 70680 documents have unambiguous publisher information (98%). 

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
|                                |   3342|  2.54|
|Frenckell, Johan Christopher I  |   1744|  0.72|
|Frenckell, Johan Christopher II |   2216|  1.25|
|Londicer, Georg Wilhelm         |   2110|  0.18|
|Otava                           |   2129|  1.05|
|s.n                             |   7405|  5.27|
|Söderström                      |   1177|  0.45|
|Tekijä                          |   1679|  0.30|
|Wall, Johan Larsson             |   1404|  0.73|
|WSOY                            |   2802|  0.92|

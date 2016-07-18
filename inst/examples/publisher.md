---
title: "Publisher preprocessing summary"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2016-07-19"
output: markdown_document
---


### Publishers

 * 375 [unique publishers](output.tables/publisher_accepted.csv)

 * 9978 documents have unambiguous publisher information (100%). 

 * [Discarded publisher entries](output.tables/publisher_discarded.csv)

 * [Conversions from original to final names](output.tables/publisher_conversion_nontrivial.csv) (only non-trivial conversions shown)


The 20 most common publishers are shown with the number of documents. 

![plot of chunk summarypublisher2](figure/summarypublisher2-1.png)

### Publication timeline for top publishers

Title count


```
## Warning: Removed 1 rows containing missing values (position_stack).
```

![plot of chunk summaryTop10pubtimeline](figure/summaryTop10pubtimeline-1.png)



Title count versus paper consumption (top publishers):

![plot of chunk publishertitlespapers](figure/publishertitlespapers-1.png)

|publisher                       | titles|      paper|
|:-------------------------------|------:|----------:|
|                                |   7219| 7204990.86|
|Frenckell, Johan Christopher I  |    256|  202623.48|
|Frenckell, Johan Christopher II |    303|  292297.96|
|Hansson, Peter                  |    155|  246848.09|
|Kämpe, Johan                    |    141|  142350.26|
|Londicer, Georg Wilhelm         |    279|   42281.29|
|Merckell, Jacob                 |    141|  174973.26|
|Wald, Peder Eriksson            |     73|   71417.53|
|Wall, Johan Larsson             |    199|  201568.14|
|Winter, Johan                   |    121|  189788.41|



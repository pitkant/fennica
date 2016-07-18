---
title: "Publisher preprocessing summary"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2016-07-18"
output: markdown_document
---


### Publishers

 * 370 [unique publishers](output.tables/publisher_accepted.csv)

 * 9963 documents have unambiguous publisher information (100%). 

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
|                                |   7154| 14900186.8|
|Frenckell, Johan Christopher I  |    243|   324337.4|
|Frenckell, Johan Christopher II |    292|   624487.2|
|Hansson, Peter                  |    149|   390457.0|
|Kämpe, Johan                    |    147|   323291.3|
|Londicer, Georg Wilhelm         |    308|   106880.6|
|Merckell, Jacob                 |    131|   307112.5|
|Wald, Peder Eriksson            |     79|   179476.0|
|Wall, Johan Larsson             |    205|   372287.2|
|Winter, Johan                   |    150|   606009.2|



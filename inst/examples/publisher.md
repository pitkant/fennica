---
title: "Publisher preprocessing summary"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2016-07-18"
output: markdown_document
---


### Publishers

 * 377 [unique publishers](output.tables/publisher_accepted.csv)

 * 9976 documents have unambiguous publisher information (100%). 

 * [Discarded publisher entries](output.tables/publisher_discarded.csv)

 * [Conversions from original to final names](output.tables/publisher_conversion_nontrivial.csv) (only non-trivial conversions shown)


The 20 most common publishers are shown with the number of documents. 

![plot of chunk summarypublisher2](figure/summarypublisher2-1.png)

### Publication timeline for top publishers

Title count


```
## Warning: Removed 2 rows containing missing values (position_stack).
```

![plot of chunk summaryTop10pubtimeline](figure/summaryTop10pubtimeline-1.png)



Title count versus paper consumption (top publishers):

![plot of chunk publishertitlespapers](figure/publishertitlespapers-1.png)

|publisher                       | titles|       paper|
|:-------------------------------|------:|-----------:|
|                                |   7117| 13946989.95|
|Frenckell, Johan Christopher I  |    242|   363217.62|
|Frenckell, Johan Christopher II |    298|   616500.04|
|Hansson, Peter                  |    143|   352868.40|
|Kämpe, Johan                    |    168|   431502.78|
|Londicer, Georg Wilhelm         |    293|    72502.78|
|Merckell, Jacob                 |    149|   401738.11|
|Wald, Peder Eriksson            |     83|   175590.62|
|Wall, Johan Larsson             |    192|   466598.09|
|Winter, Johan                   |    149|   314424.74|



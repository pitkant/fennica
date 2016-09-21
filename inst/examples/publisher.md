---
title: "Publisher preprocessing summary"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2016-09-21"
output: markdown_document
---


### Publishers

 * 6772 [unique publishers](output.tables/publisher_accepted.csv)

 * 41724 documents have unambiguous publisher information (58%). 

 * [Discarded publisher entries](output.tables/publisher_discarded.csv)

 * [Conversions from original to final names](output.tables/publisher_conversion_nontrivial.csv) (only non-trivial conversions shown)


The 20 most common publishers are shown with the number of documents. 

![plot of chunk summarypublisher2](figure/summarypublisher2-1.png)

### Publication timeline for top publishers

Title count


```
## Warning: Removed 4 rows containing missing values (position_stack).
```

![plot of chunk summaryTop10pubtimeline](figure/summaryTop10pubtimeline-1.png)



Title count versus paper consumption (top publishers):

![plot of chunk publishertitlespapers](figure/publishertitlespapers-1.png)

|publisher                        | titles|     paper|
|:--------------------------------|------:|---------:|
|<<Author>>                       |   1761|  704699.8|
|<Author>                         |    842|  603606.9|
|Edlund                           |    982| 1512432.8|
|G.W. Edlund                      |    902| 1243270.7|
|Kansanvalistusseura              |    594|  412947.7|
|Karisto                          |    661|  152212.0|
|Otava                            |   2183| 2026464.9|
|Söderström                       |   1179|  896211.4|
|Suomalaisen Kirjallisuuden Seura |    885| 1247245.3|
|WSOY                             |   2828| 1743999.1|



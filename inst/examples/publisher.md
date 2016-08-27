---
title: "Publisher preprocessing summary"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2016-08-27"
output: markdown_document
---


### Publishers

 * 9896 [unique publishers](output.tables/publisher_accepted.csv)

 * 61546 documents have unambiguous publisher information (86%). 

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

|publisher                        | titles|     paper|
|:--------------------------------|------:|---------:|
|<<Author>>                       |   1730|  591767.8|
|Edlund                           |    981| 1514267.6|
|G. v. edlund                     |    929| 1352632.7|
|G. v. londicer                   |   1829|  166836.7|
|J. c. frenckell                  |   1296|  413085.2|
|Otava                            |   2183| 2026344.4|
|Söderström                       |   1201|  911990.9|
|Suomalaisen kirjallisuuden seura |    874| 1242905.8|
|Typis frenckellianis             |   1194| 1201506.9|
|Vsoy                             |   2925| 1855620.4|



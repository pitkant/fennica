---
title: "Publisher preprocessing summary"
author: "Helsinki Computational History Group (COMHIS)"
date: "2020-12-02"
output: markdown_document
---


### Publishers

 * 8130 [unique publishers](output.tables/publisher_accepted.csv)

 * 61566 documents have unambiguous publisher information (86.3%). This includes documents identified as self-published; the author name is used as the publisher in those cases (if known).

 * 1792 documents are identified as self-published (2.5%). 

 * [Discarded publisher entries](output.tables/publisher_discarded.csv)

 * [Conversions from original to final names](output.tables/publisher_conversion_nontrivial.csv) (only non-trivial conversions shown)


The 20 most common publishers are shown with the number of documents. 

![plot of chunk summarypublisher2](figure/summarypublisher2-1.png)

### Publication timeline for top publishers

Title count


```
## Note: Using an external vector in selections is ambiguous.
## ℹ Use `all_of(field)` instead of `field` to silence this message.
## ℹ See <https://tidyselect.r-lib.org/reference/faq-external-vector.html>.
## This message is displayed once per session.
```



Title count versus paper consumption (top publishers):

![plot of chunk publishertitlespapers](figure/publishertitlespapers-1.png)

|publisher                       | titles| paper|
|:-------------------------------|------:|-----:|
|Edlund                          |   1067|     0|
|Frenckell, Johan Christopher I  |   1748|     0|
|Frenckell, Johan Christopher II |   2215|     0|
|Hansson, Peter                  |   1095|     0|
|Kämpe, Johan                    |   1035|     0|
|Londicer, Georg Wilhelm         |   2109|     0|
|Otava                           |   2187|     0|
|Söderström                      |   1207|     0|
|Wall, Johan Larsson             |   1404|     0|
|WSOY                            |   2880|     0|


### Corporates

Summaries of the corporate field.

 * 1415 [unique corporates](output.tables/corporate_accepted.csv)

 * 20305 documents have unambiguous corporate information (28.5%). 

 * [Discarded corporate entries](output.tables/corporate_discarded.csv)

 * [Conversions from original to final names](output.tables/corporate_conversion_nontrivial.csv) (only non-trivial conversions shown)


The 20 most common corporates are shown with the number of documents. 

![plot of chunk summarycorporate2](figure/summarycorporate2-1.png)




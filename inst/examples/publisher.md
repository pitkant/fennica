---
title: "Publisher preprocessing summary"
author: "Lahti, Marjanen, Roivainen, Tolonen"
date: "2017-02-10"
output: markdown_document
---


### Publishers

 * 6918 [unique publishers](output.tables/publisher_accepted.csv)

 * 60866 documents have unambiguous publisher information (86.4%). This includes self-published documents; the author name is used as the publisher in those cases (if known).

 * 0 documents are identified as self-published (0%). 

 * [Discarded publisher entries](output.tables/publisher_discarded.csv)

 * [Conversions from original to final names](output.tables/publisher_conversion_nontrivial.csv) (only non-trivial conversions shown)


The 20 most common publishers are shown with the number of documents. 

![plot of chunk summarypublisher2](figure/summarypublisher2-1.png)

### Publication timeline for top publishers

Title count

![plot of chunk summaryTop10pubtimeline](figure/summaryTop10pubtimeline-1.png)



Title count versus paper consumption (top publishers):

![plot of chunk publishertitlespapers](figure/publishertitlespapers-1.png)

|publisher                       | titles|     paper|
|:-------------------------------|------:|---------:|
|<Author>                        |   2593| 1317483.5|
|Frenckell, Johan Christopher I  |   1739| 1458747.7|
|Frenckell, Johan Christopher II |   2206| 2623550.6|
|G.W. Edlund                     |    984| 1430899.5|
|Kämpe, Johan                    |    985| 1554506.8|
|Londicer, Georg Wilhelm         |   2106|  592616.7|
|Otava                           |   2189| 2017674.9|
|Söderström                      |   1204|  943434.8|
|Wall, Johan Larsson             |   1266| 2210292.0|
|WSOY                            |   2882| 1862844.8|



---
title: "Publisher preprocessing summary"
author: "Leo Lahti"
date: "2016-04-02"
output: markdown_document
---


### Publishers

[Publishers accepted](output.tables/publisher_accepted.csv)

[Publishers discarded](output.tables/publisher_discarded.csv)



The 20 most common publishers are shown with the number of documents. Publisher information is available for 59180 documents (82%). There are 10831 unique publisher names (some may be synonymes, though).


![plot of chunk summarypublisher2](figure/summarypublisher2-1.png)

### Publication timeline for top publishers

Title count


```
## Warning: Removed 4 rows containing missing values (position_stack).
```

![plot of chunk summaryTop10pubtimeline](figure/summaryTop10pubtimeline-1.png)

Paper consumption

![plot of chunk summaryTop10publisherstimelinepaper](figure/summaryTop10publisherstimelinepaper-1.png)



Title count versus paper consumption (top publishers):

![plot of chunk publishertitlespapers](figure/publishertitlespapers-1.png)

|publisher   | titles|     paper|
|:-----------|------:|---------:|
|c frenckell |   1345| 0.5599398|
|otava       |   2177| 0.2492182|
|söderström  |   1191| 0.1825769|
|w londicer  |   1830| 0.8500616|
|wsoy        |   2929| 0.1146801|

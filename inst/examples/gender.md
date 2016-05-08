---
title: "Gender preprocessing overview"
author: "Leo Lahti"
date: "2016-05-08"
output: markdown_document
---

### Gender

 * [Author-gender mappings](output.tables/author_accepted.csv) in the final data

 * 7507 unique male authors
 
 * 877 unique female authors
 
 * 31700 documents (44.5%) with a male author
 
 * 2853 documents (4%) with a female author
 
 * 36695 documents (51.5%) with [unresolved gender](output.tables/author_gender_discarded.csv) (including pseudonymes)

 * [First names identified as female](output.tables/gender_female.csv) in the preprocessed data (including pseudonymes)

 * [First names identified as male](output.tables/gender_male.csv) in the preprocessed data (including pseudonymes)

 * [First names with ambiguous gender](output.tables/gender_ambiguous.csv) (both male and female listed in the gender mapping tables) in the preprocessed data (including pseudonymes)

 * [First names with unknown gender](output.tables/gender_unknown.csv) (no gender mapping info available) in the preprocessed data (including pseudonymes)


<img src="figure/summary-authorgenders-1.png" title="plot of chunk summary-authorgenders" alt="plot of chunk summary-authorgenders" width="400px" /><img src="figure/summary-authorgenders-2.png" title="plot of chunk summary-authorgenders" alt="plot of chunk summary-authorgenders" width="400px" /><img src="figure/summary-authorgenders-3.png" title="plot of chunk summary-authorgenders" alt="plot of chunk summary-authorgenders" width="400px" /><img src="figure/summary-authorgenders-4.png" title="plot of chunk summary-authorgenders" alt="plot of chunk summary-authorgenders" width="400px" />


Author gender distribution in the complete data:


|Gender    | Documents (n)| Fraction (%)|
|:---------|-------------:|------------:|
|ambiguous |          1057|         1.48|
|female    |          2853|         4.00|
|male      |         31700|        44.49|
|NA        |         35638|        50.02|

Author gender distribution over time. Note that the name-gender mappings change over time and geography but this has not been taken into account here.


![plot of chunk summarygendertime](figure/summarygendertime-1.png)



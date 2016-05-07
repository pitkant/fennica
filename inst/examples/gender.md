---
title: "Gender preprocessing overview"
author: "Leo Lahti"
date: "2016-05-08"
output: markdown_document
---

### Gender

[Female authors](output.tables/gender_female.csv)

[Male authors](output.tables/gender_male.csv)

[Authors with missing gender](output.tables/gender_unknown.csv)

[Discarded gender](output.tables/author_gender_discarded.csv)

[Accepted gender](output.tables/author_gender_accepted.csv)

[Conversions](output.tables/author_gender_conversion_nontrivial.csv)

<img src="figure/summary-authorgenders-1.png" title="plot of chunk summary-authorgenders" alt="plot of chunk summary-authorgenders" width="200px" /><img src="figure/summary-authorgenders-2.png" title="plot of chunk summary-authorgenders" alt="plot of chunk summary-authorgenders" width="200px" /><img src="figure/summary-authorgenders-3.png" title="plot of chunk summary-authorgenders" alt="plot of chunk summary-authorgenders" width="200px" /><img src="figure/summary-authorgenders-4.png" title="plot of chunk summary-authorgenders" alt="plot of chunk summary-authorgenders" width="200px" />


Author gender distribution in the complete data:


|Gender    | Documents (n)| Fraction (%)|
|:---------|-------------:|------------:|
|ambiguous |           760|         1.07|
|female    |          3034|         4.26|
|male      |         31252|        43.86|
|NA        |         36202|        50.81|

Author gender distribution over time. Note that the name-gender mappings change over time and geography but this has not been taken into account here.


![plot of chunk summarygendertime](figure/summarygendertime-1.png)



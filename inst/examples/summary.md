---
title: "Preprocessing summary"
author: "Leo Lahti and Niko Ilomäki"
date: "March 2, 2016"
---

# Fennica summary


```
## Error in gzfile(file, "rb"): cannot open the connection
```


Fields of special interest. Real success percentage (proportion of successful conversions compared to non-NA entries in the original data):

![plot of chunk missing2](figure/missing2-1.png)



## Publisher 

[Self-published accepted](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/self_published_accepted.csv) (Check for formatting and synonymes)

[Self-published raw fields](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/self_published_rawfields.csv) (Check that the self-publication is a correct classification for these docs)

We also have corporate info available ?

[Accepted corporate info](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/corporate_accepted.csv)

[Discarded corporate info](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/corporate_discarded.csv)



## Subject geographical places



Top-20 geographical places are shown together with the number of documents assigned to that region. Geography information is available for 5838 documents (8%). There are 645 unique geographical places.

![plot of chunk geo2](figure/geo2-1.png)



[Complete geoplace listing](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/geoplaces.csv)




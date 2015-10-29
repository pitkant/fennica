---
title: "Summary"
author: "Niko Ilomäki and Leo Lahti"
date: "Tuesday, October 20, 2015"
output: markdown_document
---

# Fennica summary

## Annotated documents

Fraction of documents with entries for each annotation field.



Percentage of non-NA entries among all documents in the preprocessed data (note that in some cases a significant fraction of this information is missing already in the raw data)

![plot of chunk missingb](figure/missingb-1.png) 


Fields of special interest: real success percentage (proportion of successful conversions compared to non-NA entries in the original data):


```
## Error in select_(.data, .dots = lazyeval::lazy_dots(...)): object 'df.orig' not found
```

```
## Error in eval(expr, envir, enclos): object 'original.nonNA' not found
```

```
## Error in eval(expr, envir, enclos): object 'original.nonNA' not found
```

```
## Error in eval(expr, envir, enclos): object 'original.nonNA' not found
```

```
## Error in eval(expr, envir, enclos): object 'original.nonNA' not found
```

```
## Error in eval(expr, envir, enclos): object 'original.nonNA' not found
```

```
## Error in eval(expr, envir, enclos): object 'original.nonNA' not found
```

```
## Error in eval(expr, envir, enclos): object 'original.nonNA' not found
```

```
## Error in eval(expr, envir, enclos): object 'original.nonNA' not found
```

```
## Error in eval(expr, envir, enclos): object 'original.nonNA' not found
```

```
## Error in eval(expr, envir, enclos): object 'original.nonNA' not found
```

```
## Error in eval(expr, envir, enclos): object 'original.nonNA' not found
```

```
## Error in is.data.frame(x): object 'df.orig' not found
```

```
## Error in plot.window(xlim, ylim, log = log, ...): need finite 'ylim' values
```

![plot of chunk missing2](figure/missing2-1.png) 

## Pagecounts

[Discarded page count data](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/documentpages-accepted-discarded.csv)

[Successfully converted page counts](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/documentpages-accepted.csv)

Compare gatherings and cm2 sizes as a quality check. This includes all data; the area has been estimated from the gatherings when dimension information was not available.


```
## Error in eval(expr, envir, enclos): could not find function "melt"
```

```
## Error in names(dfm) <- c("gatherings", "area", "documents"): object 'dfm' not found
```

```
## Error in eval(expr, envir, enclos): could not find function "order_gatherings"
```

```
## Error in ggplot(dfm, aes(x = gatherings, y = area)): object 'dfm' not found
```

```
## Error in eval(expr, envir, enclos): object 'documents' not found
```

Compare gatherings and page counts. 


```
## Error in eval(expr, envir, enclos): could not find function "order_gatherings"
```

![plot of chunk summarypagecomp](figure/summarypagecomp-1.png) 

## Publication time

[Successfully converted publication times](publication-time-accepted.csv)

[Discarded publication times](publication-time-discarded.csv)

![plot of chunk publication_time](figure/publication_time-1.png) 

## Publication places

Top-20 publication places are shown together with the number of documents. This info is available for 68765 documents (96%). There are 861 unique publication places.

![plot of chunk publication_place](figure/publication_place-1.png) 

[Successfully converted publication places](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/publication_place.csv)

[Discarded publication places](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/publication_place_discarded.csv)

[Publication places missing country information](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/publication_place_missingcountry.csv)



## Dimensions

[Successfully converted dimension info](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/accepted_dimensions.csv)

[Discarded dimension info](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/missing_dimensions.csv)

[Discarded gatherings info](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/missing_gatherings.csv)


## Publisher 

[Accepted publisher info](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/publisher_accepted.csv)

[Discarded publisher info](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/publisher_discarded.csv)

We also have corporate info available ?

[Accepted corporate info](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/corporate_accepted.csv)



## Authors

[Accepted author info](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/author_accepted.csv)

[Discarded author info](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/author_discarded.csv)


Top-50 uniquely identified authors and number of documents for each (duplicate docs not checked yet).

![plot of chunk authors](figure/authors-1.png) 


## Topics





```
## [1] "Complete subject topic counts in file: output.tables/subjecttopics.tab"
```

Top-50 topics and number of documents for each. In total, there are 3533 unique topics and 20889 documents assigned to one or more topics (29).

![plot of chunk topics3](figure/topics3-1.png) 



## Subject geographical places



Top-50 geographical places are shown together with the number of documents assigned to that region. Geography information is available for 5838 documents (8%). There are 645 unique geographical places.

![plot of chunk geo2](figure/geo2-1.png) 


```
## [1] "Complete counts in file: output.tables/geoplaces.csv"
```



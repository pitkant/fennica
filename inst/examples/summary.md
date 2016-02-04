---
title: "Summary"
author: "Leo Lahti and Niko Ilomäki"
date: "Feb 3, 2016"
output: markdown_document
---

# Fennica summary

## Annotated documents

Fraction of documents with entries for each annotation field. For a full list of summaries for field contents, see [here](https://github.com/rOpenGov/fennica/tree/master/inst/examples/output.tables).



Percentage of non-NA entries among all documents in the preprocessed data (note that in some cases a significant fraction of this information is missing already in the raw data)

![plot of chunk missingb](figure/missingb-1.png)


Fields of special interest: real success percentage (proportion of successful conversions compared to non-NA entries in the original data):


```
## Error in eval(expr, envir, enclos): object 'author' not found
```

```
## Error in apply(dfs, 2, function(x) {: object 'dfs' not found
```

```
## Error in eval(expr, envir, enclos): object 'success' not found
```

```
## Error in eval(expr, envir, enclos): object 'success' not found
```

```
## Error in eval(expr, envir, enclos): object 'success' not found
```

```
## Error in eval(expr, envir, enclos): object 'success' not found
```

```
## Error in eval(expr, envir, enclos): object 'success' not found
```

```
## Error in eval(expr, envir, enclos): object 'success' not found
```

```
## Error in eval(expr, envir, enclos): object 'success' not found
```

```
## Error in eval(expr, envir, enclos): object 'success' not found
```

```
## Error in eval(expr, envir, enclos): object 'success' not found
```

```
## Error in eval(expr, envir, enclos): object 'success' not found
```

```
## Error in eval(expr, envir, enclos): object 'success' not found
```

```
## Error in eval(expr, envir, enclos): object 'success' not found
```

```
## Error in eval(expr, envir, enclos): object 'success' not found
```

```
## Error in plot.window(xlim, ylim, log = log, ...): need finite 'ylim' values
```

![plot of chunk missing2](figure/missing2-1.png)

## Pagecounts

[Discarded page count data](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/pagecount_discarded.csv)

[Successfully converted page counts](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/pagecount_conversion.csv)

Compare gatherings and cm2 sizes as a quality check. This includes all data; the area has been estimated from the gatherings when dimension information was not available.


```
## Error in eval(expr, envir, enclos): object 'area' not found
```

```
## Error in eval(expr, envir, enclos): object 'dfs' not found
```

```
## Error in table(dfs): object 'dfs' not found
```

```
## Error in names(dfm) <- c("gatherings", "area", "documents"): object 'dfm' not found
```

```
## Error in order_gatherings(dfm$gatherings): object 'dfm' not found
```

```
## Error in ggplot(dfm, aes(x = gatherings, y = area)): object 'dfm' not found
```

```
## Error in eval(expr, envir, enclos): object 'documents' not found
```

![plot of chunk summarysizecomp](figure/summarysizecomp-1.png)

Compare gatherings and page counts. 


```
## Error in eval(expr, envir, enclos): object 'gatherings' not found
```

```
## Error in gsub(" pages", "", dfs$pagecount): object 'dfs' not found
```

```
## Error in eval(expr, envir, enclos): object 'dfs' not found
```

```
## Error in group_by_(.data, .dots = lazyeval::lazy_dots(...), add = add): object 'dfs' not found
```

```
## Error in names(dfg) <- c("pages", "gatherings", "documents"): object 'dfg' not found
```

```
## Error in order_gatherings(dfg$gatherings): object 'dfg' not found
```

```
## Error in eval(expr, envir, enclos): object 'dfg' not found
```

```
## Error in ggplot(dfg, aes(x = gatherings, y = pages)): object 'dfg' not found
```

```
## Error in table(dfg$pages): object 'dfg' not found
```

```
## Error in limits(c(...), "y"): object 'ylims' not found
```

```
## Error in 0:n: NA/NaN argument
```

```
## Error in eval(expr, envir, enclos): object 'documents' not found
```

![plot of chunk summarypagecomp](figure/summarypagecomp-1.png)

## Publication time

[Successfully converted publication times](output.tables/publication-time-accepted.csv)

[Discarded publication times](output.tables/publication-time-discarded.csv)


```
## Error in hist.default(df$publication_year, main = "Document frequencies over time"): 'x' must be numeric
```

## Publication places

Top-20 publication places are shown together with the number of documents. This info is available for 68813 documents (96%). There are 442 unique publication places.

![plot of chunk publication_place](figure/publication_place-1.png)

[Successfully converted publication places](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/publication_place_accepted.csv)

[Discarded publication places](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/publication_place_discarded.csv)

[Publication places missing country information](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/publication_place_missingcountry.csv)



## Dimensions

[Successfully converted dimension info](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/accepted_dimensions.csv)

[Discarded dimension info](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/missing_dimensions.csv)

[Discarded gatherings info](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/missing_gatherings.csv)


## Publisher 

[Discarded publisher info](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/publisher_discarded.csv) (Check that ok to discard these)

[Converted publishers](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/publisher_accepted.csv) (Check for formatting and synonymes)

[Self-published accepted](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/self_published_accepted.csv) (Check for formatting and synonymes)

[Self-published raw fields](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/self_published_rawfields.csv) (Check that the self-publication is a correct classification for these docs)



We also have corporate info available ?

[Accepted corporate info](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/corporate_accepted.csv)

[Discarded corporate info](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/corporate_discarded.csv)


## Authors

[Accepted unique authors](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/author_accepted.csv)

[Discarded authors](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/author_discarded.csv)

[Discarded author first names](output.tables/author_name_discarded_first.csv)

[Discarded author last names](output.tables/author_name_discarded_last.csv)

[Authors missing life years](output.tables/authors_missing_lifeyears.csv)


Top-50 uniquely identified authors and number of documents for each (duplicate docs not checked yet).


```
## Error in plot.window(xlim, ylim, log = log, ...): need finite 'xlim' values
```

![plot of chunk authors](figure/authors-1.png)


## Topics






[Complete subject topic counts](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/subjecttopics.tab)

Top-50 topics and number of documents for each. In total, there are 0 unique topics and 0 documents assigned to one or more topics (NaN).


```
## Error in plot.window(xlim, ylim, log = log, ...): need finite 'xlim' values
```

![plot of chunk topics3](figure/topics3-1.png)


## Subject geographical places



Top-50 geographical places are shown together with the number of documents assigned to that region. Geography information is available for 0 documents (NaN%). There are 0 unique geographical places.


```
## Error in plot.window(xlim, ylim, log = log, ...): need finite 'xlim' values
```

![plot of chunk geo2](figure/geo2-1.png)



[Complete geoplace listing](https://github.com/rOpenGov/fennica/blob/master/inst/examples/output.tables/geoplaces.csv)

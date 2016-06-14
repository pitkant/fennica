---
title: "fennica tutorial"
author: Leo Lahti and Niko Ilomaki
date: "2016-05-05"
output:
  html_document:
    theme: flatly
---
<!--
%\VignetteEngine{knitr::rmarkdown}
%\VignetteIndexEntry{fennica Markdown Vignette}
%\usepackage[utf8]{inputenc}
-->



Fennica R package
===========

Tools for processing Finnish bibliographic data.



## Installation

Install development version with:


```r
library(devtools)
install_github("ropengov/fennica")
```

Test the installation by loading the library:


```r
library(fennica)
```


We also recommend setting the UTF-8 encoding:


```r
Sys.setlocale(locale="UTF-8") 
```

```
## Warning in Sys.setlocale(locale = "UTF-8"): OS reports request to set
## locale to "UTF-8" cannot be honored
```

```
## [1] ""
```


## Name - gender mappings

Gender information from the Finnish Population register. All first
names for living Finnish citizens that live in Finland and
abroad. Only names with frequency n>10 are included.  Source:
avoindata.fi service and [Vaestorekisterikeskus
(VRK)](https://www.avoindata.fi/data/fi/dataset/none). Version:
3/2016, licensed with CC-BY 4.0.

Get the name-gender mappings with:


```r
tab <- get_gender_fi()
```

```
## Error in eval(expr, envir, enclos): could not find function "get_gender_fi"
```

```r
kable(head(tab), digits = 2)
```

```
## Error in head(tab): object 'tab' not found
```


## Licensing and Citations

This work can be freely used, modified and distributed under the 
[Two-clause BSD license](http://en.wikipedia.org/wiki/BSD\_licenses).


```r
citation("fennica")
```

```
## 
## To cite package 'fennica' in publications use:
## 
##   Ilomaki Niko, Lahti Leo and Tolonen Mikko (2016). fennica:
##   Finnish National Bibliography Fennica Toolkit. R package version
##   0.1.42. http://github.com/ropengov/fennica
## 
## A BibTeX entry for LaTeX users is
## 
##   @Manual{,
##     title = {fennica: Finnish National Bibliography Fennica Toolkit},
##     author = {Ilomaki Niko and Lahti Leo and Tolonen Mikko},
##     year = {2016},
##     note = {R package version 0.1.42},
##     url = {http://github.com/ropengov/fennica},
##   }
```

## Session info

This vignette was created with


```r
sessionInfo()
```

```
## R version 3.2.3 (2015-12-10)
## Platform: x86_64-pc-linux-gnu (64-bit)
## Running under: Ubuntu 16.04 LTS
## 
## locale:
##  [1] LC_CTYPE=en_US.UTF-8       LC_NUMERIC=C              
##  [3] LC_TIME=en_US.UTF-8        LC_COLLATE=en_US.UTF-8    
##  [5] LC_MONETARY=en_US.UTF-8    LC_MESSAGES=en_US.UTF-8   
##  [7] LC_PAPER=en_US.UTF-8       LC_NAME=C                 
##  [9] LC_ADDRESS=C               LC_TELEPHONE=C            
## [11] LC_MEASUREMENT=en_US.UTF-8 LC_IDENTIFICATION=C       
## 
## attached base packages:
## [1] stats     graphics  grDevices utils     datasets  methods   base     
## 
## other attached packages:
## [1] knitr_1.12.3
## 
## loaded via a namespace (and not attached):
## [1] magrittr_1.5   formatR_1.3    tools_3.2.3    stringi_1.0-1 
## [5] stringr_1.0.0  evaluate_0.8.3
```







---
title: "Printing in a Periphery: a Quantitative Study of Finnish Knowledge Production, 1640-1828"
author: "Mikko Tolonen, Jani Marjanen, Hege Roivainen, Leo Lahti"
date: "2017-02-02"
output: 
  beamer_presentation:
    theme: "boxes"
    colortheme: "orchid"
    fonttheme: "professionalfonts"
fontsize: 13pt
---






---


## From particular data to global perspective?

**Idea**: Study early modern knowledge production, all of it (1470-1830)  

**How?** Combine library catalogues (Fennica, Kungliga, ESTC, CERL HPB database)  

**Important**: cleaning up the data (90% of the effort!) and considering how particular data collections (Finnish National Bibliography, English Short-Title Catalogue etc.) have been formed.  

**How to fail**: take worldcat or similar combination of datasets and analyse it as a whole without cleaning it up first.  

**Overcoming a national gaze** by focus on knowledge production through more complex cross-national network of cities

---

### Data: bibliographic catalogues 1640-1828  

**Fennica** Finnish National bibliography

- 18533 documents 1640-1828

**Kungliga**  Swedish National bibliography

- 68850 documents 1640-1828

**Why this project?**

- Visible roots of the diversity of "Finnishness" reflected in knowledge production, 1640-1828

![plot of chunk unnamed-chunk-1](slides_201606_Krakow/unnamed-chunk-1-1.png)

---


## Methods: Open data analytical ecosystem

**Customized** our dedicated R packages for bibliographic analysis combine flexibility with automation

**Automated** scales well with new data and unforeseen changes; a million documents cleaned up in 30 minutes

**Open source** fully transparent and reproducible data analytics: https://github.com/rOpenGov/fennica

**Research potential** greatly underestimated; world is full of metadata collections

![Data Science Workflow](data-science.png)  
\tiny{(Figure by Hadley Wickham)}


---



## Preprocess & Enrich



**Clean up messy entries**


```r
polish_physical_extent("iii-xxiv, 118, [2] p.")$pagecount
```

```
## [1] 142
```


**Enrich data** (geocoordinates, gender, ..)


```
## [1] "Finland"
```

- Parse, clean up, enrich, summarise, analyze, visualize, report..

---

\begin{center}
\Large{1. General trends and political events}
\end{center}


---

\begin{center}
\tiny{\textcolor{gray}{General trends \& political events}}
\end{center}

### Turku as a Swedish University Town among Uppsala, Tartu and Stockholm (+ Lund & Greifswald)

![plot of chunk map1](slides_201606_Krakow/map1-1.png)

Map by Stamen

---

\begin{center}
\tiny{\textcolor{gray}{General trends \& political events}}
\end{center}

### Publishing activity over time

- 1700-1721 Great Northern War & Fennica drop during "the Great Wrath"
- 1760-1770 Pamphleteering plays a crucial role during abolished censorship
- 1803-1815 Napoleonic wars

<img src="slides_201606_Krakow/publishingovertime-1.png" title="plot of chunk publishingovertime" alt="plot of chunk publishingovertime" width="300px" />

---


\begin{center}
\tiny{\textcolor{gray}{General trends \& political events}}
\end{center}

### Swedish knowledge production & cycles of representation

An example how historical events, namely **parliamentary assemblies** in the Swedish case, have an effect on knowledge production.

![plot of chunk riksdar5](slides_201606_Krakow/riksdar5-1.png)

---

\begin{center}
\Large{2. Publishers in Sweden and Turku}
\end{center}

---

\begin{center}
\tiny{\textcolor{gray}{Publishers in Sweden and Turku}}
\end{center}

### Turku in Sweden: proportions for title count and paper in Swedish University towns
 
![plot of chunk comparisons](slides_201606_Krakow/comparisons-1.png)

---


\begin{center}
\tiny{\textcolor{gray}{Publishers in Sweden and Turku}}
\end{center}

### Publishers in Swedish University towns (and Finland)

![plot of chunk publishers2-finland](slides_201606_Krakow/publishers2-finland-1.png)


---


\begin{center}
\tiny{\textcolor{gray}{Publishers in Sweden and Turku}}
\end{center}

### Top publishers in Turku/Fennica

![plot of chunk publishers4-fennica](slides_201606_Krakow/publishers4-fennica-1.png)

---

\begin{center}
\Large{3. Languages and religious texts in Finland}
\end{center}

---


\begin{center}
\tiny{\textcolor{gray}{Languages \& religious texts in Finland}}
\end{center}

### Different languages in Turku, Stockholm, Uppsala and Lund

![plot of chunk language-perc2](slides_201606_Krakow/language-perc2-1.png)

---

\begin{center}
\tiny{\textcolor{gray}{Languages \& religious texts in Finland}}
\end{center}

### Topic richness per language (publications in Fennica)


![plot of chunk topics232](slides_201606_Krakow/topics232-1.png)

---

\begin{center}
\tiny{\textcolor{gray}{Languages \& religious texts in Finland}}
\end{center}

### Devotional literature (catechisms, hymns, prayers, etc.) 

Form of literature denoting the advancement of reading in Finland in the 19th century. It has been unclear when devotional literature  shows up as a relevant category.

![plot of chunk topics12122](slides_201606_Krakow/topics12122-1.png)

---

\begin{center}
\tiny{\textcolor{gray}{Languages \& religious texts in Finland}}
\end{center}

### Temporary sermons in Latin and Swedish

- Important role in early modern knowledge production. Language of temporary sermons in contrast to devotional literature has not been analysed in Finland (and Sweden). 

![plot of chunk topics882](slides_201606_Krakow/topics882-1.png)

---

\begin{center}
\Large{4. University curriculum and Enlightenment in Finland}
\end{center}

---


\begin{center}
\tiny{\textcolor{gray}{University curriculum \& Enlightenment in Finland}}
\end{center}

### Dissertation languages in Turku 1640-1828

![plot of chunk disslang](slides_201606_Krakow/disslang-1.png)

---


\begin{center}
\tiny{\textcolor{gray}{University curriculum \& Enlightenment in Finland}}
\end{center}

### Printing by topics in different languages in Turku

![plot of chunk topics-103B](slides_201606_Krakow/topics-103B-1.png)


---

\begin{center}
\tiny{\textcolor{gray}{University curriculum \& Enlightenment in Finland}}
\end{center}

### Rise of the octavo sized book as vehicle of Enlightenment

Paper consumption: different document formats over time

<img src="slides_201606_Krakow/LIBER-13-1.png" title="plot of chunk LIBER-13" alt="plot of chunk LIBER-13" width="160px" /><img src="slides_201606_Krakow/LIBER-13-2.png" title="plot of chunk LIBER-13" alt="plot of chunk LIBER-13" width="160px" />

---

##Thanks !

Institutional support:

- Academy of Finland
- University of Helsinki
- Digitalia / The Regional Council of South Savo

Data providers:

- National Library of Finland
- National Library of Sweden

Code infrastructure:

- Github
- R project

For more info, see: 

- \textcolor{blue}{https://github.com/rOpenGov/fennica}

\begin{figure}
\begin{tabular}{cccccc}
\includegraphics[width=2cm,height=2cm]{aka.png}&
\includegraphics[width=1cm,height=1cm]{HY-CC.png}&
\includegraphics[width=1cm,height=1cm]{kansalliskirjasto.png}&
\includegraphics[width=1cm,height=1cm]{kungliga.png}&
\includegraphics[width=1cm,height=1cm]{github-logo.png}&
\includegraphics[width=1cm,height=1cm]{Rlogo.png}
\end{tabular}
\end{figure}

---


### Duplicate publications in Fennica/Kungliga

![plot of chunk duplicates](slides_201606_Krakow/duplicates-1.png)








![plot of chunk title_length](slides_201606_Krakow/title_length-1.png)


![plot of chunk title_length_by_gatherings](slides_201606_Krakow/title_length_by_gatherings-1.png)


![plot of chunk title_length_by_lang](slides_201606_Krakow/title_length_by_lang-1.png)





### Kungliga / Linkoping




[Document listing for Kungliga / Linköping 1640 - 1828](output.tables/Linkoping.tab)


### Title count in Linköping

![plot of chunk linkoping2](slides_201606_Krakow/linkoping2-1.png)


### Unique publishers in Linköping by year

Never two publishers seen on the same year.


| publication_year|publisher                   |
|----------------:|:---------------------------|
|             1664|Kämpe                       |
|             1675|[Daniel Kempe]              |
|             1756|Linköpings stifts tidningar |
|             1793|Linköpings stiftsbibliotek  |
|             1797|Björn                       |
|             1809|Groth & Petré               |
|             1810|Groth & Petré               |
|             1815|Petre och Abrahamsson       |
|             1819|Petre och Abrahamsson       |



### Title count per capita

The historical population sizes used in this analysis are shown in this [table](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/population_sizes_in_cities.csv).


```
## Error in read.table(file = file, header = header, sep = sep, quote = quote, : no lines available in input
```

```
## Error in melt(pop, "Year"): object 'pop' not found
```

```
## Error in colnames(pop) <- c("publication_decade", "publication_place", : object 'pop' not found
```

```
## Error in as_data_frame(pop): object 'pop' not found
```

```
## Error in eval(expr, envir, enclos): object 'pop' not found
```

```
## Error in setdiff(pop$publication_place, "Year"): object 'pop' not found
```

```
## Error in filter_impl(.data, dots): object 'cities' not found
```

```
## Error in filter_impl(.data, dots): object 'pop' not found
```

```
## Error in list_or_dots(...): object 'df1' not found
```

```
## Error in gsub("Linköping", "Linkoping", pop$publication_place): object 'pop' not found
```

```
## Error in inner_join(pop, df, by = c("publication_decade", "publication_place")): object 'pop' not found
```

```
## Error in mutate_impl(.data, dots): non-numeric argument to binary operator
```

```
## Error in eval(expr, envir, enclos): object 'publication_place' not found
```

![plot of chunk percapita](slides_201606_Krakow/percapita-1.png)

| Time| Documents| date|
|----:|---------:|----:|
| 1700|       264| 1700|
| 1701|       208| 1701|
| 1702|       144| 1702|
| 1703|       144| 1703|
| 1704|       115| 1704|
| 1705|       100| 1705|
| 1706|       154| 1706|
| 1707|       129| 1707|
| 1708|       141| 1708|
| 1709|        98| 1709|
| 1710|       162| 1710|
| 1711|        96| 1711|
| 1712|       110| 1712|
| 1713|       125| 1713|
| 1714|       174| 1714|
| 1715|       163| 1715|
| 1716|       162| 1716|
| 1717|       158| 1717|
| 1718|       204| 1718|
| 1719|       232| 1719|
| 1720|       314| 1720|
| 1721|       143| 1721|
| 1722|       165| 1722|
| 1723|       186| 1723|
| 1724|       153| 1724|
| 1725|       140| 1725|
| 1726|       165| 1726|
| 1727|       194| 1727|
| 1728|       180| 1728|
| 1729|       143| 1729|
| 1730|       173| 1730|
| 1731|       246| 1731|
| 1732|       173| 1732|
| 1733|       170| 1733|
| 1734|       219| 1734|
| 1735|       202| 1735|
| 1736|       176| 1736|
| 1737|       159| 1737|
| 1738|       231| 1738|
| 1739|       298| 1739|
| 1740|       269| 1740|
| 1741|       425| 1741|
| 1742|       349| 1742|
| 1743|       386| 1743|
| 1744|       330| 1744|
| 1745|       339| 1745|
| 1746|       373| 1746|
| 1747|       361| 1747|
| 1748|       402| 1748|
| 1749|       346| 1749|
| 1750|       314| 1750|
| 1751|       469| 1751|
| 1752|       346| 1752|
| 1753|       301| 1753|
| 1754|       295| 1754|
| 1755|       339| 1755|
| 1756|       537| 1756|
| 1757|       413| 1757|
| 1758|       375| 1758|
| 1759|       374| 1759|
| 1760|       415| 1760|
| 1761|       425| 1761|
| 1762|       472| 1762|
| 1763|       365| 1763|
| 1764|       359| 1764|
| 1765|       626| 1765|
| 1766|       707| 1766|
| 1767|       568| 1767|
| 1768|       645| 1768|
| 1769|      1152| 1769|
| 1770|       849| 1770|
| 1771|      1233| 1771|
| 1772|      1158| 1772|
| 1773|       610| 1773|
| 1774|       536| 1774|
| 1775|       454| 1775|
| 1776|       460| 1776|
| 1777|       405| 1777|
| 1778|       535| 1778|
| 1779|       445| 1779|
| 1780|       485| 1780|
| 1781|       483| 1781|
| 1782|       486| 1782|
| 1783|       417| 1783|
| 1784|       450| 1784|
| 1785|       448| 1785|
| 1786|       576| 1786|
| 1787|       523| 1787|
| 1788|       591| 1788|
| 1789|       585| 1789|
| 1790|       600| 1790|
| 1791|       497| 1791|
| 1792|       687| 1792|
| 1793|       594| 1793|
| 1794|       529| 1794|
| 1795|       537| 1795|
| 1796|       554| 1796|
| 1797|       573| 1797|
| 1798|       633| 1798|
| 1799|       719| 1799|



```
## Error in filter_impl(.data, dots): object 'cities' not found
```

```
## Error in list_or_dots(...): object 'df1' not found
```

```
## Error in (function (..., row.names = NULL, check.rows = FALSE, check.names = TRUE, : arguments imply differing number of rows: 1269, 0
```

![plot of chunk abstitlecount](slides_201606_Krakow/abstitlecount-1.png)

![plot of chunk octavo](slides_201606_Krakow/octavo-1.png)

```
## Error in eval(expr, envir, enclos): object 'publication_place' not found
```

![plot of chunk octavo](slides_201606_Krakow/octavo-2.png)


## Session info

This document was created with the following versions:


```
## R version 3.3.1 (2016-06-21)
## Platform: x86_64-pc-linux-gnu (64-bit)
## Running under: Ubuntu 16.10
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
##  [1] knitcitations_1.0.7   microbiome_0.99.88    phyloseq_1.16.2      
##  [4] devtools_1.12.0       sorvi_0.7.26          stringr_1.1.0        
##  [7] gisfin_0.9.27         R6_2.2.0              rgdal_1.2-4          
## [10] sp_1.2-3              ggmap_2.6.1           knitr_1.15.1         
## [13] gridExtra_2.2.1       reshape2_1.4.2        magrittr_1.5         
## [16] fennica_0.1.43        bibliographica_0.2.31 dplyr_0.5.0          
## [19] tidyr_0.6.0           ggplot2_2.2.0        
## 
## loaded via a namespace (and not attached):
##   [1] colorspace_1.3-0      rjson_0.2.15          deldir_0.1-12        
##   [4] babynames_0.2.1       dynamicTreeCut_1.63-1 htmlTable_1.7        
##   [7] XVector_0.12.1        lubridate_1.6.0       AnnotationDbi_1.34.4 
##  [10] RefManageR_0.13.1     codetools_0.2-15      splines_3.3.1        
##  [13] doParallel_1.0.10     impute_1.46.0         robustbase_0.92-6    
##  [16] tgp_2.4-14            ade4_1.7-4            Formula_1.2-1        
##  [19] jsonlite_1.1          WGCNA_1.51            cluster_2.0.5        
##  [22] GO.db_3.3.0           png_0.1-7             httr_1.2.1           
##  [25] mapproj_1.2-4         assertthat_0.1        Matrix_1.2-7.1       
##  [28] lazyeval_0.2.0        acepack_1.4.1         htmltools_0.3.5      
##  [31] tools_3.3.1           igraph_1.0.1          NLP_0.1-9            
##  [34] coda_0.18-1           gtable_0.2.0          maps_3.1.1           
##  [37] gmodels_2.16.2        Rcpp_0.12.8           slam_0.1-38          
##  [40] Biobase_2.32.0        RJSONIO_1.3-0         Biostrings_2.40.2    
##  [43] multtest_2.28.0       spdep_0.6-8           gdata_2.17.0         
##  [46] ape_3.5               preprocessCore_1.34.0 nlme_3.1-128         
##  [49] iterators_1.0.8       tensorA_0.36          fastcluster_1.1.21   
##  [52] gender_0.5.1          proto_1.0.0           gtools_3.5.0         
##  [55] XML_3.98-1.5          stringdist_0.9.4.2    DEoptimR_1.0-6       
##  [58] LearnBayes_2.15       zlibbioc_1.18.0       MASS_7.3-45          
##  [61] scales_0.4.1          parallel_3.3.1        biomformat_1.0.2     
##  [64] genderdata_0.5.0      rhdf5_2.16.0          RColorBrewer_1.1-2   
##  [67] memoise_1.0.0         geosphere_1.5-5       rpart_4.1-10         
##  [70] latticeExtra_0.6-28   stringi_1.1.3         maptree_1.4-7        
##  [73] RSQLite_1.0.0         highr_0.6             S4Vectors_0.10.3     
##  [76] foreach_1.4.3         energy_1.7-0          permute_0.9-4        
##  [79] BiocGenerics_0.18.0   bibtex_0.4.0          boot_1.3-18          
##  [82] bitops_1.0-6          RgoogleMaps_1.4.1     compositions_1.40-1  
##  [85] moments_0.14          matrixStats_0.51.0    evaluate_0.10        
##  [88] lattice_0.20-34       labeling_0.3          plyr_1.8.4           
##  [91] IRanges_2.6.1         Hmisc_4.0-0           DBI_0.5-1            
##  [94] foreign_0.8-67        withr_1.0.2           mgcv_1.8-16          
##  [97] RCurl_1.95-4.8        survival_2.40-1       nnet_7.3-12          
## [100] tibble_1.2            bayesm_3.0-2          jpeg_0.1-8           
## [103] grid_3.3.1            data.table_1.10.0     vegan_2.4-1          
## [106] digest_0.6.10         tm_0.6-2              stats4_3.3.1         
## [109] munsell_0.4.3
```






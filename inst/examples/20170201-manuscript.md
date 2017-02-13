---
title: "Printing in a Periphery: a Quantitative Study of Finnish Knowledge Production, 1640-1828"
author: "Mikko Tolonen, Jani Marjanen, Hege Roivainen, Leo Lahti"
date: "2017-02-13"
output: 
  beamer_presentation:
    theme: "boxes"
    colortheme: "orchid"
    fonttheme: "professionalfonts"
fontsize: 13pt
---






---


### Fig. 1: Number of publication places over time

![plot of chunk places_per_decade](20170201_manuscript/places_per_decade-1.png)

---


### Fig 2: Title count over time

![plot of chunk unnamed-chunk-1](20170201_manuscript/unnamed-chunk-1-1.png)

---

### Fig 3: Rise of the Octavo

Paper consumption for various document formats over time.

<img src="20170201_manuscript/LIBER-13-1.png" title="plot of chunk LIBER-13" alt="plot of chunk LIBER-13" width="240px" /><img src="20170201_manuscript/LIBER-13-2.png" title="plot of chunk LIBER-13" alt="plot of chunk LIBER-13" width="240px" />

---


### Fig 4: Average title length (word count)

![plot of chunk title_length_by_lang](20170201_manuscript/title_length_by_lang-1.png)

---


### Fig 5: Turku as Swedish university town

Proportions for title count and paper in Swedish University towns
 
![plot of chunk comparisons](20170201_manuscript/comparisons-1.png)

---


### Fig 6: Publishing activity over time


![plot of chunk publishingovertime](20170201_manuscript/publishingovertime-1.png)

---


### Fig. 7: Riksdagar: Kungliga

![plot of chunk riksdar_kungliga](20170201_manuscript/riksdar_kungliga-1.png)

---



### Fig. 8: Riksdagar: Fennica

![plot of chunk riksdar_fennica](20170201_manuscript/riksdar_fennica-1.png)

---


### Fig 9A: Fennica: Publishers in Swedish University towns (and Finland)

![plot of chunk publishers2-finland](20170201_manuscript/publishers2-finland-1.png)



### Fig 9B: Kungliga: Publishers in Swedish University towns (and Finland)


![plot of chunk kungliga9b](20170201_manuscript/kungliga9b-1.png)


### Fig 10: Publications in Vaasa in Fennica, 1750-1828

With percentage of all books that were not published by the printing house of the court.


![plot of chunk publishers4-fennica](20170201_manuscript/publishers4-fennica-1.png)

---


### Fig 11: Top publishers in Turku/Fennica

![plot of chunk publishers-fennica-11](20170201_manuscript/publishers-fennica-11-1.png)

---



### Fig. 12: Title count per capita

The historical population sizes used in this analysis are shown in this [table](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/population_sizes_in_cities.csv).

![plot of chunk percapita](20170201_manuscript/percapita-1.png)

---




### Fig. 13: Octavo paper consumption

Paper consumption in octavo format books in Stockholm, Turku, Uppsala,
Lund, Göteborg and Linköping. Turku is from Fennica, other cities from
Kungliga.

![plot of chunk octavo](20170201_manuscript/octavo-1.png)


---

### Fig. 14: Octavo title length (word count)

Average title length in words in Stockholm, Turku, Uppsala, Lund,
Göteborg and Linköping. According to Kungliga, except Turku from
Fennica. Only for octavo.

![plot of chunk octavo2](20170201_manuscript/octavo2-1.png)

---


### Fig 15: Language use in Turku, Stockholm, Uppsala and Lund

![plot of chunk language-perc2](20170201_manuscript/language-perc2-1.png)

---


### Fig. 16: Topic richness per language (Fennica)

![plot of chunk topics232](20170201_manuscript/topics232-1.png)

---


### Fig. 17: Temporary sermons in Latin and Swedish

![plot of chunk topics882](20170201_manuscript/topics882-1.png)

---


### Fig. 18: Devotional literature (catechisms, hymns, prayers, etc.) 

Form of literature denoting the advancement of reading in Finland in the 19th century. It has been unclear when devotional literature  shows up as a relevant category.

![plot of chunk topics12122](20170201_manuscript/topics12122-1.png)

---


### Fig. 19: Publisher per city over time

![plot of chunk publishersper](20170201_manuscript/publishersper-1.png)



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
##  [4] knitr_1.15.1          rmarkdown_1.2.9000    gridExtra_2.2.1      
##  [7] magrittr_1.5          devtools_1.12.0       sorvi_0.7.26         
## [10] fennica_0.1.43        bibliographica_0.2.31 reshape2_1.4.2       
## [13] tidyr_0.6.0           stringr_1.1.0         gisfin_0.9.27        
## [16] R6_2.2.0              rgdal_1.2-4           sp_1.2-3             
## [19] ggmap_2.6.1           ggplot2_2.2.1         dplyr_0.5.0          
## 
## loaded via a namespace (and not attached):
##   [1] colorspace_1.3-0      rjson_0.2.15          deldir_0.1-12        
##   [4] babynames_0.2.1       dynamicTreeCut_1.63-1 rprojroot_1.1        
##   [7] htmlTable_1.7         XVector_0.12.1        lubridate_1.6.0      
##  [10] AnnotationDbi_1.34.4  RefManageR_0.13.1     codetools_0.2-15     
##  [13] splines_3.3.1         doParallel_1.0.10     robustbase_0.92-6    
##  [16] impute_1.46.0         tgp_2.4-14            ade4_1.7-4           
##  [19] Formula_1.2-1         jsonlite_1.1          WGCNA_1.51           
##  [22] cluster_2.0.5         GO.db_3.3.0           png_0.1-7            
##  [25] httr_1.2.1            mapproj_1.2-4         backports_1.0.4      
##  [28] assertthat_0.1        Matrix_1.2-7.1        lazyeval_0.2.0       
##  [31] acepack_1.4.1         htmltools_0.3.5       tools_3.3.1          
##  [34] igraph_1.0.1          NLP_0.1-9             coda_0.18-1          
##  [37] gtable_0.2.0          maps_3.1.1            gmodels_2.16.2       
##  [40] Rcpp_0.12.9           slam_0.1-38           Biobase_2.32.0       
##  [43] RJSONIO_1.3-0         Biostrings_2.40.2     multtest_2.28.0      
##  [46] spdep_0.6-8           gdata_2.17.0          ape_3.5              
##  [49] preprocessCore_1.34.0 nlme_3.1-128          iterators_1.0.8      
##  [52] tensorA_0.36          fastcluster_1.1.21    gender_0.5.1         
##  [55] proto_1.0.0           gtools_3.5.0          XML_3.98-1.5         
##  [58] stringdist_0.9.4.2    DEoptimR_1.0-6        LearnBayes_2.15      
##  [61] zlibbioc_1.18.0       MASS_7.3-45           scales_0.4.1         
##  [64] parallel_3.3.1        biomformat_1.0.2      genderdata_0.5.0     
##  [67] rhdf5_2.16.0          RColorBrewer_1.1-2    yaml_2.1.14          
##  [70] memoise_1.0.0         geosphere_1.5-5       rpart_4.1-10         
##  [73] maptree_1.4-7         latticeExtra_0.6-28   stringi_1.1.3        
##  [76] RSQLite_1.0.0         highr_0.6             S4Vectors_0.10.3     
##  [79] foreach_1.4.3         energy_1.7-0          permute_0.9-4        
##  [82] BiocGenerics_0.18.0   bibtex_0.4.0          boot_1.3-18          
##  [85] bitops_1.0-6          moments_0.14          RgoogleMaps_1.4.1    
##  [88] compositions_1.40-1   matrixStats_0.51.0    evaluate_0.10        
##  [91] lattice_0.20-34       labeling_0.3          plyr_1.8.4           
##  [94] IRanges_2.6.1         Hmisc_4.0-0           DBI_0.5-1            
##  [97] foreign_0.8-67        withr_1.0.2           mgcv_1.8-16          
## [100] RCurl_1.95-4.8        survival_2.40-1       nnet_7.3-12          
## [103] tibble_1.2            bayesm_3.0-2          jpeg_0.1-8           
## [106] grid_3.3.1            data.table_1.10.0     vegan_2.4-1          
## [109] digest_0.6.12         tm_0.6-2              stats4_3.3.1         
## [112] munsell_0.4.3
```






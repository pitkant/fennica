---
title: "Printing in a Periphery: a Quantitative Study of Finnish Knowledge Production, 1640-1828"
author: "Mikko Tolonen, Jani Marjanen, Hege Roivainen, Leo Lahti"
date: "2017-06-01"
output: 
  beamer_presentation:
    theme: "boxes"
    colortheme: "orchid"
    fonttheme: "professionalfonts"
fontsize: 13pt
---





```
## Error in gzfile(file, "rb"): cannot open the connection
```


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

- 18511 documents 1640-1828

**Kungliga**  Swedish National bibliography

- 69248 documents 1640-1828

**Why this project?**

- Visible roots of the diversity of "Finnishness" reflected in knowledge production, 1640-1828

![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-1-1.png)

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


```r
get_country("Porvoo")
```

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

![plot of chunk map1](figure/map1-1.png)

Map by Stamen

---

\begin{center}
\tiny{\textcolor{gray}{General trends \& political events}}
\end{center}

### Publishing activity over time

- 1700-1721 Great Northern War & Fennica drop during "the Great Wrath"
- 1760-1770 Pamphleteering plays a crucial role during abolished censorship
- 1803-1815 Napoleonic wars

<img src="figure/publishingovertime-1.png" title="plot of chunk publishingovertime" alt="plot of chunk publishingovertime" width="300px" />


---


\begin{center}
\tiny{\textcolor{gray}{General trends \& political events}}
\end{center}

### Swedish knowledge production & cycles of representation

An example how historical events, namely **parliamentary assemblies** in the Swedish case, have an effect on knowledge production.


```
## Error in transform(dfm, date = as.numeric(as.character(Time))): unused argument (date = as.numeric(as.character(Time)))
```

---

\begin{center}
\Large{2. Publishers in Sweden and Turku}
\end{center}

---

\begin{center}
\tiny{\textcolor{gray}{Publishers in Sweden and Turku}}
\end{center}

### Turku in Sweden: proportions for title count and paper in Swedish University towns
 
![plot of chunk comparisons](figure/comparisons-1.png)

---


\begin{center}
\tiny{\textcolor{gray}{Publishers in Sweden and Turku}}
\end{center}

### Publishers in Swedish University towns (and Finland)

![plot of chunk publishers2-finland](figure/publishers2-finland-1.png)


---


\begin{center}
\tiny{\textcolor{gray}{Publishers in Sweden and Turku}}
\end{center}

### Top publishers in Turku/Fennica

![plot of chunk publishers4-fennica](figure/publishers4-fennica-1.png)

---

\begin{center}
\Large{3. Languages and religious texts in Finland}
\end{center}

---


\begin{center}
\tiny{\textcolor{gray}{Languages \& religious texts in Finland}}
\end{center}

### Different languages in Turku, Stockholm, Uppsala and Lund

![plot of chunk language-perc2](figure/language-perc2-1.png)

---

\begin{center}
\tiny{\textcolor{gray}{Languages \& religious texts in Finland}}
\end{center}

### Topic richness per language (publications in Fennica)


![plot of chunk topics232](figure/topics232-1.png)

---

\begin{center}
\tiny{\textcolor{gray}{Languages \& religious texts in Finland}}
\end{center}

### Devotional literature (catechisms, hymns, prayers, etc.) 

Form of literature denoting the advancement of reading in Finland in the 19th century. It has been unclear when devotional literature  shows up as a relevant category.

![plot of chunk topics12122](figure/topics12122-1.png)

---


\begin{center}
\tiny{\textcolor{gray}{Languages \& religious texts in Finland}}
\end{center}

### Temporary sermons in Latin and Swedish

- Important role in early modern knowledge production. Language of temporary sermons in contrast to devotional literature has not been analysed in Finland (and Sweden). 

![plot of chunk topics882](figure/topics882-1.png)

---

\begin{center}
\Large{4. University curriculum and Enlightenment in Finland}
\end{center}

---


\begin{center}
\tiny{\textcolor{gray}{University curriculum \& Enlightenment in Finland}}
\end{center}

### Dissertation languages in Turku 1640-1828

![plot of chunk disslang](figure/disslang-1.png)

---


\begin{center}
\tiny{\textcolor{gray}{University curriculum \& Enlightenment in Finland}}
\end{center}

### Printing by topics in different languages in Turku

![plot of chunk topics-103B](figure/topics-103B-1.png)


---

\begin{center}
\tiny{\textcolor{gray}{University curriculum \& Enlightenment in Finland}}
\end{center}


### Rise of the octavo sized book as vehicle of Enlightenment

Paper consumption: document formats over time

<img src="figure/Gaudeamus-3-1.png" title="plot of chunk Gaudeamus-3" alt="plot of chunk Gaudeamus-3" width="160px" /><img src="figure/Gaudeamus-3-2.png" title="plot of chunk Gaudeamus-3" alt="plot of chunk Gaudeamus-3" width="160px" /><img src="figure/Gaudeamus-3-3.png" title="plot of chunk Gaudeamus-3" alt="plot of chunk Gaudeamus-3" width="160px" />

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

![plot of chunk duplicates](figure/duplicates-1.png)



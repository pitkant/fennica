<!--
  %\VignetteEngine{knitr::rmarkdown}
  %\VignetteIndexEntry{microbiome tutorial}
  %\usepackage[utf8]{inputenc}
-->
Printing in a Periphery: a Quantitative Study of Finnish Knowledge Production, 1640-1828
========================================================================================

Introduction
------------

Matti Klinge HYn historia; Jari Niemelä, Vain hyödynkö tähden (väitöskirja) käsittelee Turun yliopiston asemaa.

Östholm, Hanna, Litteraturens uppodling : läsesällskap och litteraturkritik som politisk strategi vid sekelskiftet 1800; vertailee Turkua ja Uppsalaa lukuseurojen kautta.

Grönroos, Henrik & Nyman, Ann-Charlotte, Boken i Finland, 1996.

Suomen taloushistoria, Historiallinen tilasto 3, 1983.

Vasenius, Valfrid, Suomalainen kirjallisuus, 1544-1877, 1878.

Gardberg, Carl-Rudolf, Kirjapainotaito Suomessa I-III, 1949-1973.

Heininen, Simo, Ulkomaisen kirjallisuuden tulo Suomeen 1531-1600. SKHSV, 1991.

Häkli, Esko, Näin syntyi ja säilyi suomalainen kirja, 1989.

Laine, Tuija, Vanhimman suomalaisen kirjallisuuden käsikirja, 1997.

Vieraskielinen kirjallisuus Suomessa Ruotsin vallan aikana.

Wittman, Reinhard, Was there a reading revolution at the end of the eighteenth century? A history of reading in the west. Cambridge, 2003.

Aatehistoria ja digitaalisten aineistojen mahdollisuudet (Tolonen and Lahti, 2015)

We have prepared open data analytical ecosystem for in-depth analysis of such data collections (Lahti, Ilomäki, and Tolonen, 2015).

You can cite with the DOI (the citation info will then be collected automatically): (Lahti, Ilomäki, and Tolonen, 2015) or alternatively add new references to the [bib file](bibliography.bib) and then cite using the key with (Lahti, Ilomäki, and Tolonen, 2015). Such citations will be automatically numbered and collected in references section.

-   Knowledge production has been approached largely through a national perspective, here we shift focus by combining materials from Sweden and Finland and by specifically looking at cities as sites for knowledge production. Cities are to this effect seen as partly supplementing, partly competing intellectual centres.

Results
-------

Why Fennica has huge drop in 1700s? Do some publisher disappear (TODO)? Let us look at top publication places during the period 1650-1750 in Fennica:

<img src="figure_201606_Krakow/drop1700-1.png" width="280px" /><img src="figure_201606_Krakow/drop1700-2.png" width="280px" /><img src="figure_201606_Krakow/drop1700-3.png" width="280px" /><img src="figure_201606_Krakow/drop1700-4.png" width="280px" /><img src="figure_201606_Krakow/drop1700-5.png" width="280px" /><img src="figure_201606_Krakow/drop1700-6.png" width="280px" />

The drop in Fennica is explained largely by Great Nortern War (1700-1721). The war and difficult times seems to hit Turku particularly hard in early eighteenth century. What is telling also is that the curve of overall publishing activity in Kungliga is much steeper in eighteenth century compared to Fennica also in the second half of the century. This is the Enlightenment’s rising trend of knowledge production in most of Europe (for example ESTC has a similar development with Kungliga). Thus, development of publishing in Finland is much slower compared to larger European centers in the eighteenth century – this is an important context for the even further difficulties that follow after 1828.

TODO: try check duplicates. Clustering with identical place, identical year, near identical title and then print table with potential duplicates for manual checks.

TODO: Fennica, Hartaus- yms. kirjallisuuden kieli (suomi vai ruotsi) milloin alkaa yleistyä suomenkielinen ja miten tämän julkaiseminen suomeksi kasvaa? Toteutus, valitaan kaikki teokset joihin liittyy joku seuraavista asiasanoista:

virret;arkkiveisut;hartauskirjat;katekismukset;rukouspäivät;saarnat;aapiset;rukoukset;rukous;hengelliset laulut;hartauspuheet;virsikirjat

Hartauskirjallisuudesta ks. Osmo Tiililä, Rukoilevaisten kirjoja, 1961.

Tämän jälkeen tarkkaillaan aikajanalla näiden teosten esiintymistä, erottavana tekijänä kieli (suomi vs. ruotsi). ko. analyysi kannattaa jatkaa myös pidemmälle kuin 1828 Fennican osalta. Erilaisia tarkkailukulmia: 1) yleinen, 2) paikkakunta sekä 3) julkaisijakohtainen kehitys.

Muutenkin, näitä suomi vs. ruotsinkieli kysymyksiä kannattaa yrittää toteuttaa.

TODO: yleinen vertailu suomen-, ruotsin- ja muun kielisestä materiaalista Fennicassa aikajanalla.

### General trends: Fennica vs. Kungliga

Relevant summaries can be moved here and polished. Which figures at least ? Just let me know and I will add.

-   [Fennica overview](https://github.com/rOpenGov/fennica/blob/master/inst/examples/overview.md)
-   [Kungliga overview](https://github.com/rOpenGov/kungliga/blob/master/antagomir/overview.md)

Voisiko nämä molemmat rajata tätä analyysia varten 1640-1828? Voisin sitten poimia sieltä sopivat summaryt tänne tuotaviksi. Mielessä on mm. <https://github.com/rOpenGov/fennica/blob/master/inst/examples/author.md> Niin että täältä ottaisi top-author timelinen molemmista Fennicasta ja Kungligasta vierekkäin. Tätä ennen pitää kuitenkin tehdä näiden top-auktoreiden osalta putsaus. Kun aineisto rajattu nyt tarkasteltaviin niin tiedetään sitten mitkä auktorit tätä varten putsataan.

Overall development in publishing activity:

<img src="figure_201606_Krakow/publishingovertime-1.png" width="430px" />

The top publication places ranked by the title count

![](figure_201606_Krakow/LIBER-topplace-1.png)

Comparison of printing activity in Turku, Uppsala, Lund, and Stockholm. Turussa julkaiseminen alkaa vasta 1640-luvulla, mutta ollaan kiinnostuttu ruotsalaisesta julkaisemisesta ennen sitä. Esim miten Turun yliopiston perustaminen vaikuttaa ruotsalaiseen julkaisukenttään 1600-luvun aikana. I can provide percentages instead of counts, or paper consumption estimates (not reliable yet, though), barplots, selected time spans, selected places etc.. just let me know what is needed.

<img src="figure_201606_Krakow/publishingactivitycomparisons-1.png" width="430px" /><img src="figure_201606_Krakow/publishingactivitycomparisons-2.png" width="430px" />

### Effects of historical events

**Riksdagar** are in some cases associated with publishing peaks (see Figure ...). See "Vapauden ajan valtiopäivät" from 1719 onwards ?

In particular: Riksdag Stockholm 20 januari 1719 1 juni 1719; Stockholm 14 maj 1734 14 december 1734; Stockholm 21 februari 1765 21 oktober 1766; Norrköping & Stockholm 22 april 1769 5 februari 1770; Stockholm 19 juni 1771 12 september 1772; Gävle 26 januari 1792 24 februari 1792.

The publishing of historical works in .. on a timeline highlighting the eras of the riksdagar (16..-16..)..

**Painovapaus**, 1766, räjähtääkö / kasvaako julkaiseminen merkittävästi ja miten tämä näkyy Tukholma vs. muu valtakunta (ml. Turku)? Painovapaus on 1766-1772, miten tämä näkyy ?

<img src="figure_201606_Krakow/riksdar1-1.png" width="430px" /><img src="figure_201606_Krakow/riksdar1-2.png" width="430px" />

Focus on Gävle (gray) during riksdagar. Gävle has 0 occurrences in Fennica, hence not included here. The figure on Gävle is based on Kungliga.

<img src="figure_201606_Krakow/riksdar2-1.png" width="430px" />

Title counts in selected places in the Kungliga catalogue.

<img src="figure_201606_Krakow/selectedplaces-1.png" width="280px" /><img src="figure_201606_Krakow/selectedplaces-2.png" width="280px" /><img src="figure_201606_Krakow/selectedplaces-3.png" width="280px" /><img src="figure_201606_Krakow/selectedplaces-4.png" width="280px" /><img src="figure_201606_Krakow/selectedplaces-5.png" width="280px" /><img src="figure_201606_Krakow/selectedplaces-6.png" width="280px" /><img src="figure_201606_Krakow/selectedplaces-7.png" width="280px" /><img src="figure_201606_Krakow/selectedplaces-8.png" width="280px" /><img src="figure_201606_Krakow/selectedplaces-9.png" width="280px" /><img src="figure_201606_Krakow/selectedplaces-10.png" width="280px" /><img src="figure_201606_Krakow/selectedplaces-11.png" width="280px" /><img src="figure_201606_Krakow/selectedplaces-12.png" width="280px" /><img src="figure_201606_Krakow/selectedplaces-13.png" width="280px" />

Kungliga publications outside Sweden and Finland.

<img src="figure_201606_Krakow/selectedplaces2-1.png" width="600px" />

### Book printing in Finland

mitä voidaan sanoa suomalaisesta kirjatuotannosta ylipäänsä sekä löydetäänkö sieltä mitään mielenkiintoisia kehityskulkuja ylipäänsä vai pelkästään toteamus, että suomalainen tiedontuotanto oli hyvin vähäistä tarkastellulla ajanjaksolla.

### Book as media: development over time

Paper consumption per document in the top publication places. Note that paper consumption estimates have still problems so take this with reservations. Are there time periods with remarkable changes in paper consumption per document (meaning that small or large volumes suddenly become more frequent) ?

<img src="figure_201606_Krakow/bookmedia2-1.png" width="430px" /><img src="figure_201606_Krakow/bookmedia2-2.png" width="430px" />

Overview on how over 50 page documents spread in time. Paper consumption in books (over 50 pages; balls) versus other documents (less or equal than 50 pages; triangles). TODO: voidaanko tässä nähdä paikallisia eroja ?

<img src="figure_201606_Krakow/bookmedia1-1.png" width="430px" /><img src="figure_201606_Krakow/bookmedia1-2.png" width="430px" />

Average paper consumption per document over time:

<img src="figure_201606_Krakow/LIBER-11-1.png" width="600px" />

The development of book formats over time. Folios (1to ja 2to) are largely missing (in contrast to ESTC). Moreover, the quarto (4to) and octavo (8vo) increase rapidly in 1700s.

<img src="figure_201606_Krakow/papercompbyformat-1.png" width="430px" /><img src="figure_201606_Krakow/papercompbyformat-2.png" width="430px" /><img src="figure_201606_Krakow/papercompbyformat-3.png" width="430px" /><img src="figure_201606_Krakow/papercompbyformat-4.png" width="430px" />

Paper consumption for different document formats over time. Each point represents a decade. Loess smoothing.

<img src="figure_201606_Krakow/LIBER-13-1.png" width="430px" /><img src="figure_201606_Krakow/LIBER-13-2.png" width="430px" />

Paper consumption in selected places (Fennica):

<img src="figure_201606_Krakow/201606krakow-turkuvsother-1.png" width="430px" /><img src="figure_201606_Krakow/201606krakow-turkuvsother-2.png" width="430px" />

### Publisher analysis

Puhutaan julkaisijatoiminnan kehityksestä ikään kuin luonnollisena kehityksenä - eli yhteys luonnonilmiöiden kehitykseen säilyisi.

Pystytäänkö julkaisemiseen liittyvästä Fennica-datasta erottelemaan selkeitä trendejä suomalaisesta tiedontuotannosta 1640-1828, pääfokus julkaisijat: Miten uusia julkaisijoita tulee julkaisijakenttään Suomessa ja katoaa. Pääpaino erityisesti sillä kun julkaisijakartalle tulee uusia toimijoita! \[TÄHÄN VOISI MIETTIÄ KARTTAKUVIEN SARJAA TAI STACKED BARPLOTTIA JONKA DIVERSITEETTI KASVAA\]

Toimijoita voisi myös yrittää luokitella suhteellisesti (“iso”, “keskikokoinen”, “pieni”) liittyen vuosittaiseen julkaisuvoluumiin jota mitataan niin julkaisujen määrän kuin myös paperinkulutusvoluumin suhteen. Vertailua suurimpien julkaisijoiden kesken.

Analyysia voisi tästä tehdä sitten näiden luokkien kehityksen mukaan. “Siinä missä Londicer 1700-luvun Vaasassa näyttää aina julkaisseen asetukset jonkinlaisena kokoomapainoksena, mutta Frenckellin kirjapainosta ne tuli yksitellen. Siten Frenckellin julkaisemien niteiden määrä saattaa näyttää suurelta verrattuna Londiceriin, mutta itse asiassa sisältömäärä on sama”. → Tämä hypoteesi voidaan todentaa/tarkistaa/korjata kun mukana on paperinkulutus!

Julkaisijoiden ilmentyminen kartalle paperinkulutusvoluumi huomioiden: julkaisutoiminnan leviäminen ja kasvu ajassa eri paikkakunnilla. Paperinkulutus voi osoittautua hyväksi työvälineeksi erityisesti kun tiedetään, että toiset isot julkaisijat julkaisivat esim. jotain asetuskokoelmia yksittäin ja toiset taas ryppäinä. Eli julkaisijoiden sisällä erottelua eri tyyppisten julkaisujen suhteen pitää tehdä.

Julkaisijoista tehtävä verkostoanalyysi. keskeisimmät “nodet” siihen miten julkaisijakenttä muuttuu ajassa. Julkaisijoita voisi myös yrittää luokitella eniten käytettyjen asiasanojen mukaan. Näiden perusteella voidaan varmaankin erotella yliopistojulkaiseminen, asiakirja/asetusjulkaiseminen ja kirjajulkaiseminen. Tämän jälkeen auktorit, valtioasiakirjat, yliopistodokumentit, kirjat ja muut julkaisut kategoroina joiden ympärille verkostoanalyysi voisi syntyä (valtionasiakirjojen ja yliopisto-aineiston luokittelu voisi yhdistää myös asiasanojen ja otsikoiden analyysia). \[OK monenlaista voidaan tehdä, onko tämä asiasanajuttu nyt tärkeä vai vähemmän tärkeä prioriteetti?\]

### University publishing

Yliopistojulkaisuista mahd. pian yleiset tilastolliset näkymät ja voidaan sitten arvioida onko joku mahdollisesti pahastikin vielä pielessä esim. väitöskirjoiksi Kungligan osalta luokiteltavissa aineistoissa.

Yleinen tilasto "väitöskirjaksi" merkityistä teoksista (aikajana, julkaisupaikka) olisi hyvä Kungligan osalta. Tämä toimii lähtökohtana että nähdään sisällöstä jotain: milloin niitä väitöskirja-luokiteltuja teoksia Kungligassa on merkitty julkaistuiksi sekä missä. Tämän vertaaminen Fennican pohjalta samaan eli "väitöskirjaksi" täggättyihin on tärkeää.

analyysi mitä julkaisukentällä tapahtuu eri paikoissa kun uusia julkaisijoita tulee kartalle (meneekö esim. jossain toisessa yliopistossa tuotanto suhteessa alas kun matkan varrella tulee uusia yliopistoja vai ei) jne.

Yliopistojen ilmestyminen ruotsinvaltakunnassahan on (ks. aikajanat):

Uppsala: 1477

Tartu / Dorpat / Tarto (eikös paikkakunnittain synonyymit toimi jo?): 1633

Turku: 1640

Lund: 1666

Greifwald: 1456 (Ruotsin systeemissä 1600-1815)

Greifswald mukaan yliopistoanalyysiin. osana Ruotsin valtakuntaa.

Tätä kautta päästään hyvin kiinni Turku, Upsala, Lund, Tarto yms. vertailuihin. Siitä sitten kuljetaan kohti Turun suhdetta muuhun Suomeen ja katso kääntyy erityisesti julkaisijoihin (samaten toki myös noiden yliopistokaupunkien osalla, jossa myös tehdään sitten vertailua akateeminen vs. hallinnollinen vs. muu julkaisutoiminta).

**Dissertation language** milloin alkaa erityisesti tulemaan ruotsinkielellä väitöksiä eri paikoissa on mielenkiintoinen kysymys. tuleeko jostain yliopistosta erityisesti ruotsinkielistä materiaalia 1700-luvulla. pitää erityisesti analysoida niitä väitöskirjoja sekä niissä tapahtuvia muutoksia. See [Fennica](https://github.com/rOpenGov/fennica/blob/master/inst/examples/language.md) and [Kungliga](https://github.com/rOpenGov/kungliga/blob/master/antagomir/language.md),

### Case of Turku

Turun akateemisen julkaisemisen vertautuminen muihin ruotsalaisen yliopistojärjestelmän kaupunkeihin: Lukumäärävertailut aikajanalla. Akateemisten julkaisujen blokkaaminenhan ei pitäisi olla kovinkaan hankalaa \[väitöskirjat, mitä muuta tähän siis?\].

Turku vs. muu Suomi: Turku osana ruotsalaista yliopistojärjestelmää (ml. Tarto) muuttuu tärkeäksi).

Kuinka paljon yliopistoon liittyvää julkaisutoimintaa

Kuinka paljon julkaisijoita

Miten julkaisijoiden verkosto muodostuu Turussa

Miten eri julkaisijoita Turussa voitaisiin luokitella (julkaiseeko joku paperinkulutukseltaan vain pieniä dokumentteja, julkaiseeko joku painotalo huomattavasti enemmän kuin toiset).

### Other points if the time allows

Vertailukohtia CERListä tai sitten ehkä ESTCstä pitää ottaa Fennicalle että pystytään suhteuttamaan mistä puhutaan \[verratkaa vaikka aiempiin julkaisuihin, ei sotketa enempää katalogeja nyt tähän soppaan ?\]

Ks myös Subject topics ainakin yliopisto-väitöskirjoihin liittyen.

tuleeko uusia kustantajia kenttään valtiopäivien myötä ?

-   Fennica pois lukien Suomi ?
-   Kungliga pois lukien Ruotsi ?

[Topic](https://github.com/rOpenGov/kungliga/blob/master/antagomir/topic.md) saadaanko mitään irti (1470-1830 tai 1640-1830).

Further todo points. Let us move in this manuscript only those points that there is time to do.

-   [Fennica TODO](https://github.com/rOpenGov/fennica/blob/master/inst/examples/TODO.md)
-   [Kungliga TODO](https://github.com/rOpenGov/kungliga/blob/master/antagomir/TODO.md)

Conclusions
-----------

Library catalogues contain rich metadata on...

Here we have analysed Fennica & Kungliga..

Further draft text in the funding application..?

Materials and Methods
---------------------

We obtained Fennica and Kungliga library catalogues from..

The raw data contains metadata 71919 and 385771 documents in Fennica and Kungliga, respectively. We limited the present analysis in the time interval 1474-1828, yielding a subset of 20328 (28.3%) and 73176 (0%) documents for Fennica and Kungliga, respectively.

We have prepared open data analytical ecosystem for in-depth analysis of such data collections ([Lahti, Ilomaki, Tolonen (2015)](http://doi.org/10.18352/lq.10112)). In summary, the data analytical ecosystem does .. Reading, parsing, cleaning up, enriching, summarizing, analysis, visualization, figures and tables.. \[SUMMARY FIGURE OF THE PROCESS?\]. Full source code to reproduce these analyses are available via Github ([Fennica](https://github.com/rOpenGov/fennica/); [Kungliga](https://github.com/rOpenGov/kungliga/)).

A brief summary of the data processing steps:

**Author names**

**Author life years**

**Publication place**

**Publishers**

**Dissertations**

**Duplicate removal** Combining the catalogs ..

**Enriching** to add gender, country, geocoordinates ..

The package utilizes tools from a number of other R extensions, including dplyr (Wickham and Francois, 2015), ggplot2 (Wickham, 2009), stats (R Core Team, 2016), tidyr (Wickham, 2016).

### Acknowledgements

Supported by Academy of Finland (grant 293316).

References
----------

### References

\[1\] H. Wickham. *ggplot2: Elegant Graphics for Data Analysis*. Springer-Verlag New York, 2009. ISBN: 978-0-387-98140-6. &lt;URL: <http://ggplot2.org>&gt;.

\[2\] L. Lahti, N. Ilomäki and M. Tolonen. "A quantitative study of history in the English short-title catalogue (ESTC) 1470-1800". In: *LIBER Quarterly* 25.2 (2015), pp. 87-116. ISSN: 2213-056X. &lt;URL: <http://liber.library.uu.nl/index.php/lq/article/view/10112>&gt;.

\[3\] L. Lahti, N. Ilomäki and M. Tolonen. "A Quantitative Study of History in the English Short-Title Catalogue (ESTC), 1470-1800". In: *LIBER Quarterly* 25.2 (2015), p. 87. DOI: 10.18352/lq.10112. &lt;URL: <http://dx.doi.org/10.18352/lq.10112>&gt;.

\[4\] M. Tolonen and L. Lahti. "Aatehistoria ja digitaalisten aineistojen mahdollisuudet". In: *Ennen & Nyt 2* 2 (Aug. 2015). &lt;URL: <http://www.ennenjanyt.net/2015/08/aatehistoria-ja-digitaalisten-aineistojen-mahdollisuudet>&gt;.

\[5\] H. Wickham and R. Francois. *dplyr: A Grammar of Data Manipulation*. R package version 0.4.3. 2015. &lt;URL: <https://CRAN.R-project.org/package=dplyr>&gt;.

\[6\] R Core Team. *R: A Language and Environment for Statistical Computing*. R Foundation for Statistical Computing. Vienna, Austria, 2016. <URL: https://www.R-project.org/>.

\[7\] H. Wickham. *tidyr: Easily Tidy Data with `spread()` and `gather()` Functions*. R package version 0.4.1. 2016. &lt;URL: <https://CRAN.R-project.org/package=tidyr>&gt;.

Miscellaneous ideas to consider
-------------------------------

[ESTC-analyses](https://github.com/rOpenGov/estc) ([LIBER](https://github.com/rOpenGov/estc/blob/master/inst/examples/20151023-LIBER.md) in particular); toisto Fennica/Kungliga datoilla ? LL: lisäilin joitain analyyseja tahan mutta jos tahdotte lisaa niin pyytakaa erikseen.

The most active known female authors based on the title count:

<img src="figure_201606_Krakow/201606krakow-fennica-topfemale-1.png" width="850px" />

Session info
------------

This document was created with the following versions:

``` r
sessionInfo()
```

    ## R version 3.3.1 (2016-06-21)
    ## Platform: x86_64-pc-linux-gnu (64-bit)
    ## Running under: Ubuntu 16.04 LTS
    ## 
    ## locale:
    ##  [1] LC_CTYPE=en_US.UTF-8       LC_NUMERIC=C              
    ##  [3] LC_TIME=de_BE.UTF-8        LC_COLLATE=en_US.UTF-8    
    ##  [5] LC_MONETARY=de_BE.UTF-8    LC_MESSAGES=en_US.UTF-8   
    ##  [7] LC_PAPER=de_BE.UTF-8       LC_NAME=C                 
    ##  [9] LC_ADDRESS=C               LC_TELEPHONE=C            
    ## [11] LC_MEASUREMENT=de_BE.UTF-8 LC_IDENTIFICATION=C       
    ## 
    ## attached base packages:
    ## [1] stats     graphics  grDevices utils     datasets  methods   base     
    ## 
    ## other attached packages:
    ##  [1] knitcitations_1.0.7   rmarkdown_0.9.6.14    stringr_1.0.0        
    ##  [4] microbiome_0.99.83    phyloseq_1.16.2       knitr_1.13           
    ##  [7] gridExtra_2.2.1       reshape2_1.4.1        tidyr_0.4.1          
    ## [10] fennica_0.1.42        ggplot2_2.1.0         magrittr_1.5         
    ## [13] sorvi_0.7.46          tibble_1.0            dplyr_0.4.3          
    ## [16] bibliographica_0.2.24 devtools_1.11.1      
    ## 
    ## loaded via a namespace (and not attached):
    ##  [1] nlme_3.1-128          bitops_1.0-6          matrixStats_0.50.2   
    ##  [4] lubridate_1.5.6       httr_1.1.0            doParallel_1.0.10    
    ##  [7] RColorBrewer_1.1-2    dynamicTreeCut_1.63-1 tools_3.3.1          
    ## [10] R6_2.1.2              vegan_2.3-5           rpart_4.1-10         
    ## [13] Hmisc_3.17-4          DBI_0.4-1             lazyeval_0.1.10      
    ## [16] BiocGenerics_0.18.0   mgcv_1.8-12           colorspace_1.2-6     
    ## [19] permute_0.9-0         ade4_1.7-4            nnet_7.3-12          
    ## [22] withr_1.0.1           moments_0.14          preprocessCore_1.34.0
    ## [25] chron_2.3-47          WGCNA_1.51            Biobase_2.32.0       
    ## [28] formatR_1.4           Cairo_1.5-9           NLP_0.1-9            
    ## [31] labeling_0.3          slam_0.1-34           scales_0.4.0         
    ## [34] tm_0.6-2              tgp_2.4-14            digest_0.6.9         
    ## [37] foreign_0.8-66        stringdist_0.9.4.1    XVector_0.12.0       
    ## [40] htmltools_0.3.5       bibtex_0.4.0          highr_0.6            
    ## [43] RSQLite_1.0.0         impute_1.46.0         jsonlite_0.9.21      
    ## [46] acepack_1.3-3.3       RCurl_1.95-4.8        GO.db_3.3.0          
    ## [49] Formula_1.2-1         biomformat_1.0.2      Matrix_1.2-6         
    ## [52] maptree_1.4-7         Rcpp_0.12.5           munsell_0.4.3        
    ## [55] S4Vectors_0.10.1      RefManageR_0.10.13    ape_3.5              
    ## [58] yaml_2.1.13           stringi_1.1.1         RJSONIO_1.3-0        
    ## [61] MASS_7.3-45           zlibbioc_1.18.0       rhdf5_2.16.0         
    ## [64] plyr_1.8.4            grid_3.3.1            parallel_3.3.1       
    ## [67] gender_0.5.1          crayon_1.3.1          lattice_0.20-33      
    ## [70] Biostrings_2.40.2     splines_3.3.1         multtest_2.28.0      
    ## [73] igraph_1.0.1          fastcluster_1.1.20    codetools_0.2-14     
    ## [76] stats4_3.3.1          XML_3.98-1.4          babynames_0.2.1      
    ## [79] evaluate_0.9          latticeExtra_0.6-28   data.table_1.9.6     
    ## [82] foreach_1.4.3         testthat_1.0.2        gtable_0.2.0         
    ## [85] assertthat_0.1        roxygen2_5.0.1        survival_2.39-4      
    ## [88] genderdata_0.5.0      iterators_1.0.8       AnnotationDbi_1.34.3 
    ## [91] memoise_1.0.0         IRanges_2.6.0         cluster_2.0.4

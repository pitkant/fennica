Analysis of Finnish national bibliography (Fennica) Data Collection
============================================

This is an algorithmic toolkit for [R](http://r-project.org), designed for transparent quantitative analysis of the Finnish national bibliography [Fennica](http://www.kansalliskirjasto.fi/kirjastoala/fennica.html) metadata collection.


### Data overview

The data is summarized in the following automatically generated files:

 * [Overall summary of the Fennica metadata](https://github.com/rOpenGov/fennica/blob/master/inst/examples/summary.md)
 * [Analyses on specific publication places and other topics](https://github.com/rOpenGov/fennica/tree/master/inst/examples) (see the .md files)
 * [Digital History in Finland seminar (University of Helsinki, Dec 9, 2015)](https://github.com/rOpenGov/fennica/blob/master/inst/examples/20151209-HelsinkiDH.md) 



### Reproducible analysis

The algorithmic details to reproduce these summaries from the raw data
are fully documented with the [source
code](https://github.com/rOpenGov/fennica/blob/master/inst/examples/summary.md). This
includes several steps from raw data extraction to harmonizing the
textual annotation fields, preprocessing the information, and carrying
out statistical analysis and visualization. This packages utilizes
additional tools from the more generic
[bibliographica](https://github.com/rOpenGov/bibliographica) and many
other R packages. The raw data is confidential and available only on a
separate agreement, so we can only publish statistical summaries and
the our own analysis source code here.

The tools are under active, open development; the tools, analysis, and documentation are being constantly updated. You are welcome to:
  * [submit suggestions and bug reports](https://github.com/ropengov/fennica/issues)
  * [send a pull request](https://github.com/ropengov/fennica/) (we will acknowledge contributions)
  * join IRC at !ropengov@Freenode
  * [contact or follow us](http://ropengov.github.io/contribute/)


### Acknowledgements

Main developers: [Leo Lahti](https://github.com/antagomir/), [Niko Ilomaki](https://github.com/NVI/), [Hege Roivainen](hegroiva), [Mikko Tolonen](https://github.com/orgs/rOpenGov/people/tolonen). Part of [rOpenGov](http://ropengov.github.io/).  

The project is funded 2016-2019 by Academy of Finland (grant 293316 COMHIS) - [Computational History and the Transformation of Public Discourse in Finland 1640–1910](http://webfocus.aka.fi/ibi_apps/WFServlet?IBIF_ex=x_HakKuvaus&CLICKED_ON=&HAKNRO1=293316&UILANG=en&IBIAPP_app=aka_ext&TULOSTE=HTML). This is a consortium between [University of Helsinki](http://www.helsinki.fi/modernlanguages/), University of Turku [Department of Cultural History](http://www.utu.fi/en/units/hum/units/culturalhistory/Pages/home.aspx) and [Department of Information Science](http://www.utu.fi/fi/yksikot/sci/yksikot/it/Sivut/home.aspx), and the [Finnish National Library](https://www.kansalliskirjasto.fi/fi/projektit/comhis-computational-history-and-the-transformation-of-public-discourse-in-finland-1640).



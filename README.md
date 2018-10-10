Fennica: analysis of the Finnish national bibliography
============================================

This repository contains automated analysis of the Finnish national bibliography, [Fennica](http://www.kansalliskirjasto.fi/kirjastoala/fennica.html). Fennica includes bibliographic metadata for over 70,000 documents between 1488-1955, representing the publishing activity in Finland during that period. This is analyzed in parallel with [Kungliga](https://github.com/comhis/kungliga), a related collection of bibliographic metadata from the Swedish National library.

The research project is funded by Academy of Finland 2016-2019.


### Reproducible analysis

The data is summarized in the following automatically generated files:

 * [Fennica: a generic overview](https://github.com/comhis/fennica/blob/master/inst/examples/overview.md)
 * [Fennica: a specific overview](https://github.com/comhis/fennica/blob/master/inst/examples/summary.md) (Fennica specific preprocessing notes)
 * Presentation slide templates ([PDF](https://github.com/comhis/fennica/blob/master/inst/examples/slidetemplates.pdf)) and [code](inst/examples/slidetemplates.Rmd)
 * A Quantitative Approach to Book Printing in Sweden and Finland, 1640–1828 [Source code for the figures](https://github.com/COMHIS/fennica/blob/master/inst/examples/201808-HistoricalMethods-Figures.Rmd)
 * Knowledge production in Finland 1470-1828: Digital Humanities 2016 conference presentation slides ([PDF](https://github.com/comhis/fennica/blob/master/inst/examples/20160715-Krakow-Fennica.pdf)) and [code](inst/examples/20160715-Krakow-Fennica.pdf)
 * [Analyses on specific publication places and other topics](https://github.com/comhis/fennica/tree/master/inst/examples) (see the .md files) 
 * [Figures and analyses for CCQ2019](https://gitlab.com/COMHIS/CCQ2018/blob/master/Figures.pdf)

The analyses cover several steps including XML parsing, data
harmonization, removing unrecognized entries, enriching and organizing
the data, carrying out statistical summaries, analysis, visualization
and automated document generation. The analyses and full [source
code](https://github.com/comhis/fennica/blob/master/inst/examples/main.R)
are provided in this repository and can be freely reused under the
[BSD 2 clause](https://opensource.org/licenses/BSD-2-Clause) (FreeBSD)
open source licence. The analyses are based on the
[R](http://r-project.org) and rely on the custom
[bibliographica](https://github.com/comhis/bibliographica) package
for bibliographic data analysis, as well as many other R packages. The
original raw data is available only on a separate agreement, so we are
here publishing only the statistical summaries and our own analysis
code.


### Contact

Email: leo.lahti@iki.fi

The project is under active open development and the tools, analysis,
and documentation are being constantly updated. You can support the
project by

  * [sending suggestions and bug reports](https://github.com/comhis/fennica/issues)
  * [pull requests](https://github.com/comhis/fennica/) (we will acknowledge contributions)
  * [star this github project](http://github.com/comhis/fennica/)


### Acknowledgements


The project is part of [COMHIS](http://comhis.github.io/).


Main contributors:

  * [Leo Lahti](https://github.com/antagomir/)
  * [Mikko Tolonen](https://github.com/orgs/comhis/people/tolonen)
  * [Jani Marjanen](jmarjane)
  * [Hege Roivainen](hegroiva)  
  * [Niko Ilomaki](https://github.com/NVI/)


Funding:

  * [Academy of Finland](https://www.kansalliskirjasto.fi/en/projects/comhis-computational-history-and-the-transformation-of-public-discourse-in-finland-1640)


Special thanks:

  * [Finnish National library](https://www.kansalliskirjasto.fi/en/) (Fennica data collection)
  * [VRK (Finnish population register)](http://vrk.fi) Finnish first name-gender
    mappings and demographic information
  * [Maanmittauslaitos](http://mml.fi) Geographic information
  * [Tilastokeskus](http://www.tilastokeskus.fi/) Demographic information
  * [Open Street Map](https://www.openstreetmap.org) Geographic information
  * [Google Maps] Geographic information  
  * [Open Knowledge Finland ry.](http://fi.okfn.org/) 


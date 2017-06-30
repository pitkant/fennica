# For info on Travis R scripts, see
# http://jtleek.com/protocols/travis_bioc_devel/

# Roxygen tips:
# http://r-pkgs.had.co.nz/man.html

#/home/lei/bin/R-3.4.0/bin/R CMD BATCH document.R
/home/lei/bin/R-3.4.0/bin/R CMD build ../../ --no-build-vignettes #--no-tests
#/home/lei/bin/R-3.4.0/bin/R CMD build ../../ 
#/home/lei/bin/R-3.4.0/bin/R CMD check fennica_0.0.1.tar.gz
/home/lei/bin/R-3.4.0/bin/R CMD check --as-cran fennica_0.1.43.tar.gz --no-tests
/home/lei/bin/R-3.4.0/bin/R CMD INSTALL fennica_0.1.43.tar.gz
#/home/lei/bin/R-3.4.0/bin/R CMD BATCH document.R

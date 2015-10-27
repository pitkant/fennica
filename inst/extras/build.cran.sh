# For info on Travis R scripts, see
# http://jtleek.com/protocols/travis_bioc_devel/

# Roxygen tips:
# http://r-pkgs.had.co.nz/man.html

#/usr/local/bin/R CMD BATCH document.R
/usr/local/bin/R CMD build ../../ --no-build-vignettes --no-tests
#/usr/local/bin/R CMD build ../../ 
#/usr/local/bin/R CMD check fennica_0.0.1.tar.gz
/usr/local/bin/R CMD check --as-cran fennica_0.0.2.tar.gz --no-tests
/usr/local/bin/R CMD INSTALL fennica_0.0.2.tar.gz
#/usr/local/bin/R CMD BATCH document.R

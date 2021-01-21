# For info on Travis R scripts, see
# http://jtleek.com/protocols/travis_bioc_devel/

# Roxygen tips:
# http://r-pkgs.had.co.nz/man.html

#~/bin/R-4.0.3/bin/R CMD BATCH document.R
~/bin/R-4.0.3/bin/R CMD build ../../ --no-build-vignettes #--no-tests
#~/bin/R-4.0.3/bin/R CMD build ../../ 
#~/bin/R-4.0.3/bin/R CMD check fennica_0.2.5.tar.gz
~/bin/R-4.0.3/bin/R CMD check --as-cran fennica_0.2.5.tar.gz --no-tests
~/bin/R-4.0.3/bin/R CMD INSTALL fennica_0.2.5.tar.gz
#~/bin/R-4.0.3/bin/R CMD BATCH document.R

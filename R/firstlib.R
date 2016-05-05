#' @import dplyr

globalVariables(c("published_in","publication_place"))

.onAttach <- function(lib, pkg)
{

  # This may help with encodings in Mac/Linux
  # Sys.setlocale(locale = "UTF-8")
  # Sys.setlocale(locale = "WINDOWS-1252")

  packageStartupMessage("fennica - Algorithms for Finnish Library Data.\nCopyright (C) 2014-2016 Niko Ilomaki, Leo Lahti, and Mikko Tolonen\n\nhttps://github.com/ropengov/fennica \n\n Some scientists will seek and develop new collaborative arrangements; have members from all fields of science; and these new ways of working, effectively instrumented by huge computers, will contribute greatly to the advance in handling the complex, but essentially organic, problems of the biological and social sciences. - Weaver 1948 \n")

}

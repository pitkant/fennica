#' @import dplyr
#' @importFrom bibliographica capitalize
#' @importFrom bibliographica clean_publisher
#' @importFrom bibliographica clean_publisher_destructively
#' @importFrom bibliographica extract_personal_names
#' @importFrom bibliographica map
#' @importFrom bibliographica remove_endings
#' @importFrom graphics plot
#' @importFrom grDevices dev.off
#' @importFrom grDevices png
#' @importFrom stats na.omit
#' @importFrom stringdist amatch
#' @importFrom stringr str_extract
#' @importFrom stringr str_replace
#' @importFrom stringr str_trim
#' @importFrom utils adist
#' @importFrom utils read.csv
#' @importFrom utils tail

globalVariables(c("published_in","publication_place"))

.onAttach <- function(lib, pkg)
{

  # This may help with encodings in Mac/Linux
  # Sys.setlocale(locale = "UTF-8")
  # Sys.setlocale(locale = "WINDOWS-1252")

  packageStartupMessage("fennica - Algorithms for Finnish Library Data.\nCopyright (C) 2014-2017 Leo Lahti, Hege Roivainen, and Mikko Tolonen\n\nhttps://github.com/ropengov/fennica \n\n Some scientists will seek and develop new collaborative arrangements; have members from all fields of science; and these new ways of working, effectively instrumented by huge computers, will contribute greatly to the advance in handling the complex, but essentially organic, problems of the biological and social sciences. - Weaver 1948 \n")

}

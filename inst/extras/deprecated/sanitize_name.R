#' @title Sanitize name
#' @description Remove Nordic characters etc. from strings to use in filenames
#' @param x String or vector of strings
#' @return String or vector of strings
#' @export
#' @importFrom bibliographica harmonize_names
#' @author Niko Ilomaki \email{niko.ilomaki@@helsinki.fi}
#' @references See citation("fennica")
#' @examples name <- sanitize_name("Turku")
#' @keywords utilities
sanitize_name <- function(x) {

  f <- system.file("extdata/specialchars.csv", package = "fennica")
  sn <- read.csv(f, sep = "\t")

  x <- harmonize_names(x, sn, remove.unknown = FALSE)
  x <- gsub(" ","",x)

  x
}


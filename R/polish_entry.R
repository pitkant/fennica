#' @title Polish Entry
#' @description Simple function for minimal field harmonization.
#' @param x Vector of entries 
#' @return Vector of entries polished
#' @export
#' @details Remove ending commas, periods, spaces and parentheses, 
#' 	    starting prepositions etc.
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("fennica")
#' @examples \dontrun{x2 <- polish_title(x)}
#' @keywords utilities
polish_entry <- function (x) {

  x0 <- x
  x <- unique(x)
  xinds <- match(x0, x)
  x <- as.character(x)

  # Remove special characters from the end
  x <- gsub("\\,$", "", x)
  x <- gsub("\\.$", "", x)
  x <- gsub(":$", "", x)
  x <- gsub(";$", "", x)

  # Map back to originals
  x <- x[xinds]

  x
  
}
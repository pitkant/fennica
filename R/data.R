#' @title read_fennica_data
#' @description Read preparsed Fennica data
#'
#' @param file Source Fennica data file
#' @return Dataframe with unpolished fields
#'
#' @export
#' 
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("fennica")
#' 
#' @examples \dontrun{df.raw <- read_fennica_data(file)}
#' @keywords utilities

read_fennica_data <- function (file) {
  
  # Read data
  tab <- read.csv(file, sep = "|", strip.white = TRUE, encoding = "UTF-8")
  
  # Convert empty cells to NAs
  tab <- apply(tab, 2, function (x) {y <- x; y[x %in% c(" ", "")] <- NA; y})
  
  # Pick field clear names
  field.names <- gsub("^X", "", colnames(tab))
  
  # Form data frame
  df <- as.data.frame(tab)
  names(df) <- field.names
  
  df
}

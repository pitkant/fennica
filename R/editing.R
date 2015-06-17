#' @title embellish
#' @description Remove preceding and following characters from strings
#'
#' @param v Vector of strings
#' @return Vector of strings
#'
#' @export
#' 
#' @author Niko Ilomaki \email{niko.ilomaki@@helsinki.fi}
#' @references See citation("fennica")
#' 
#' @examples v <- embellish(c("  Bernard Mandeville         "," John Locke    "))
#' @keywords utilities
embellish <- function(v) {
  for (x in 1:10) {
    v <- gsub("^\\W","",gsub("\\W$","",v)) # fix this?
  }
  v
}

#' @title paste_without_NA
#' @description Variant of two-variable paste for situations where NA is possible
#'
#' @param x1 Vector of strings
#' @param x2 Vector of strings
#' @return Vector of strings
#'
#' @export
#' 
#' @author Niko Ilomaki \email{niko.ilomaki@@helsinki.fi}
#' @references See citation("fennica")
#' 
#' @examples t <- paste_without_NA(x1=NA,x2=NA)
#' @keywords utilities
paste_without_NA <- function(x1=rep(NA,data_size),x2=rep(NA,data_size)) {
  t <- ""
  t <- ifelse(is.na(x1),t,paste0(t,";",as.character(x1)))
  t <- ifelse(is.na(x2),t,paste0(t,";",as.character(x2)))
  t <- ifelse(t=="",NA,t)

  t
}

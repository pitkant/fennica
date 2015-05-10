#' @title fix_pubhouses
#' @description Polish publishing house names
#'
#' @param df.orig Dataframe with original fields
#' @param df Main dataframe
#' @return Main dataframe
#'
#' @export
#' 
#' @author Niko Ilomäki \email{niko.ilomaki@@helsinki.fi}
#' @references See citation("fennica")
#' 
#' @examples \dontrun{df <- fix_pubhouses(df.orig, df)}
#' @keywords utilities
fix_pubhouses <- function(df.orig, df) {
  v <- df.orig$publication_publisher

  v <- gsub("typis ","",v)
  v <- gsub("impressit ","",v)
  v <- gsub("impress. ","",v)
  v <- gsub("viduam ","",v)
  v <- gsub("viduae ","",v)
  v <- gsub("impr.","",v)
  v <- gsub("excud. ","",v)
  v <- gsub("exc.","",v)
  v <- gsub("tryckt af ","",v)
  v <- gsub("tryckt hos ","",v)
  v <- gsub("direct. ","",v)
  v <- gsub("mebat ","",v)
  v <- gsub("prändätty ","",v)
  v <- gsub("tryckt i ","",v)
  v <- gsub("^s.n$",NA,v)
  v <- gsub("^s. n$",NA,v)

  df$publisher <- v

  df
}

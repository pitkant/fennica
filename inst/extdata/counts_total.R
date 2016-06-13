#' @title counts_total
#' @description Plot publication year counts
#' @param df Main dataframe
#' @export
#' @author Niko Ilomaki \email{niko.ilomaki@@helsinki.fi}
#' @references See citation("fennica")
#' @examples \dontrun{counts_total(df)}
#' @keywords utilities
counts_total <- function(df) {
  f <- df %>% group_by(published_in) %>% tally() %>% arrange(published_in)
  f$cumul <- cumsum(f$n)
  
  png("figure/total_noncumul.png")
  plot(f$published_in,f$n)
  dev.off()
  
  png("figure/total_cumul.png")
  plot(f$published_in,f$cumul)
  dev.off()
  
}


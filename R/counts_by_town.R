#' @title counts_by_town
#' @description Plot publication year counts by town
#' @param df Main dataframe
#' @param str Name of town
#' @param file Filename
#' @export
#' @author Niko Ilomaki \email{niko.ilomaki@@helsinki.fi}
#' @references See citation("fennica")
#' @examples \dontrun{counts_by_town(df,"Hämeenlinna","Hameenlinna")}
#' @keywords utilities
counts_by_town <- function(df, str, file) {
  f <- df %>% filter(publication_place == str) %>% group_by(published_in) %>% tally() %>% arrange(published_in)
  f$cumul <- cumsum(f$n)
  
  png(paste0("figure/",file,"_noncumul.png"))
  plot(f$published_in,f$n)
  dev.off()
  
  png(paste0("figure/",file,"_cumul.png"))
  plot(f$published_in,f$cumul)
  dev.off()
}


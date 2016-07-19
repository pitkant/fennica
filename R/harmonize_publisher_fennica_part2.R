#' @title Harmonize Publisher Fennica
#' @description Main handler for publisher fields for Fennica.
#' @param df Data frame with raw data, assuming the place, year fields are already polished.
#' @return A vector with polished entries.
#' @export
#' @author Hege Roivainen \email{hege.roivainen@@gmail.com}
#' @references See citation("bibliographica")
#' @keywords utilities
harmonize_publisher_fennica_part2 <- function (df) {

  # TODO: consider unique entries only  
  languages <- c("finnish", "latin", "swedish")

  # TODO this might be overlapping with polish_publisher
  # the generic function which was called before the present function
  df$publisher <- harmonize_publisher(df, languages = languages)

  # Fennica specific part (compare to harmonize_publisher_generic.R)
  pub <- publisher_fennica_specific(df, languages)

  message("Convert S.N. into NA and Author into <Author>")
  f <- system.file("extdata/NA_publishers.csv", package="bibliographica")
  synonymes <- read.csv(file = f, sep = "\t", fileEncoding = "UTF-8")
  harmonized_pubs <- map(pub, synonymes, mode = "recursive")
  harmonized_pubs[harmonized_pubs == ""] <- NA
  
  # In fact only necessary to return mod
  return(harmonized_pubs)

}



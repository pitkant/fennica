#' @title read_fennica_data
#' @description Read preparsed Fennica data
#'
#' @param file Source Fennica data file
#' @return Dataframe with unpolished fields
#'
#' @importFrom dplyr tbl_df
#' @importFrom dplyr select
#' @export
#' 
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("fennica")
#' 
#' @examples \dontrun{df.raw <- read_fennica_data(file)}
#' @keywords utilities

read_fennica_data <- function (file) {
  
  # Read data
  tab <- read.csv(file, sep = "|", strip.white = TRUE, stringsAsFactors = FALSE, encoding = "UTF-8")

  # Merge language columns
  tab[["X041"]] <- paste0(tab[["X041a"]],";",tab[["X041h"]])
  
  # Convert empty cells to NAs
  tab <- apply(tab, 2, function (x) {y <- x; y[x %in% c(" ", "")] <- NA; y})
  
  # Clean up a bit
  tab <- apply(tab,1:2,function(x){
    x <- gsub("^[[:space:],:;]+","",gsub("[[:space:],:;]+$","",x)) # ok now?
    x
  })

  # Form data frame
  df <- tbl_df(as.data.frame(tab))

  # Pick field clear names
  df <- select(df,
    language = X041;
    author_name = X100a,
    author_date = X100d,
    title_uniform = X240a,
    title_proper = X245a,
    title_remainder = X245b,
    publication_place = X260a,
    publication_publisher = X260b,
    publication_time = X260c,
    publication_frequency = X310a,
    publication_interval = X362a,
    physical_extent = X300a,
    physical_details = X300b,
    physical_dimension = X300c,
    physical_accomppanied = X300e,
    note_general = X500a,
    note_dissertation = X502a,
    note_granter = X502c,
    note_year = X502d,
    note_source = X510a,
    term_topic = X650a,
    term_geography = X651a,
    corporate = X710a,
    uncontrolled = X720a,
    successor = X785t,
    holder = X852a
  )

  df
}

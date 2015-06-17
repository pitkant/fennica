#' @title fix_pubwhen
#' @description Pick and polish year of publication (books)
#'
#' @param df.orig Dataframe with original fields
#' @param df Dataframe with modified fields
#' @return Dataframe with modified fields
#'
#' @importFrom tau fixEncoding
#' @export
#' 
#' @author Niko Ilomaki \email{niko.ilomaki@@helsinki.fi}
#' @references See citation("fennica")
#' 
#' @examples \dontrun{df <- fix_pubwhen(df.orig, df)}
#' @keywords utilities
fix_pubwhen <- function(df.orig, df) {
  v <- fixEncoding(df.orig$publication_time,latin1=TRUE)

  v <- gsub("\\-\\-\\-","\\-",v)
  v <- gsub("\\-\\-","\\-",v)
  v <- gsub("\\- ","\\-",v)
  v <- gsub(" \\-","\\-",v)
  v <- gsub("\\[","",v)
  v <- gsub("\\]","",v)
  v <- gsub("\\?","",v)
  v <- gsub("^([0-9]{4})$","\\1",v)
  v <- gsub("^.* ([0-9]{4})$","\\1",v)
  v <- gsub("^([0-9]{4}) .*$","\\1",v)
  v <- gsub("^[0-9]{4}\\-[0-9]{4}",NA,v)
  v <- gsub("^.* [0-9]{4}\\-[0-9]{4}",NA,v)
  v <- gsub("^[0-9]{1,3}$",NA,v)
  v <- gsub("^[0-9]{2}[0-9]{2}\\-[0-9]{2}",NA,v)
  v <- gsub("^.*\\;([0-9]{4})$","\\1",v)
  v <- gsub("^([0-9]{4})\\;.*$","\\1",v)
  v <- gsub("^([0-9]{4})\\,\\;.*$","\\1",v)
  v <- gsub("^n.([0-9]{4})$","\\1",v)  
  v <- gsub("^s.a$",NA,v)
  v <- gsub("^s. a$",NA,v)
  v <- gsub("^S.a$",NA,v)
  v <- gsub("^S. a$",NA,v)
  v <- gsub("^1892/1893\\-1900$",NA,v)
  v <- gsub("^(?![0-9]{4}$).+$",NA,v,perl=TRUE)
  v <- as.numeric(v)

  df$published_in <- v

  df
}

#' @title fix_pubfrom
#' @description Pick and polish first year of publication (newspapers and magazines)
#'
#' @param df.orig Dataframe with original fields
#' @param df Dataframe with modified fields
#' @return Dataframe with modified fields
#'
#' @importFrom tau fixEncoding
#' @export
#' 
#' @author Niko Ilomaki \email{niko.ilomaki@@helsinki.fi}
#' @references See citation("fennica")
#' 
#' @examples \dontrun{df <- fix_pubfrom(df.orig, df)}
#' @keywords utilities
fix_pubfrom <- function(df.orig, df) {
  v <- fixEncoding(df.orig$publication_time,latin1=TRUE)

  v <- gsub("\\-\\-\\-","\\-",v)
  v <- gsub("\\-\\-","\\-",v)
  v <- gsub("\\- ","\\-",v)
  v <- gsub(" \\-","\\-",v)
  v <- gsub("\\[","",v)
  v <- gsub("\\]","",v)
  v <- gsub("\\?","",v)
  v <- gsub("^[0-9]{4}$",NA,v)
  v <- gsub("^.* [0-9]{4}$",NA,v)
  v <- gsub("^[0-9]{4} .*$",NA,v)
  v <- gsub("^([0-9]{4})\\-[0-9]{4}","\\1",v)
  v <- gsub("^.* ([0-9]{4})\\-[0-9]{4}","\\1",v)
  v <- gsub("^[0-9]{1,3}$",NA,v)
  v <- gsub("^([0-9]{2})([0-9]{2})\\-[0-9]{2}","\\1\\2",v)
  v <- gsub("^.*\\;[0-9]{4}$",NA,v)
  v <- gsub("^[0-9]{4}\\;.*$",NA,v)
  v <- gsub("^[0-9]{4}\\,\\;.*$",NA,v)
  v <- gsub("^n.[0-9]{4}$",NA,v)
  v <- gsub("^s.a$",NA,v)
  v <- gsub("^s. a$",NA,v)
  v <- gsub("^S.a$",NA,v)
  v <- gsub("^S. a$",NA,v)
  v <- gsub("^1892/1893\\-1900$","1893",v)
  v <- as.numeric(v)

  df$published_from <- v

  df
}

#' @title fix_pubtill
#' @description Pick and polish last year of publication (newspapers and magazines)
#'
#' @param df.orig Dataframe with original fields
#' @param df Dataframe with modified fields
#' @return Dataframe with modified fields
#'
#' @importFrom tau fixEncoding
#' @export
#' 
#' @author Niko Ilomaki \email{niko.ilomaki@@helsinki.fi}
#' @references See citation("fennica")
#' 
#' @examples \dontrun{df <- fix_pubtill(df.orig, df)}
#' @keywords utilities
fix_pubtill <- function(df.orig, df) {
  v <- fixEncoding(df.orig$publication_time,latin1=TRUE)

  v <- gsub("\\-\\-\\-","\\-",v)
  v <- gsub("\\-\\-","\\-",v)
  v <- gsub("\\- ","\\-",v)
  v <- gsub(" \\-","\\-",v)
  v <- gsub("\\[","",v)
  v <- gsub("\\]","",v)
  v <- gsub("\\?","",v)
  v <- gsub("^[0-9]{4}$",NA,v)
  v <- gsub("^.* [0-9]{4}$",NA,v)
  v <- gsub("^[0-9]{4} .*$",NA,v)
  v <- gsub("^[0-9]{4}\\-([0-9]{4})","\\1",v)
  v <- gsub("^.* [0-9]{4}\\-([0-9]{4})","\\1",v)
  v <- gsub("^[0-9]{1,3}$",NA,v)
  v <- gsub("^([0-9]{2})[0-9]{2}\\-([0-9]{2})","\\1\\2",v)
  v <- gsub("^.*\\;[0-9]{4}$",NA,v)
  v <- gsub("^[0-9]{4}\\;.*$",NA,v)
  v <- gsub("^[0-9]{4}\\,\\;.*$",NA,v)
  v <- gsub("^n.[0-9]{4}$",NA,v)
  v <- gsub("^s.a$",NA,v)
  v <- gsub("^s. a$",NA,v)
  v <- gsub("^S.a$",NA,v)
  v <- gsub("^S. a$",NA,v)
  v <- gsub("^1892/1893\\-1900$","1893",v)
  v <- as.numeric(v)

  df$published_till <- v

  df
}

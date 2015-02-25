fix_family <- function(v) {
  v <- gsub("^(?!(.*\\, .*$)).+$",NA,v,perl=TRUE)
  v <- gsub("^(.*)\\, .*$","\\1",v)
}

fix_first <- function(v) {
  v <- gsub("^(?!(.*\\, .*$)).+$",NA,v,perl=TRUE)
  v <- gsub("^.*\\, (.*)$","\\1",v)
}

fix_other <- function(v) {
  v <- gsub("^(.*)\\, .*$",NA,v)
}

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

df$author_family <- fix_family(df$author_family)
df$author_first <- fix_first(df$author_first)
df$author_other <- fix_other(df$author_other)

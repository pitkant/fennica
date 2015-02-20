embellish_field_unit <- function(v) {
  v <- gsub("^\\W","",v)
  v <- gsub("\\W$","",v)
}

embellish_field <- function(v) {
  v <- embellish_field_unit(v)
  v <- embellish_field_unit(v)
  v <- embellish_field_unit(v)
  v <- embellish_field_unit(v)
}

embellish_unit <- function(v) {
  v <- gsub("^\\W","",v)
  v <- gsub("\\W$","",v)
}

embellish <- function(v) {
  v <- embellish_unit(v)
  v <- embellish_unit(v)
  v <- embellish_unit(v)
  v <- embellish_unit(v)
}

combine <- function(x1,x2,x3,x4,x5,x6) {
  t <- ""
  t <- ifelse(is.na(x1),t,paste0(t,";",as.character(x1)))
  t <- ifelse(is.na(x2),t,paste0(t,";",as.character(x2)))
  t <- ifelse(is.na(x3),t,paste0(t,";",as.character(x3)))
  t <- ifelse(is.na(x4),t,paste0(t,";",as.character(x4)))
  t <- ifelse(is.na(x5),t,paste0(t,";",as.character(x5)))
  t <- ifelse(is.na(x6),t,paste0(t,";",as.character(x6)))

	t
}

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

all_na <- rep(NA,size_global)

combine <- function(x1=all_na,x2=all_na,x3=all_na,x4=all_na,x5=all_na,x6=all_na) {
  t <- ""
  t <- ifelse(is.na(x1),t,paste0(t,";",as.character(x1)))
  t <- ifelse(is.na(x2),t,paste0(t,";",as.character(x2)))
  t <- ifelse(is.na(x3),t,paste0(t,";",as.character(x3)))
  t <- ifelse(is.na(x4),t,paste0(t,";",as.character(x4)))
  t <- ifelse(is.na(x5),t,paste0(t,";",as.character(x5)))
  t <- ifelse(is.na(x6),t,paste0(t,";",as.character(x6)))
  t <- ifelse(t=="",NA,t)

	t
}

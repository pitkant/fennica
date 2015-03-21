embellish <- function(v) {
  subroutine <- function(w) {gsub("^\\W","",gsub("\\W$","",w))} # fix this
  v <- subroutine(v)
  v <- subroutine(v)
  v <- subroutine(v)
  v <- subroutine(v)
}

paste_without_NA <- function(x1=rep(NA,data_size),x2=rep(NA,data_size)) {
  t <- ""
  t <- ifelse(is.na(x1),t,paste0(t,";",as.character(x1)))
  t <- ifelse(is.na(x2),t,paste0(t,";",as.character(x2)))
  t <- ifelse(t=="",NA,t)

  t
}

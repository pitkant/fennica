polish_years_helper <- function(x){
  b <- grep("[0-9]+ *(-) *[0-9]+ *(e\\. *Kr\\.*)",x)
  x <- gsub("(n\\. *)|( *e\\. *Kr\\.*)","", x)
  for (i in b) {
    spl <- strsplit(x[[i]], "-")[[1]]
    start <- -as.numeric(spl[[1]])
    end <- -as.numeric(spl[[2]])
  }
  return(c(from=start, till=end))
}

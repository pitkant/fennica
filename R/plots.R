counts_total <- function(ldf) {
  f <- ldf %>% group_by(publication_tia) %>% tally() %>% arrange(publication_tia)
  f$cumul <- cumsum(f$n)
  
  png("inst/examples/figure/total_noncumul.png")
  plot(f$publication_tia,f$n)
  dev.off()
  
  png("inst/examples/figure/total_cumul.png")
  plot(f$publication_tia,f$cumul)
  dev.off()
  
}

counts_by_town <- function(ldf, str, file) {
  f <- ldf %>% filter(publication_plc == str) %>% group_by(publication_tia) %>% tally() %>% arrange(publication_tia)
  f$cumul <- cumsum(f$n)
  
  png(paste0("inst/examples/figure/",file,"_noncumul.png"))
  plot(f$publication_tia,f$n)
  dev.off()
  
  png(paste0("inst/examples/figure/",file,"_cumul.png"))
  plot(f$publication_tia,f$cumul)
  dev.off()
}

counts_by_language <- function(ldf, str, file) {
  f <- ldf %>% filter(ldf[,get("str")] == 1) %>% group_by(publication_tia) %>% tally() %>% arrange(publication_tia)
  f$cumul <- cumsum(f$n)
  
  png(paste0("inst/examples/figure/",file,"_noncumul.png"))
  plot(f$publication_tia,f$n)
  dev.off()
  
  png(paste0("inst/examples/figure/",file,"_cumul.png"))
  plot(f$publication_tia,f$cumul)
  dev.off()
}

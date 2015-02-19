fix_pubwhen <- function(v) {
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
  v <- gsub("^(?![0-9]{4}$).+$",NA,v,perl=TRUE)
}

fix_pubfrom <- function(v) {
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
}

fix_pubtill <- function(v) {
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
}

df$pub_when <- fix_pubwhen(df$pub_when)
df$pub_from <- fix_pubfrom(df$pub_from)
df$pub_till <- fix_pubtill(df$pub_till)

counts_total <- function(ldf) {
  f <- ldf %>% group_by(pub_when) %>% tally() %>% arrange(pub_when)
  f$cumul <- cumsum(f$n)
  
  png("inst/examples/figure/total_noncumul.png")
  plot(f$pub_when,f$n)
  dev.off()
  
  png("inst/examples/figure/total_cumul.png")
  plot(f$pub_when,f$cumul)
  dev.off()
  
}

counts_total(df)

counts_by_town <- function(ldf, str, file) {
  f <- ldf %>% filter(pub_where == str) %>% group_by(pub_when) %>% tally() %>% arrange(pub_when)
  f$cumul <- cumsum(f$n)
  
  png(paste0("inst/examples/figure/",file,"_noncumul.png"))
  plot(f$pub_when,f$n)
  dev.off()
  
  png(paste0("inst/examples/figure/",file,"_cumul.png"))
  plot(f$pub_when,f$cumul)
  dev.off()
  
}

counts_by_town(df,"Helsinki", "Helsinki")
counts_by_town(df,"Turku", "Turku")
counts_by_town(df,"Porvoo", "Porvoo")
counts_by_town(df,"Tukholma", "Tukholma")
counts_by_town(df,"Vaasa", "Vaasa")
counts_by_town(df,"Tampere", "Tampere")
counts_by_town(df,"Kuopio","Kuopio")
counts_by_town(df,"Hämeenlinna","Hameenlinna")
counts_by_town(df,"Viipuri","Viipuri")
counts_by_town(df,"Jyväskylä","Jyvaskyla")

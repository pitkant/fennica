# keskeneräisiä

fix_pubwhen <- function(df.orig, df) {
  v <- df.orig$publication_time

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

fix_pubfrom <- function(df.orig, df) {
  v <- df.orig$publication_time

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

fix_pubtill <- function(df.orig, df) {
  v <- df.orig$publication_time

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

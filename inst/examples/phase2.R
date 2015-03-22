source("../../R/editing.R", encoding = "UTF-8")

print("Start collecting variables to a polished data frame")

df.orig <- data.frame(list(row.index = 1:data_size))

df.orig$language <- embellish(paste_without_NA(df.raw[["041a"]],df.raw[["041h"]]))

df.orig$author_name <- embellish(df.raw[["100a"]])
df.orig$author_date <- embellish(df.raw[["100d"]])

df.orig$title_uniform <- embellish(df.raw[["240a"]])
df.orig$title_proper <- embellish(df.raw[["245a"]])
df.orig$title_remainder <- embellish(df.raw[["245b"]])

df.orig$publication_place <- embellish(df.raw[["260a"]])
df.orig$publication_publisher <- embellish(df.raw[["260b"]])
df.orig$publication_time <- embellish(df.raw[["260c"]])
df.orig$publication_frequency <- embellish(df.raw[["310a"]])
df.orig$publication_interval <- embellish(df.raw[["362a"]])

df.orig$physical_extent <- embellish(df.raw[["300a"]])
df.orig$physical_details <- embellish(df.raw[["300b"]])
df.orig$physical_dimension <- embellish(df.raw[["300c"]])
df.orig$physical_accomppanied <- embellish(df.raw[["300e"]])

df.orig$note_general <- embellish(df.raw[["500a"]])
df.orig$note_dissertation <- embellish(df.raw[["502a"]])
df.orig$note_granter <- embellish(df.raw[["502c"]])
df.orig$note_year <- embellish(df.raw[["502d"]])
df.orig$note_source <- embellish(df.raw[["510a"]])
df.orig$note_location <- embellish(df.raw[["510c"]])

df.orig$term_topic <- embellish(df.raw[["650a"]])
df.orig$term_geography <- embellish(df.raw[["651a"]])

df.orig$corporate <- embellish(df.raw[["710a"]])
df.orig$uncontrolled <- embellish(df.raw[["720a"]])
df.orig$successor <- embellish(df.raw[["785t"]])
df.orig$holder <- embellish(df.raw[["852a"]])

print("Start collecting variables to a polished data frame")

df <- tbl_df(data.frame(list(row.index = 1:nrow(df.orig))))
source("inst/examples/embellish.R", encoding = "UTF-8")

df$author_family <- embellish_field(df.orig[["100a"]]) # 12322 unique, 26081 NA
df$author_first <- embellish_field(df.orig[["100a"]]) # - as above
df$author_other <- embellish_field(df.orig[["100a"]]) # - as above
df$author_birth <- embellish_field(df.orig[["100d"]]) # 2187 unique, 53398 NA
df$author_death <- embellish_field(df.orig[["100d"]]) # - as above
df$title_uniform <- embellish_field(df.orig[["240a"]]) # 8885 unique, 59710 NA
df$title_proper <- embellish_field(df.orig[["245a"]]) # 56891 unique, 5 NA
df$title_remainder <- embellish_field(df.orig[["245b"]]) # 24912 unique, 41051 NA
df$pub_where <- embellish_field(df.orig[["260a"]]) # 1351 unique, 577 NA
df$pub_who <- embellish_field(df.orig[["260b"]]) # 12661 unique, 997 NA
df$pub_when <- embellish_field(df.orig[["260c"]]) # 2496 unique, 0 NA
df$pub_from <- embellish_field(df.orig[["260c"]]) # - as above
df$pub_till <- embellish_field(df.orig[["260c"]]) # - as above
df$phys_extent <- embellish_field(df.orig[["300a"]]) # 15074 unique, 4057 NA
df$phys_details <- embellish_field(df.orig[["300b"]]) # 158 unique, 63701 NA
df$phys_dim <- embellish_field(df.orig[["300c"]]) # 1076 unique, 33978 NA
df$phys_accomp <- embellish_field(df.orig[["300e"]]) # 170 unique, 71448 NA
df$pub_frequency <- embellish_field(df.orig[["310a"]]) # 38 unique, 70918 NA
df$pub_interval <- embellish_field(df.orig[["362a"]]) # 2191 unique, 68570 NA
df$note_general <- embellish_field(df.orig[["500a"]]) # 21528 unique, 36382 NA
df$note_dissert <- embellish_field(df.orig[["502a"]]) # 4 unique, 65501 NA
df$note_granter <- embellish_field(df.orig[["502c"]]) # 88 unique, 66074 NA
df$note_year <- embellish_field(df.orig[["502d"]]) # 283 unique, 66258 NA
df$note_source <- embellish_field(df.orig[["510a"]]) # 5000 unique, 60165 NA
df$note_loc <- embellish_field(df.orig[["510c"]]) # 6451 unique, 65267 NA
df$term_topics <- embellish_field(df.orig[["650a"]]) # 3533 unique, 51030 NA
df$term_geo <- embellish_field(df.orig[["651a"]]) # 779 unique, 66081 NA
df$corporate <- embellish_field(df.orig[["710a"]]) # 1415 unique, 50502 NA
df$uncontrolled <- embellish_field(df.orig[["720a"]]) # 99 unique, 71808 NA
df$successor <- embellish_field(df.orig[["785t"]]) # 396 unique, 71515 NA
df$holder <- embellish_field(df.orig[["852a"]]) # 2122 unique, 35624 NA

df <- df[,-1]

# ---------------------------------------------

print("Construct binary matrix of languages")
source("inst/examples/language.R", encoding = "UTF-8")

# ---------------------------------------------

print("Group author names")
source("inst/examples/author_name.R", encoding = "UTF-8") # author_family, author_first, author_other

# ---------------------------------------------

print("Extract author dates")
source("inst/examples/author_lifespan.R", encoding = "UTF-8") # author_birth, author_death

# ---------------------------------------------

print("Clean place names (this may take several minutes)")
source("inst/examples/place.R", encoding = "UTF-8") # pub_where

# ---------------------------------------------

print("Clean publishing house names")
source("inst/examples/house.R", encoding = "UTF-8") # pub_who

# ---------------------------------------------

print("Clean publishing years")
source("inst/examples/time.R", encoding = "UTF-8") # pub_when, pub_from, pub_till

# ---------------------------------------------

print("Clean university names")
source("inst/examples/university.R", encoding = "UTF-8") # note_granter

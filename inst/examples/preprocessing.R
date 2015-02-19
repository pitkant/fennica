print("Start collecting variables to a polished data frame")

df <- tbl_df(data.frame(list(row.index = 1:nrow(df.orig))))

df$author_family <- df.orig[["100a"]]
df$author_first <- df.orig[["100a"]]
df$author_other <- df.orig[["100a"]]
df$author_birth <- df.orig[["100d"]]
df$author_death <- df.orig[["100d"]]
df$title_uniform <- df.orig[["240a"]]
df$title_proper <- df.orig[["245a"]]
df$title_remainder <- df.orig[["245b"]]
df$pub_where <- df.orig[["260a"]]
df$pub_who <- df.orig[["260b"]]
df$pub_when <- df.orig[["260c"]]
df$pub_from <- df.orig[["260c"]]
df$pub_till <- df.orig[["260c"]]
df$phys_extent <- df.orig[["300a"]] # 15074 unique, 4057 NA
df$phys_details <- df.orig[["300b"]] # 158 unique, 63701 NA
df$phys_dim <- df.orig[["300c"]] # 1076 unique, 33978 NA
df$phys_accomp <- df.orig[["300e"]] # 170 unique, 71448 NA
df$pub_frequency <- df.orig[["310a"]] # 38 unique, 70918 NA
df$pub_interval <- df.orig[["362a"]] # 2191 unique, 68570 NA
df$note_general <- df.orig[["500a"]] # 21528 unique, 36382 NA
df$note_dissert <- df.orig[["502a"]] # 4 unique, 65501 NA
df$note_granter <- df.orig[["502c"]] # 88 unique, 66074 NA
df$note_year <- df.orig[["502d"]]
df$note_source <- df.orig[["510a"]]
df$note_loc <- df.orig[["510c"]]
df$term_topics <- df.orig[["650a"]]
df$term_geo <- df.orig[["651a"]]
df$corporate <- df.orig[["710a"]]
df$uncontrolled <- df.orig[["720a"]]
df$successor <- df.orig[["785t"]]
df$holder <- df.orig[["852a"]]

df <- df[,-1]

# ---------------------------------------------

print("Construct binary matrix of languages")
source("inst/examples/language.R")

# ---------------------------------------------

print("Group author names")
source("inst/examples/author_name.R") # author_family, author_first, author_other

# ---------------------------------------------

print("Extract author dates")
source("inst/examples/author_lifespan.R") # author_birth, author_death

# ---------------------------------------------

print("Clean place names")
source("inst/examples/place.R") # pub_where

# ---------------------------------------------

print("Clean publishing house names")
source("inst/examples/house.R") # pub_who

# ---------------------------------------------

print("Clean publishing years")
source("inst/examples/time.R") # pub_when, pub_from, pub_till

# ---------------------------------------------

print("Clean university names")
source("inst/examples/university.R") # note_granter

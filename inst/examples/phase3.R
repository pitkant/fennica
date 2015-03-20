library(dplyr)

#source("R/AllClasses.R", encoding="UTF-8")
source("R/author.R", encoding="UTF-8")
source("R/editing.R", encoding = "UTF-8")
source("R/house.R", encoding = "UTF-8")
source("R/languages.R", encoding = "UTF-8")
source("R/notes.R", encoding = "UTF-8")
source("R/placenames.R", encoding = "UTF-8")
source("R/plots.R", encoding = "UTF-8")
source("R/time.R", encoding = "UTF-8")
source("R/university.R", encoding = "UTF-8")

# ---------------------------------------------

df <- tbl_df(data.frame(list(row.index = 1:size_global)))

# ---------------------------------------------

print("Mark languages")
df <- mark_languages(df.orig, df)

# ---------------------------------------------

print("Group author names")
df <- fix_family(df.orig, df)
df <- fix_first(df.orig, df)
df <- fix_other(df.orig, df)

# ---------------------------------------------

print("Extract author dates")
df <- fix_birth(df.orig, df)
df <- fix_death(df.orig, df)

# ---------------------------------------------

print("Copy titles")
df$title_uniform <- df.orig$title_uniform
df$title_proper <- df.orig$title_proper
df$title_remainder <- df.orig$title_remainder

# ---------------------------------------------

print("Clean place names")
df$publication_place <- preprocess_placenames(df.orig$publication_place)
source("inst/examples/city.R", encoding = "UTF-8")
df$publication_country <- deduce_country(df$publication_place)

# ---------------------------------------------

print("Clean publishing house names")
df$publication_publisher <- fix_pubhouses(df.orig$publication_publisher)

# ---------------------------------------------

print("Clean publishing years")
df$publication_time_at <- fix_pubwhen(df.orig$publication_time)
df$publication_time_from <- fix_pubfrom(df.orig$publication_time)
df$publication_time_until <- fix_pubtill(df.orig$publication_time)

# ---------------------------------------------

print("Copy frequencies and intervals")
df$publication_frequency <- df.orig$publication_frequency
df$publication_interval <- df.orig$publication_interval

# ---------------------------------------------

print("Copy physical details")
df$physical_extent <- df.orig$physical_extent
df$physical_details <- df.orig$physical_details
df$physical_dimension <- df.orig$physical_dimension
df$physical_accomppanied <- df.orig$physical_accomppanied

# ---------------------------------------------

print("Clean notes")
df$note_general <- df.orig$note_general
df <- fix_note_diss(df.orig, df)
df$note_granter <- fix_university(df.orig$note_granter)
df$note_year <- df.orig$note_year
df$note_source <- df.orig$note_source
df$note_location <- df.orig$note_location

# ---------------------------------------------

df$term_topic <- df.orig$term_topic
df$term_geography <- df.orig$term_geography

# ---------------------------------------------

df$corporate <- df.orig$corporate
df$uncontrolled <- df.orig$uncontrolled
df$successor <- df.orig$successor
df$holder <- df.orig$holder

# ---------------------------------------------

df <- df[,-1]

# source("inst/examples/visualization.R", encoding = "UTF-8")

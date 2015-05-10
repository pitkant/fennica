library(dplyr)
df <- tbl_df(data.frame(list(row.index = 1:data_size)))

# ---------------------------------------------

print("Languages")
source("../../R/languages.R", encoding = "UTF-8")
df <- mark_languages(df.orig, df)

# ---------------------------------------------

print("Author data")
source("../../R/author.R", encoding="UTF-8")
df <- fix_family(df.orig, df)
df <- fix_first(df.orig, df)
df <- fix_other(df.orig, df)
df <- fix_birth(df.orig, df)
df <- fix_death(df.orig, df)

# ---------------------------------------------

print("Titles")
df$title_uniform <- df.orig$title_uniform
df$title_proper <- df.orig$title_proper
df$title_remainder <- df.orig$title_remainder

# ---------------------------------------------

print("Publication data")
source("../../R/city.R", encoding = "UTF-8")
df <- preprocess_placenames(df.orig, df)
source("city_examples.R", encoding = "UTF-8") # later account for multiple places
source("../../R/country.R", encoding = "UTF-8")
df <- deduce_country(df)
source("../../R/house.R", encoding = "UTF-8")
df <- fix_pubhouses(df.orig, df)
source("../../R/time.R", encoding = "UTF-8")
df <- fix_pubwhen(df.orig, df)
df <- fix_pubfrom(df.orig, df)
df <- fix_pubtill(df.orig, df)
df$publication_frequency <- df.orig$publication_frequency
df$publication_interval <- df.orig$publication_interval

# ---------------------------------------------

print("Physical details")
df$physical_extent <- df.orig$physical_extent
df$physical_details <- df.orig$physical_details
df$physical_dimension <- df.orig$physical_dimension
df$physical_accomppanied <- df.orig$physical_accomppanied

# ---------------------------------------------

print("Notes")
source("../../R/notes.R", encoding = "UTF-8")
df$note_general <- df.orig$note_general
df <- fix_note_diss(df.orig, df)
df <- fix_university(df.orig, df)
df$note_year <- df.orig$note_year
df$note_source <- df.orig$note_source

# ---------------------------------------------

print("Terms")
df$term_topic <- df.orig$term_topic
df$term_geography <- df.orig$term_geography

# ---------------------------------------------

print("Other information")
df$corporate <- df.orig$corporate
df$uncontrolled <- df.orig$uncontrolled
df$successor <- df.orig$successor
df$holder <- df.orig$holder

# ---------------------------------------------

df <- df[,-1]

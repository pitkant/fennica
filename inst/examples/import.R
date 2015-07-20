# Update the pkg
library(devtools)
install_github("ropengov/fennica")

# Load R package
library(dplyr)
library(tau)
library(fennica)
library(bibliographica)

fennica.data.file <- "data/fennica.csv.gz"
output.folder <- "output.tables/"

# Create the output directory if not yet exists
dir.create(output.folder)

print("Read raw data")
df.orig <- read_fennica_data(fennica.data.file)

# ---------------------------------------------

df <- tbl_df(data.frame(list(row.index = 1:nrow(df.orig))))

# ---------------------------------------------

print("Languages")
df <- mark_languages(df.orig, df)

# ---------------------------------------------

print("Author data")
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

# Korvasin preprocess_placenames-funktion talla. Tarkista etta
# paikannimet konvertoituu oikein ja tarvittaessa voit taydentaa
# funktiota suoraan bibliographicaan.  Huom:
# bibliographica::polish_place hyödyntää paikannimien synonyymilistaa
# johon voisi lisätä mukaan nuo automaattisesti
# generoimasi. Synonyymilistojen generointiin tekemäsi
# string-mätchäysfunktion voisit lisätä bibliographica-pakettiin
# esimerkin kera myöhempää hyödyntämistä varten.

df$publication_place <- polish_place(df.orig$publication_place, remove.unknown = FALSE)

source("city_examples.R", encoding = "UTF-8") # later account for multiple places
df <- deduce_country(df)
df <- fix_pubhouses(df.orig, df)
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

saveRDS(df, "df.Rds")

# source("inst/examples/visualization.R", encoding = "UTF-8")

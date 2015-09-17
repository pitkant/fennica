# Update the pkg
library(devtools)
devtools::install_github("ropengov/bibliographica")
devtools::install_github("ropengov/fennica")

# Load R packages
library(dplyr)
library(tau)
library(fennica)
library(bibliographica)

output.folder <- "output.tables/"

# Create the output directory if not yet exists
dir.create(output.folder)

print("Read raw data")
df <- bibliographica::read_bibliographic_metadata("data/fennica.csv.gz")

print("Languages")
df$language <- paste0(df$language,";",df$language2)
df$language <- gsub("NA","",df$language)
df$language <- gsub("^;","",df$language)
df$language <- gsub(";$","",df$language)
df <- bibliographica::mark_languages(df)

print("Names of authors")
df <- bibliographica::polish_name_of_author(df)

print("Lifespans of authors")
tmp <- bibliographica::polish_years(df$author_date)
df$author_birth <- tmp$start
df$author_death <- tmp$end
remove(tmp)

print("Publishers")
df <- bibliographica::polish_publisher(df)

print("Years of publication")
df <- bibliographica::polish_year_of_publication(df)

print("Dissertations")
df <- bibliographica::mark_dissertations(df)

print("Universities")
df <- bibliographica::polish_university(df)

print("Place names")

# Korvasin preprocess_placenames-funktion talla. Tarkista etta
# paikannimet konvertoituu oikein ja tarvittaessa voit taydentaa
# funktiota suoraan bibliographicaan.  Huom:
# bibliographica::polish_place hyödyntää paikannimien synonyymilistaa
# johon voisi lisätä mukaan nuo automaattisesti
# generoimasi. Synonyymilistojen generointiin tekemäsi
# string-mätchäysfunktion voisit lisätä bibliographica-pakettiin
# esimerkin kera myöhempää hyödyntämistä varten.

df$publication_place <- bibliographica::polish_place(df$publication_place, remove.unknown = FALSE)

source("city_examples.R", encoding = "UTF-8") # later account for multiple places
df <- deduce_country(df)

saveRDS(df, "df.Rds")

# Update the pkg
library(devtools)
#devtools::install_github("ropengov/bibliographica")
#devtools::install_github("ropengov/fennica")

# Load dplyr
library(dplyr)
library(bibliographica)
library(sorvi)

# Create the output directory if not yet exists
output.folder <- "output.tables/"
dir.create(output.folder)

print("Read raw data")
df <- bibliographica::read_bibliographic_metadata("data/fennica.csv.gz")
df.orig <- df

print("Languages")
df$language <- paste0(df$language,";",df$language2)
df$language <- gsub("NA","",df$language)
df$language <- gsub("^;","",df$language)
df$language <- gsub(";$","",df$language)
df <- cbind(
	df,
	bibliographica::mark_languages(df$language)
)

print("Names of authors")
df <- cbind(
	df,
	bibliographica::polish_name_of_author(df$author_name)
)

print("Lifespans of authors")
df <- cbind(
	df,
	bibliographica::polish_years(df$author_date)
)
df <- dplyr::rename(df, author_birth = from)
df <- dplyr::rename(df, author_death = till)

print("Publishers")
df$publisher_simplified <- bibliographica::polish_publisher(df$publisher)$name

print("Years of publication")
tmp <- bibliographica::polish_years(df$publication_time)
df$published_from <- tmp$from
df$published_till <- tmp$till
# Now published from == published in for simplicity; perhaps separated later
df$published_in <- tmp$from 

print("Dissertations")
df <- cbind(
	df,
	bibliographica::mark_dissertations(df$note_dissertation)
)

print("Universities")
df$note_granter <- bibliographica::polish_university(df$note_granter)$name

print("Place names")

# Korvasin preprocess_placenames-funktion talla. Tarkista etta
# paikannimet konvertoituu oikein ja tarvittaessa voit taydentaa
# funktiota suoraan bibliographicaan.  Huom:
# bibliographica::polish_place hyödyntää paikannimien synonyymilistaa
# johon voisi lisätä mukaan nuo automaattisesti
# generoimasi. Synonyymilistojen generointiin tekemäsi
# string-mätchäysfunktion voisit lisätä bibliographica-pakettiin
# esimerkin kera myöhempää hyödyntämistä varten.

# Polish publication places
df$publication_place <- bibliographica::polish_place(df$publication_place, remove.unknown = FALSE)

# Recognize synonymes with string matching
source("city_examples.R", encoding = "UTF-8") # later account for multiple places

# Finally manual harmonization for the remaining place names
f <- system.file("extdata/publication_place_synonymes_fennica.csv", package = "fennica")
sn <- read.csv(f, sep = ";")
pl <- sorvi::harmonize_names(df$publication_place, synonymes = sn, check.synonymes = FALSE)
df$publication_place <- pl$name

print("Write unrecognized place names to file")
tmp <- write_xtable(as.character(df.orig[which(is.na(df$publication_place)), ]$publication_place), paste(output.folder, "publication_place_discarded.csv", sep = ""))


df$country <- get_country(df$publication_place)$country
#df <- dplyr::tbl_df(df) # cbind overrides locality above


print("Number of pages")
# ESTC-specific handling -> Fennica-specific?
x <- df.orig$physical_extent
# x <- estc::harmonize_pages_specialcases(x)
# Generic handling
tmp <- polish_pages(x, verbose = TRUE)
df$pagecount <- tmp$total.page
print("Summarize page conversions")
tab <- cbind(
	     pagecount = df$pagecount, 
	     original = as.character(df.orig$physical_extent)
	     )
tmp2 <- write_xtable(tab, paste(output.folder, "documentpages-estimated.csv", sep = ""))
tmp3 <- write_xtable(df.orig[which(is.na(df$pagecount)), ]$physical_extent, paste(output.folder, "documentpages-estimated-discarded.csv", sep = ""))
#source("summarize.page.conversions.R")

print("Document dimensions") 
d <- df.orig$physical_dimension
d <- gsub(",", ".", d) # 75,9 -> 75.9
d <- gsub(":o.", "to", d) # 8:o. -> 8to
d <- gsub(".o$", "to", d) # 8:o. -> 8to
# In Finnish texts s. is used instead of p.		
f <- system.file("extdata/translation_fi_en_pages.csv", package = "bibliographica")
synonyms <- read.csv(f, sep = "\t")
d <- harmonize_names(d, synonyms, mode = "recursive")$name
print("Polish dimensions")
tmp <- polish_dimensions(d, fill = TRUE)
for (field in c("gatherings", "width", "height", "area", "obl")) {
  df[[field]] <- tmp[[field]]
}

tmp3 <- write_xtable(df.orig$physical_dimension[which(tmp$gatherings == "NA")], paste(output.folder, "missing_gatherings.csv", sep = ""))

tmp4 <- write_xtable(df.orig$physical_dimension[which(tmp$gatherings == "NA" & is.na(tmp$width) & is.na(tmp$height))], paste(output.folder, "missing_dimensions.csv", sep = ""))

print("Add estimated paper consumption")
# One m2 is 100 * 100 cm2 = 1e4 cm2
# One km2 is 1000 * 1000 m2 = 1e6 m2 = 1e10 cm2
# Estimated average print run per document: 1000
printrun <- 1000
df <- mutate(df, paper.consumption.km2 = width * height * pagecount/2 * (1/1e10) * printrun)


saveRDS(df, "df.Rds")


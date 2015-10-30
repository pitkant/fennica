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
df <- cbind(
	df,
	bibliographica::mark_languages(df$language2)
)
	

print("Author lifespans")
df <- cbind(
	df,
	bibliographica::polish_years(df$author_date)
)
df <- dplyr::rename(df, author_birth = from)
df <- dplyr::rename(df, author_death = till)

print("Author names")
df <- cbind(
	df,
	bibliographica::polish_name_of_author(df$author_name)
)

print("Unique author IDs")
# Unique author identifier by combining name, birth and death years
df$author <- apply(df[, c("author_name", "author_birth", "author_death")], 1, function (x) {paste(x[[1]], " (", x[[2]], "-", x[[3]], ")", sep = "")})
df$author <- gsub("NA \\(NA-NA\\)", NA, df$author)
df$author <- gsub(" \\(NA-NA\\)", "", df$author)


print("Publishers")
df$publisher <- bibliographica::polish_publisher(df.orig$publisher)$name

print("Take corporate field as such for now")
df$corporate <- df.orig$corporate
df$corporate <- gsub("S\\.n\\. \\(tuntematon kirjapaino\\)", NA, df$corporate)

print("Years of publication")
tmp <- bibliographica::polish_years(df$publication_time)
df$published_from <- tmp$from
df$published_till <- tmp$till
# Now published from == published in for simplicity; perhaps separated later
df$publication_year <- tmp$from
# Accepted and Discarded time entries
tmp2 <- write_xtable(tmp, paste(output.folder, "publication-time-accepted.csv", sep = ""))
tmp3 <- write_xtable(df.orig$publication_time[rowMeans(is.na(df[, c("publication_year", "published_from", "published_till")]))==1], paste(output.folder, "publication-time-discarded.csv", sep = ""))

print("Dissertations")
df <- cbind(
	df,
	bibliographica::mark_dissertations(df$note_dissertation)
)

print("Universities")
df$note_granter <- bibliographica::polish_university(df$note_granter)$name

print("Place names")
# bibliographica::polish_place hyödyntää paikannimien synonyymilistaa
# johon voisi lisätä mukaan nuo automaattisesti
# generoimasi. Synonyymilistojen generointiin tekemäsi
# string-mätchäysfunktion voisit lisätä bibliographica-pakettiin
# esimerkin kera myöhempää hyödyntämistä varten.
# Polish publication places
df$publication_place <- bibliographica::polish_place(df.orig$publication_place, remove.unknown = FALSE)
# Recognize synonymes with string matching
source("city_examples.R", encoding = "UTF-8") # later account for multiple places
# Finally manual harmonization for the remaining place names
f <- system.file("extdata/publication_place_synonymes_fennica.csv", package = "fennica")
sn <- read.csv(f, sep = ";")
pl <- sorvi::harmonize_names(df$publication_place, synonymes = sn, check.synonymes = FALSE)
df$publication_place <- pl$name
# setdiff(names(sort(table(df$publication_place))), c(as.character(sn$synonyme), as.character(sn$name)))[1:20]

# Add publication country
df$country <- get_country(df$publication_place)$country
# No country mapping
tmp <- write_xtable(as.character(df$publication_place[is.na(df$country)]), filename = "output.tables/publication_place_missingcountry.csv")

print("Number of pages")
# ESTC-specific handling -> Fennica-specific?
x <- df.orig$physical_extent
# x <- estc::harmonize_pages_specialcases(x)
# Generic handling
tmp <- polish_pages(x, verbose = TRUE)
df$pagecount <- tmp$total.page

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

tmp2 <- write_xtable(tmp[, c("original", "gatherings", "width", "height", "obl")], paste(output.folder, "accepted_dimensions.csv", sep = ""))

tmp3 <- write_xtable(df.orig$physical_dimension[which(tmp$gatherings == "NA")], paste(output.folder, "missing_gatherings.csv", sep = ""))

tmp4 <- write_xtable(df.orig$physical_dimension[which(tmp$gatherings == "NA" & is.na(tmp$width) & is.na(tmp$height))], paste(output.folder, "missing_dimensions.csv", sep = ""))

print("Add estimated paper consumption")
# One m2 is 100 * 100 cm2 = 1e4 cm2
# One km2 is 1000 * 1000 m2 = 1e6 m2 = 1e10 cm2
# Estimated average print run per document: 1000
printrun <- 1000
df <- mutate(df, paper.consumption.km2 = width * height * pagecount/2 * (1/1e10) * printrun)

saveRDS(df, "df.Rds")
saveRDS(df.orig, "df.orig.Rds")

# ---------------------------------------------------------------

print("Summarize accepted and discarded entries")
for (varname in c("author", "corporate", "language", "publication_place")) {

  # Accepted fields
  x <- as.character(df[[varname]])
  tmp1 <- write_xtable(x, paste(output.folder, paste(varname, "accepted.csv", sep = "_"), sep = ""))  

  # Discarded fields
  o <- as.character(df.orig[[varname]])
  disc <- as.vector(na.omit(o[which(is.na(x))]))
  if (is.null(disc)) {disc <- NA}
  tmp2 <- write_xtable(disc, paste(output.folder, paste(varname, "discarded.csv", sep = "_"), sep = ""))

}


# Conversion summaries
originals <- c(publisher = "publisher",
	       pagecount = "physical_extent"
	       )
for (nam in names(originals)) {
  o <- as.character(df.orig[[originals[[nam]]]])
  x <- as.character(df[[nam]])
  inds <- which(!is.na(x))
  tmp <- write_xtable(cbind(original = o[inds],
      	 		    polished = x[inds]),
    paste(output.folder, paste(nam, "conversion.csv", sep = "_"), sep = ""))

}
# Accept summaries
for (nam in names(originals)) {
  x <- as.character(df[[nam]])
  tmp <- write_xtable(x,
    paste(output.folder, paste(nam, "accepted.csv", sep = "_"), sep = ""))

}
# Discard summaries
for (nam in names(originals)) {
  o <- as.character(df.orig[[originals[[nam]]]])
  x <- as.character(df[[nam]])
  inds <- which(is.na(x))
  tmp <- write_xtable(o[inds],
    paste(output.folder, paste(nam, "discarded.csv", sep = "_"), sep = ""))

}






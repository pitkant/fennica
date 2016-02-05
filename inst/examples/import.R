print("Read raw data")
df.orig <- bibliographica::read_bibliographic_metadata("data/fennica.csv.gz")
df <- df.orig

print("Languages")
df <- cbind(
	df,
	bibliographica::mark_languages(df$language)
)
	
print("Author lifespans")
df <- cbind(
	df,
	bibliographica::polish_years(df$author_date)
)
df <- dplyr::rename(df, author_birth = from)
df <- dplyr::rename(df, author_death = till)

print("Number of pages")
# ESTC-specific handling -> Fennica-specific?
x <- df.orig$physical_extent
df$pagecount <- polish_physical_extent(x, verbose = TRUE)$pagecount


print("Author names")
tmp <- polish_author(df.orig$author_name, validate = FALSE)
df$author_name <- tmp$names$full
# Write invalid author names to file for a later check
for (db in c("first", "last")) {
  fnam <- paste(output.folder, "author_name_discarded_", db, ".csv", sep = "")
  tmp2 <- write_xtable(tmp$invalid[[db]], file = fnam, count = TRUE)
}
#head(rev(sort(table(df.orig$author_name[is.na(df$author_name)]))))

print("Publishers")
df$publisher <- bibliographica::polish_publisher(df.orig$publisher)

print("Take corporate field as such for now")
df$corporate <- df.orig$corporate
df$corporate <- gsub("S\\.n\\. \\(tuntematon kirjapaino\\)", NA, df$corporate)

print("Years of publication")
tmp <- bibliographica::polish_years(df$publication_time)
df$published_from <- tmp$from
df$published_till <- tmp$till

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
df$publication_place <- polish_place(df.orig$publication_place, remove.unknown = TRUE)

print("Document dimensions")
# TODO could this be harmonized with bibliographica polish_dimensions ?
d <- df$physical_dimension
d <- gsub(",", ".", d) # 75,9 -> 75.9
d <- gsub(":o.", "to", d) # 8:o. -> 8to
d <- gsub(".o$", "to", d) # 8:o. -> 8to
# In Finnish texts s. is used instead of p.		
f <- system.file("extdata/translation_fi_en_pages.csv", package = "bibliographica")
synonyms <- read.csv(f, sep = ";")
d <- harmonize_names(d, synonyms, mode = "recursive")$name
print("Polish dimensions")
tmp <- polish_dimensions(d, fill = TRUE, verbose = TRUE)
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


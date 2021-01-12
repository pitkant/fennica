synonyms <- read.csv("../extdata/translation_fi_en_pages.csv", sep = ";") 
df.orig$physical_dimension <- comhis::map(df.orig$physical_dimension,
          synonyms, mode = "recursive")

# Fill in missing entries where estimates can be obtained:
# area, width, height, gatherings
# (also keep pure originals before fill in)
# devtools::load_all("~/comhis/rpkg/bibliographica")
df.tmp <- polish_dimensions(df.orig[[field]],
		fill = TRUE, verbose = TRUE)


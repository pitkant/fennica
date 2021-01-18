print("Prepare the final data set")

# Read the preprocessed data
df.orig <- readRDS(datafile.orig)
df0 <- readRDS(datafile)
conversions <- readRDS("conversions.Rds")

df <- df.preprocessed <- df.preprocessed.orig <- filter(df0,
        publication_year >=  min(timespan) & publication_year <= max(timespan))

# Summarize the data and discarded entries
tmp <- generate_summary_tables(df.preprocessed, df.orig, output.folder)

# Clean up - remove overlaps - is all of this needed
summaries <- c("overview",
	       "author",
	       "publicationplace",
	       "publisher",
	       "gender",
	       "topic",
	       "language",
	       "publicationyear",
	       "size",	       
	       "pagecount",
	       "dimension",
	       "physical_dimension",
	       "Paper")

# Generate the markdown summaries
outputs <- c()
for (id in summaries) {
  this.folder <- getwd()
  outputs[[id]] <- knit(input = paste(id, ".Rmd", sep = ""), 
                        output = paste(id, ".md", sep = ""))
}




# Some specific analyses listed
# generic.Rmd
# swedish_gap.Rmd
# details.Rmd
# notebook.Rmd
# suvut.Rmd
# slides.Rmd
# slidetemplates.Rmd
# Helsinki.Rmd
# Suomi.Rmd
# Turku.Rmd
# fennica_drop.Rmd
# Vaasa.Rmd
# flexdashboard.Rmd
# selected_author.Rmd


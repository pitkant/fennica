# Summarize the data and discarded entries
tmp <- generate_summary_tables(df.preprocessed, df.orig, output.folder)

# Clean up - remove overlaps - is all needed
summaries <- c("summary",
               "overview",
	       "author",
	       "publicationplace",
	       # "publisher",
	       "documents",
	       "size",
	       "gender",
	       "topic",
	       "language",
	       "title",
	       "publicationyear",
	       "pagecount",
	       "dimension",
	       "physical_dimension",
	       "Paper")

df <- df.preprocessed

# Output file paths		      
outputs <- c()

# Generate the markdown summaries
for (id in summaries) {
  this.folder <- getwd()
  outputs[[id]] <- knit(input = paste(id, ".Rmd", sep = ""), 
                        output = paste(id, ".md", sep = ""))
}




# Specific analyses
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


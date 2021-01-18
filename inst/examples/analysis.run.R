library(stringr)
library(dplyr)
library(reshape2)
library(ggplot2)
library(comhis)
library(fennica)

ntop <- 20

# Read the preprocessed data
df <- readRDS("df.Rds")
df.orig <- readRDS("df.raw.Rds")
conversions <- readRDS("conversions.Rds")

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
	       "title",
	       "publicationyear",
	       "size",	       
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


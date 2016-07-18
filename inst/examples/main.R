library(bibliographica)
library(fennica)

#library(devtools)
#load_all("~/proj/2014-Aatelouhinta/bibliographica")
#load_all("~/proj/2014-Aatelouhinta/fennica")

# I/O definitions
output.folder <- "output.tables/"

# List preprocessed data files
fs <- "data/fennica.csv.gz"
catalog <- "fennica" 

# Cores for parallelization
mc.cores <- 4

# Limit to Finnish/Swedish name-gender mappings for Fennica
gendermap.file <- system.file("extdata/gendermap_finnish_swedish.csv", package = "bibliographica")

# Remove selected fields
ignore.fields <- c("language2", "title_remainder",
	            "physical_details", "physical_accomppanied",
		    "note_general", "note_year") # Fennica

# update.fields <- setdiff(names(df.preprocessed), "publisher")
# update.fields <- c("language")

# -------------------------------

reload.data <- FALSE
source(system.file("extdata/init.R", package = "bibliographica"))

# -------------------------------

# Modify the original data if needed 
# Finnish/Swedish specific fixes 
# In Finnish texts s. is used instead of p.		
f <- system.file("extdata/translation_fi_en_pages.csv", package = "bibliographica")
synonyms <- read.csv(f, sep = ";") 
df.orig$physical_dimension <- map(df.orig$physical_dimension,
					synonyms, mode = "recursive")


# Test with small data test set
df.orig <- df.orig[sample(1:nrow(df.orig), 1e4),]

# -------------------------------

source(system.file("extdata/preprocessing.R", package = "bibliographica"))
source("preprocessing.fennica.R") # Fennica-specific

# -------------------------------

source(system.file("extdata/validation.R", package = "bibliographica"))

# -------------------------------

source(system.file("extdata/enrich.R", package = "bibliographica"))
source("enrich.fennica.R")     # Fennica-specific
source("validation.fennica.R") # Year checks: must come after enrich

print("Saving updates on preprocessed data")
saveRDS(df.preprocessed, "df.Rds")

# ---------------------------------

source("analysis.R")  # Summary md docs



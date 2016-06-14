library(bibliographica)
library(devtools)
load_all("~/proj/2014-Aatelouhinta/bibliographica")

# I/O definitions
output.folder <- "output.tables/"

# List preprocessed data files
fs <- "data/fennica.csv.gz"

# Cores for parallelization
mc.cores <- 4

# Remove selected fields
ignore.fields <- c("language2", "title_remainder", "physical_details", "physical_accomppanied", "note_general", "note_year") # Fennica

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

# -------------------------------

source(system.file("extdata/preprocessing.R", package = "bibliographica"))

source("preprocessing.fennica.R") # Fennica-specific

# -------------------------------

source(system.file("extdata/validation.R", package = "bibliographica"))

# -------------------------------

source(system.file("extdata/enrich.R", package = "bibliographica"))
source("enrich.fennica.R") # Fennica-specific
source("validation.fennica.R") # Year checks: must come after enrich

print("Saving updates on preprocessed data")
saveRDS(df.preprocessed, "df.Rds")

# ---------------------------------

source("analysis.R")  # Summary md docs



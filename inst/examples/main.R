library(bibliographica)

# I/O definitions
output.folder <- "output.tables/"

# List preprocessed data files
fs <- "data/fennica.csv.gz"

# Remove selected fields
ignore.fields <- c("language2", "title_remainder", "physical_details", "physical_accomppanied", "note_general", "note_year") # Fennica

# -------------------------------

reload.data <- TRUE
source(system.file("extdata/init.R", package = "bibliographica"))

# -------------------------------

# Modify the original data if needed 
# Finnish/Swedish specific fixes 
# In Finnish texts s. is used instead of p.		
f <- system.file("extdata/translation_fi_en_pages.csv", package = "bibliographica")
synonyms <- read.csv(f, sep = ";") 
df.orig$physical_dimension <- harmonize_names(df.orig$physical_dimension,
					synonyms, mode = "recursive")

# -------------------------------

source(system.file("extdata/preprocessing.R", package = "bibliographica"))
source("preprocessing.fennica.R") # Fennica-specific

# -------------------------------

source(system.file("extdata/validation.R", package = "bibliographica"))

# -------------------------------

source(system.file("extdata/enrich.R", package = "bibliographica"))

source("enrich.fennica.R") # Fennica-specific

print("Saving updates on preprocessed data")
saveRDS(df.preprocessed, "df.Rds")

# ---------------------------------

# Summarize the data and discarded entries
tmp <- generate_summary_tables(df.preprocessed, df.orig, output.folder)

# ---------------------------------

source("knit_all.R")  # Summary md docs



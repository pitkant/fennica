library(devtools)
library(dplyr)
library(tm)

# Install latest version from Github
install_github("comhis/fennica") # or devtools::load_all() if you are working from the clone and modifying it
library(fennica) 

# Install latest version from Github
install_github("comhis/comhis")        
library(comhis)  



# Load misc functions needed for harmonization
source("funcs.R")

# Define create the output folder
output.folder <- "output.tables/"
dir.create(output.folder)

# Languages to consider in cleanup.
# TODO: recognize the necessary languages automatically ?
catalog <- "fennica" 
languages <- c("finnish", "latin", "swedish")

# List the preprocessed data file and read the data
df.orig <- read_bibliographic_metadata("fennica_parsed.csv.gz", verbose = TRUE, sep = "|")
df.orig <- sample_n(df.orig, 1000) # Try with a smaller subset first!

update.fields <- c(
      "original_row",
      "publication_place",     
      "language",              
      "author_name",          
      "author_date",           
      "title_uniform",         
      "title",                
      "publication_time",      
      "physical_extent",       
      "physical_dimension",
      "publication_frequency", 
      "publication_interval",  
      "note_dissertation",    
      "note_granter",          
      "note_source",           
      "note_510c",            
      "subject_topic",         
      "subject_geography",     
      "corporate",            
      "uncontrolled",          
      "successor",             
      "holder",              
      "publisher"
      )

df.orig <- df.orig[, update.fields]



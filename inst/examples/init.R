library(devtools)
load_all()
library(fennica)
library(comhis) # install_github("comhis/comhis")        
library(dplyr)
library(tm)

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



# CERL ?
# All ESTC fiels 100a|100d|240n|245a|260a|260b|260c|300a|300c|310a|362a|650a|650y,651y|650z,651a,651z
# All Fennica fields 041a|041h|100a|100d|240a|245a|245b|260a|260b|260c|300a|300b|300c|300e|310a|362a|500a|502a|502c|502d|510a|510c|650a|651a|710a|720a|785t|852a  
# All Kungliga fields 008lang|100a|100d|110a|240a|245a|245b|245c|260a|260b|260c|260e|260f|300a|300b|300c|300e|310a|362a|440a|440v|500a|502a|502c|502d|510a|510c|650a|650x|650y|650z|651a|700a|700d|710a|720a|740a|772c|772d|772t|785t|852a|852j|852z|866x|900a|900d|900u|976a|976b



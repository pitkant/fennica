
# ----------------------------------------------------
#            INITIALIZE AND LOAD DATA
# ----------------------------------------------------

source("init.R")

 # ----------------------------------------------------
#           PREPROCESS DATA
# ----------------------------------------------------

# author_name field
source("author_name.R")

# corporate field
source("corporate.R")

# Language
source("language.R")

# holder field
source("holder.R")

# note_510c field
source("note_510c.R")

# note_dissertation field
source("note_dissertation.R")

# note_granter field
source("note_granter.R")

# note_source field
source("note_source.R")

# publisher field
source("publisher.R")

# Publication place field and derived country- and geoinformation
source("publication_place.R")

# Publication place field and derived country- and geoinformation
source("publication_time.R")

# note_subject_topic field
source("subject_topic.R")
source("subject_geography.R")

# successor field
source("successor.R")

# Title field
source("title.R")

# Title_uniform field
source("title_uniform.R")

# uncontrolled field
source("uncontrolled.R")





# Generate an overview with links to the summary files:
knit("overview.Rmd")
# TODO: has to be done after harmonizations are complete, and an aggregated data set can be created
# knit("details.Rmd")

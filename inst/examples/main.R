
# ----------------------------------------------------
#            INITIALIZE AND LOAD DATA
# ----------------------------------------------------

source("init.R")

# ----------------------------------------------------
#           PREPROCESS DATA
# ----------------------------------------------------

# Title field
source("title.R")

# Title_uniform field
source("title_uniform.R")

#note_source field
source("note_source.R")

#uncontrolled field
source("uncontrolled.R")

#successor field
source("successor.R")

#holder field
source("holder.R")

#note_granter field
source("note_granter.R")

#note_subject_topic field
source("note_subject_topic.R")

#note_510c field
source("note_510c.R")

#corporate field
source("corporate.R")

#note_dissertation field
source("note_dissertation.R")

#note_510c field
source("note_510c.R")

#corporate field
source("corporate.R")

# Generate an overview with links to the summary files:
knit("overview.Rmd")
# TODO: has to be done after harmonizations are complete, and an aggregated data set can be created
# knit("details.Rmd")

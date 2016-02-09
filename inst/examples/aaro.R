# Install packages
#install.packages("devtools")
#install.packages("httr")
#install.packages("gender")
#install.packages(c("gender", "genderdata"),
#                 repos = "http://packages.ropensci.org",
#                 type = "source")

library(devtools)
#devtools::install_github("ropengov/bibliographica")
#devtools::install_github("ropengov/fennica")
#devtools::install_github("ropengov/sorvi")

# Load packages
library(bibliographica)
library(fennica)
library(sorvi)
library(dplyr)

# Load pre-calculated data tables
df.preprocessed <- readRDS("df.Rds")
load("geonames.RData")
load("places.geonames.RData") # TODO! needs file places.geonames, repo has broken symlink

# Get geocoordinates for the given publication places
# The place names are returned in the output as this improves the scalability
# with larger data collections
# This is the current function, prepared with the Geonames database and
# the British ESTC data collection. The function itself is not well-written but does the job for now.
#geoc <- bibliographica::get_geocoordinates(df.preprocessed$publication_place, geonames, places.geonames)

# These place names in Fennica are still missing geocoordinates (sorted by count)
#places.missing.geoc <- sort(table(droplevels(df.preprocessed$publication_place[is.na(rowSums(geoc))])), decreasing = TRUE)
#print(names(places.missing.geoc))

# Can we find latitude and longitude for most of these places from public sources?
# YES: R/city_geocoordinate.R

# If geocoordinates can be found for some places, it would be useful to have a wrapper function
# which takes the list of place names
# as input (ie. names(places.missing.geoc)),
# retrieves the geocoordinates from public sources,
# and then returns a data.frame with two columns:
# latitude and longitude, corresponding to the input places.
# YES: R/city_geocoorinates_all.R

# It is also OK to construct a custom mapping table (CSV file) between place names and geocoordinates
# and just use that in the function but of course it would be more neat to just automate everything.
# However, if we can't solve this otherwise, it would be already very useful to get geocoordinates for
# the top-30 or so places by hand from Wikipedia or another source. This will make it possible to
# visualize publication developments on the Finnish map.





#' @title city_synonymes
#' @description Use Levenshtein distance iteratively to find plausible misspellings for specific cities.
#' @param x List of city names in the data
#' @param synonymes Table of known city name variants with the columns "name" and "synonyme"
#' @param verbose verbose
#' @param output Output format of the synonyme table. A "list" or "data.frame"
#' @return List of city name variants
#' @return A list with two elements: synonymes (all unique mappings) and ambiguous (non-ambiguous mappings)
#' @export
#' @details This generates an augmented synonyme table including all variants indicated by the distance function. Final names with ambiguous mappings are removed and listed separately.
#' @author Leo Lahti and Niko Ilomaki \email{niko.ilomaki@@helsinki.fi}
#' @references See citation("fennica")
#' @examples \dontrun{all <- city_synonymes(c("Turku","Turkue", "Tampere", "Helsinki"), synonymes)}
#' @keywords utilities
city_synonymes <- function (x, synonymes, verbose = TRUE, output = "data.frame") {

  # TODO make more generic version 

  # User lowercase for all variant searches
  xorig <- x
  unique_cities <- tolower(unique(x))

  # No lowercase for the final names
  # Unique final names in the synonyme list
  basecase <- unique(as.character(synonymes$name))

  city.variants <- list()
  
  # Standard cases
  for(s in basecase){
    if (verbose) { message(s) }

    # Retrieve the variants
    # User lowercase for all variant searches	           
    known.variants <- c(s, synonymes[synonymes$name == s, "synonyme"])
    known.variants <- tolower(known.variants)

    # Augment the list of known variants by variants found from the
    # given unique_cities list
    recognized.variants <- collect_misspellings(s, known.variants, unique_cities)
    # Add detected variants to the list
    city.variants[[s]] <- recognized.variants
    
    # Remove detected variants from the list to speed up
    # NOTE: this will potentially hide some overlapping matchings
    # This function is not run often, therefore speed is not critical
    # Hence let us skip this line for now
    # unique_cities <- setdiff(unique_cities, recognized.variants)
  }

  # Convert into a synonyme table
  sn2 <- do.call("rbind", sapply(names(city.variants), function (city) {cbind(city, city.variants[[city]])}))
  colnames(sn2) <- c("name", "synonyme")

  # Remove duplicates
  sn2 <- sn2[!duplicated(sn2),]
  
  # Remove ambiguous matchings (each synonyme should have exactly one name)
  amb <- names(which(sapply(split(sn2[, "name"], sn2[, "synonyme"]), length) > 1))
  warning(paste("Removing ", length(amb), "ambiguous synonymes: ", paste(amb, collapse = ",")))
  # Remove the ambiguous synonymes with many different names
  sn2 <- sn2[!sn2[, "synonyme"] %in% amb,]
  sn2 <- as.data.frame(sn2)
  
  # Include only the initial places of interest in the final mapping table
  sn2 <- filter(sn2, synonyme %in% tolower(xorig))
  sn2$name <- droplevels(sn2$name)
  sn2$synonyme <- droplevels(sn2$synonyme)  

  if (output == "list") {
    sn2 <- split(as.character(sn2$synonyme), as.character(sn2$name))
  }
  
  list(synonymes = sn2, ambiguous = amb)

}


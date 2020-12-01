#' @title Enrich Data
#' @description Enrich data. 
#' @param data.validated Validated data.frame
#' @param df.orig Original data.frame
#' @return Augmented data.frame
#' @export
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("bibliographica")
#' @examples \dontrun{df2 <- enrich_preprocessed_data(df)}
#' @keywords utilities
enrich_preprocessed_data <- function(df.preprocessed, df.orig) {

  pagecount <- width <- height <- NULL

  # This could be improved - varies in time !
  printrun <- 1000
  update.fields   <- names(df.preprocessed)

  # Note the source of page counts. Original MARC data by default.
  df.preprocessed$pagecount_from <- rep("original", nrow(df.preprocessed))

  if ("publication_place" %in% update.fields) {
    tmp <- enrich_geo(df.preprocessed[["publication_place"]])
    df.preprocessed$publication_place <- tmp$place
    df.preprocessed$publication_country <- tmp$country
  }

  if ("publication_geography" %in% update.fields) {
    tmp <- enrich_geo(df.preprocessed[["publication_geography"]])
    df.preprocessed$publication_geography_place <- tmp$place
    df.preprocessed$publication_geography_country <- tmp$country    
  }

  # Always do. New field "author" needed for first edition recognition.
  # This is fast.
  if (any(c("author_name", "author_date") %in% update.fields)) {
    # this seems to take long even with only
    # 100 entries in df.preprocessed? -vv 
    df.preprocessed <- enrich_author(df.preprocessed)
  }

  # Always do. This is fast.
  # Must be done after enrich_author
  df.preprocessed <- enrich_years(df.preprocessed, df.orig)

  if ("publisher" %in% update.fields) {

    message("Self-published docs where author is known but publisher not")
    # Note: also unknown authors are considered as self-publishers
    message("Add a separate self-published field")
    tmp <- self_published(df.preprocessed)
    df.preprocessed$self_published <- tmp$self_published
    df.preprocessed$publisher <- tmp$publisher

  }

  # -------------------------------------------------------------------

  if (any(c("physical_extent", "physical_dimension") %in% update.fields)) {

    # Enrich dimensions before pagecount (some dimensions reclassified)
    df.preprocessed <- enrich_dimensions(df.preprocessed)

    # Enrich pagecount after dimensions
    df.preprocessed <- enrich_pagecount(df.preprocessed)

    message("Add estimated paper consumption")
    # Estimated print run size for paper consumption estimates    
    # Paper consumption in sheets
    # (divide document area by standard sheet area
    sheet.area <- subset(sheet_sizes(), format == "sheet")$area
    df.preprocessed <- mutate(df.preprocessed,
            paper = printrun * (pagecount/2) * (width * height)/sheet.area)

    message("Add estimated print area")
    df.preprocessed <- mutate(df.preprocessed,
            print_area = (pagecount/2) * (width * height)/sheet.area)

  }

  message("Enrichment OK")
  return(df.preprocessed)
}


#' @title Validate Preprocessed Data
#' @description Preprocessing validators and some adjustments.
#' @param data.preprocessed Preprocessed data.
#' @param max.pagecount Upper gap for the pagecount for ocs that exceed this limit.
#' @return Modified data.
#' @export
#' @author Ville Vaara and Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("bibliographica")
#' @examples # \dontrun{validate_preprocessed_data(data.preprocessed)}
#' @keywords utilities
validate_preprocessed_data <- function(df, max.pagecount = 5000) {

  # Consider all fields if update.fields is not specifically defined
  update.fields <- names(df)

  min.year <- (-2000)
  max.year <- as.numeric(format(Sys.time(), "%Y")) # this.year

  # Some documents have extremely high pagecounts
  # (up to hundreds of thousands of pages)
  # MT + LL selected 5000 pages as the default threshold.
  # If the document has more pages than this, the pagecount
  # info will be removed as unreliable
  # The ESTC seemed to have 4 documents (out of ~5e5) affected
  # with estimated pagecount over 5000
  # Also remove negative and zero pagecounts; should not be possible
  if ("physical_extent" %in% update.fields) {

    # Apply gap on the highest pagecounts
    df$pagecount[df$pagecount > max.pagecount] <- max.pagecount
    df$pagecount[df$pagecount <= 0] <- NA
    # Round page counts to the closest integer if they are not already integers
    df$pagecount <- round(df$pagecount)
  }

  if ("publication_time" %in% update.fields) {

    message("Fix publication years")
    # Remove apparent errors: no future publications or publications before historical times
    df$publication_year_from[which(df$publication_year_from > max.year)] <- NA
    df$publication_year_from[which(df$publication_year_from < min.year)] <- NA
    df$publication_year_till[which(df$publication_year_till > max.year)] <- NA
    df$publication_year_till[which(df$publication_year_till < min.year)] <- NA

  }

  if ("author_date" %in% update.fields) {

    # Author life years cannot exceed the present year
    # If they do, set to NA
    inds <- which(df$author_birth > max.year)
    if (length(inds) > 0) {
      df[inds, "author_birth"] <- NA
    }
    inds <- which(df$author_death > max.year)
    if (length(inds) > 0) {
       df[inds, "author_death"] <- NA
    }
    
    # Death must be after birth
    # If this is not the case, set the life years to NA
    inds <- which(df$author_death < df$author_birth)
    if (length(inds) > 0) {
      df[inds, "author_birth"] <- NA
      df[inds, "author_death"] <- NA
    }

    # Author life - make sure this is in numeric format
    df$author_birth <- as.numeric(as.character(df$author_birth))
    df$author_death <- as.numeric(as.character(df$author_death))  

    # Publication year must be after birth
    # FIXME: should we let these through to the final summaries
    # - this could help to spot problems ?
    inds <- which(df$author_birth > df$publication_year_from)
    if (length(inds) > 0) {
      df[inds, "author_birth"] <- NA
      df[inds, "author_death"] <- NA
      df[inds, "publication_year_from"] <- NA
      df[inds, "publication_year_till"] <- NA      
    }

  }

  if ("author_name" %in% update.fields) {
    df <- validate_names(df)
  }


  return (df)
}





geobox <- function (region) {

  if (length(region) == 1 && region == "Europe.main") {
    bbox <- c(-12, 35, 25, 60) # Main Europe with UK
  } else if (length(region) == 1 && region == "Europe.north") {
    bbox <- c(-1, 1, 38, 125) # Northern Europe    
  } else if (length(region) == 1 && region == "Europe") {
    bbox <- c(-15, 35, 30.5, 70) # Europe
  } else if (length(region) == 1 && region == "UK") {
    #bbox <- c(-10.5, 49.5, 2.5, 59) # UK
    bbox <- c(-10.7, 49.7, 2.3, 59) # UK      
  } else if (length(region) == 1 && region == "West") {
    bbox <- c(-120, 25, 30.5, 70) # West  
  } else if (length(region) == 1 && region == "World") {
    bbox <- c(-150, -70, 150, 70) # World
  } else {
    bbox <- region
  }
  names(bbox) <- c("left", "bottom", "right", "top")
  bbox
}


#' @title Read Bibliographic Metadata
#' @description Read metadata parsed from XML.
#' @param file Parsed raw data file/s
#' @param verbose verbose
#' @param sep separator
#' @return data.frame with raw data fields
#' @export
#' @author Leo Lahti \email{leo.lahti@@iki.fi}
#' @references See citation("bibliographica")
#' @examples \dontrun{df.raw <- read_bibliographic_metadata(file)}
#' @keywords utilities
read_bibliographic_metadata <- function (file, verbose = FALSE, sep = "|") {

  if (length(file) == 0) {stop("File is empty - halting !")}

  # If there are multiple files, read in a list and combine
  # in the end
  if (length(file) > 1) {

    dfs <- list()
    for (f in file) {
      if (verbose) {message(f)}
      dfs[[f]] <- read_bibliographic_metadata(f)
    }
    if (verbose) {message("Combining the batches..")}    
    df.all <- bind_rows(dfs)
    if (verbose) {message("OK")}    

    # Replace individual identifier columns
    df.all$original_row <- 1:nrow(df.all)

    return(df.all)

  } else {
  
    # Read data
    tab <- read.csv(file, sep = sep, strip.white = TRUE,
    	   		  stringsAsFactors = FALSE, encoding = "UTF-8")

    # Removes additional whitespace and some special characters from
    # beginning and end of strings
    tab <- apply(tab,1:2,function(x){
      x <- gsub("^[[:space:],:;]+","",gsub("[[:space:],:;]+$","",x)) 
    })

    # Convert empty cells to NAs
    tab <- apply(tab, 2, function (x) {y <- x; y[x %in% c(" ", "")] <- NA; y})
  
    # Form data frame
    df <- as.data.frame(tab, stringsAsFactors = FALSE)

    # Pick field clear names
    names.orig <- names(df)
    names(df) <- harmonize_field_names(gsub("^X", "", names(df)))

    if (any(is.na(names(df)))) {
      warnings(paste("Fields", paste(names.orig[which(is.na(names(df)))], collapse = ";"), "not recognized"))
    }

    df <- tbl_df(df)

    # Add identifier column
    df$original_row <- 1:nrow(df)

    return(df)

  }

}

  # CERL ?
  # All ESTC fiels 100a|100d|240n|245a|260a|260b|260c|300a|300c|310a|362a|650a|650y,651y|650z,651a,651z
  # All Fennica fields 041a|041h|100a|100d|240a|245a|245b|260a|260b|260c|300a|300b|300c|300e|310a|362a|500a|502a|502c|502d|510a|510c|650a|651a|710a|720a|785t|852a  
  # All Kungliga fields 008lang|100a|100d|110a|240a|245a|245b|245c|260a|260b|260c|260e|260f|300a|300b|300c|300e|310a|362a|440a|440v|500a|502a|502c|502d|510a|510c|650a|650x|650y|650z|651a|700a|700d|710a|720a|740a|772c|772d|772t|785t|852a|852j|852z|866x|900a|900d|900u|976a|976b


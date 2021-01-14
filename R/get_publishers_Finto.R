#' @title Unify Publishers with Finto
#' @description Use Finto database to unify publisher names.
#' @param cheat_list cheat_list
#' @param Finto_comp Vector of alternative names from Finto
#' @param all_names Data frame containing all the name related fields
#' @param unknown_town Vector of towns from raw data
#' @param publication_year Data frame of published_in, published_from and published_till
#' @return Data frame with alt, pref and match_methods
#' @export
#' @author Hege Roivainen \email{leo.lahti@@iki.fi}
#' @references See citation("fennica")
#' @keywords utilities
get_publishers_Finto <- function(cheat_list, Finto_comp, all_names, unknown_town, publication_year) {
  
  message("Starting: get_publishers_Finto")
  Finto_corrected <- cheat_list$pref
  Finto_town  <- cheat_list$town
  Finto_years <- cheat_list[, c("year_from", "year_till")]
  
  alt <- character(length = nrow(all_names))
  match_methods <- character(length = nrow(all_names))
  pref <- character(length = nrow(all_names))
  idx = 1
  
  # Create an another pair of alt names (=Finto_comp$orig) and cheat_list
  # Unify publication year
  # 1. both years NA
  inds <- which(is.na(publication_year$publication_year_from))
  inds2 <- intersect(inds, which(is.na(publication_year$publication_year_till)))
  publication_year$publication_year_from[inds2] <- publication_year$publication_year_till[inds2] <- publication_year$publication_year[inds2]
  
  # 2. start year NA
  inds2 <- intersect(inds, which(!is.na(publication_year$publication_year_till)))
  publication_year$publication_year_from[inds2] <- publication_year$publication_year_till[inds2]
  
  # 3. end year NA
  inds <- which(is.na(publication_year$publication_year_till))
  inds2 <- intersect(inds, which(!is.na(publication_year$publication_year_from)))
  publication_year$publication_year_from[inds2] <- publication_year$publication_year_till[inds2]
  
  all_data <- data.frame(names = all_names,
                         pubyear.from = publication_year$publication_year_from,
                         pubyear.till = publication_year$publication_year_till,
                         town = unknown_town,
                         ignore = FALSE)
  
  # Change NA to an empty string to avoid problems later
  all_data$names.orig[which(is.na(all_data$names.orig))] <- ""
  unique_data <- unique(all_data)  
  
  for (idx in 1:nrow(unique_data)) {
    
    # LL: what is the difference btw all_names$orig and all_data$names.orig ?
    all_names_indices <- which(all_names$orig == unique_data$names.orig[idx])
    all_names_indices <- intersect(all_names_indices, which(publication_year$publication_year_from == unique_data$pubyear.from[idx]))
    all_names_indices <- intersect(all_names_indices, which(publication_year$publication_year_till == unique_data$pubyear.till[idx]))
    all_names_indices <- intersect(all_names_indices, which(unknown_town == unique_data$town[idx]))
    town2 <- unique_data$town[idx]
    
    # Filter out naughty towns
    # Phase 1. Get all the alt forms through the pref forms
    inds <- which(Finto_town == town2)
    inds2 <- which(is.na(Finto_town))
    inds <- union(inds, inds2)
    valid_pref_corps <- unique(Finto_corrected[inds])
    valid_alt_names  <- Finto_comp$orig[which(Finto_corrected %in% valid_pref_corps)]
    inds <- which(Finto_comp$orig %in% valid_alt_names)
    
    # Include groups of valid companies from Finto data based on year
    if (!is.na(unique_data$pubyear.from[idx])) {
      # Group 1. Start year is between Finto's start and end years
      inds2 <- which(unique_data$pubyear.from[idx] >= Finto_years$year_from)
      inds2 <- intersect(inds2, which(unique_data$pubyear.from[idx] <= Finto_years$year_till))
      
      # Group 2. ...or End year is between Finto's start and years
      inds3 <- which(unique_data$pubyear.till[idx] < Finto_years$year_till)
      inds3 <- intersect(inds3, which(unique_data$pubyear.till[idx] > Finto_years$year_from))
      
      inds2 <- union(inds2, inds3)
      inds <- union(inds, inds2)
      
      # Group 3. ...or Finto's years are empty
      inds <- union(inds, which(is.na(Finto_years$year_from)))
      
    } else {
      # Nothing else.
      # If publication_year is NA, inds will not be limited, because it might be between the right range
    }
    
    if ((is.na(unique_data$names.initials[idx])) || (unique_data$names.initials[idx]=="") || (is.na(unique_data$names.guessed[idx]))) {
      # 1. Check against Finto name, if there's no initials at all
      tmp_comparison <- Finto_comp$orig[inds]
      name_comp <- unique_data$names.orig[idx]
      match_method <- 1
      
    } else if (unique_data$names.guessed[idx] == FALSE) {
      # 2. Check against Finto family name, if initials match exactly AND the initials aren't guessed
      tmp_comparison_inds <- which(Finto_comp$initials==unique_data$names.initials[idx])
      inds <- intersect(inds, tmp_comparison_inds)
      inds <- intersect(inds, which(Finto_comp$guessed==FALSE))
      tmp_comparison <- Finto_comp$family[inds]
      name_comp <- unique_data$names.family[idx]
      match_method <- 2
      
    } else if (unique_data$names.guessed[idx] == TRUE) {
      # 3. Check against Finto full name, if initials are guessed
      tmp_comparison_inds <- which(Finto_comp$full_name==unique_data$names.full_name[idx])
      inds <- intersect(inds, tmp_comparison_inds)
      tmp_comparison <- Finto_comp$full_name[inds]
      name_comp <- unique_data$names.full_name[idx]
      match_method <- 3
    } else {
      match_method <- 4
    }
    
    # The actual comparison
    # NB! tmp_comparison is a subset of [inds], so [res] must be the same subset
    maxDist <- ceiling(0.1 * nchar(name_comp))
    if (maxDist == 0) {
      res <- NA
    } else {
      res <- Finto_comp$orig[inds][amatch(name_comp, tmp_comparison, method="dl", maxDist=maxDist)]
    }
      #res <- Finto_comp$orig[inds][amatch(name_comp, tmp_comparison, method="jw", p=0.05, maxDist=0.04)]
    
    if ((is.null(res)) || (is.na(res)) || (res=="")) {
      # No results -> return the original
      res <- unique_data$names.origs[idx]
    } else {
      # There was a match
      # Get the indices from Finto matching the result string
      # Select the most likely corrected version in par with the matched result
      
      if (match_method==1) {
        inds <- which(Finto_comp$orig==res)
      } else if (match_method==2) {
        # Initials & Family name
        inds <- which(Finto_comp$family==unique_data$names.family[idx])
        inds <- intersect(inds, which(Finto_comp$initials==unique_data$names.initials[idx]))
        inds <- intersect(inds, which(Finto_comp$guessed==FALSE))
      } else if (match_method==3) {
        inds <- which(Finto_comp$full_name==unique_data$names.full_name[idx])
      } else {
        
      }
      
      origs <- unique(Finto_comp$orig[inds])
      prefs <- unique(Finto_corrected[inds])
      
      # Right company can't be selected from multiple variants by random
      if ((length(origs) > 1) && (length(prefs) > 1)) {
        # Hardcoded! Should be changed.
        inds <- grep("(kirja)|(bok)|(paino)|(tryck)|(kustan)", x=origs, ignore.case=TRUE)
        if ((length(inds) > 1) && (length(unique(origs[inds])) > 1)) {
          # Can't be decided: more than one book-related company
          origs <- ""
          prefs <- ""
        } else if (length(inds) == 1) {
          origs <- origs[inds]
          prefs <- prefs[inds]
        } else if ((length(inds > 1)) && (length(unique(prefs)) == 1)) {
          # Only one book-related company, although many indices
          origs <- origs[inds[1]]
          prefs <- prefs[inds[1]]
        } else {
          inds <- grep("(kirja)|(bok)|(paino)|(tryck)|(kustan)", x=prefs, ignore.case=TRUE)
          if ((length(inds) > 1) && (length(unique(prefs)) > 1 )) {
            # Can't be decided: more than one book-related company
            origs <- ""
            prefs <- ""
          } else if (length(inds) == 1) {
            origs <- origs[inds]
            prefs <- prefs[inds]
          } else if (length(inds) == 0) {
            origs <- ""
            prefs <- ""
          } else {
            # More than one index, but only one unique result
            origs <- origs[inds[1]]
            prefs <- prefs[inds[1]]
          }
        }
      }
      
      # Shortcut to avoid problems with short names getting irrational correspondences from Finto
      # Too generic names produce real problems: Sampsa -> Asunto Oy Sampsa; Sjöblom -> Autohuolto Sjöblom; Granlund -> Insinööritoimisto Olof Granlund
      # FIXTHIS: Gummerus -> K.J. Gummerus will be missing
      if (length(grep("^[[:upper:]][[:lower:]]{1,8}$", unique_data$names.orig[idx]))>0) {
        idx <- idx + 1
        next
      }
      
      if (length(na.omit(origs))==1) {
        alt[all_names_indices] <- origs
      } else if (length(na.omit(origs)) > 1) {
        alt[all_names_indices] <- origs[1]
      }
      if (length(na.omit(prefs))==1) {
        pref[all_names_indices] <- prefs
      } else if (length(na.omit(prefs)) > 1) {
        pref[all_names_indices] <- prefs[1]
      }
      match_methods[all_names_indices] <- match_method
      
    }
    
  }
  
  message("get_publishers_Finto OK.")
  return (data.frame(alt = alt, pref = pref, match_methods = match_methods, stringsAsFactors = FALSE))
  
}
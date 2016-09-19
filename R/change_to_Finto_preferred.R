change_to_Finto_preferred <- function (pubs, towns, years, cheat_list) {

    # Remove opening brackets without closure, as grep considers that naughty
    towns <- gsub("^[[]([^[]+)$","\\1", towns)
    towns <- gsub("^[[](.*[^]])$","\\1", towns)

    ret <- data.frame(orig = character(nrow(pubs)),
    	   	      mod = character(nrow(pubs)),
    	              stringsAsFactors = FALSE)
    
    na_till <- which(is.na(years$publication_year_till))
    na_from <- which(is.na(years$publication_year_from))
    pubtills <- integer(length = nrow(years))
    pubtills[-na_till] <- years$publication_year_till[-na_till]
    pubtills[na_till]  <- years$publication_year_from[na_till]
    
    pubfroms <- integer(length = nrow(years))
    pubfroms[-na_from] <- years$publication_year_from[-na_from]
    pubfroms[na_from]  <- years$publication_year_from[na_from]
    
    p5 <- data.frame(orig = pubs$orig,
       	             mod = pubs$mod,
		     town = towns,
       	  	     pubfrom = pubfroms,
		     pubtill = pubtills,
		     stringsAsFactors = FALSE)

    # Unique terms to speed up
    id <- apply(p5, 1, function (x) {paste(x, collapse = "")})
    p5$id <- id
    unique_pubs <- unique(p5)
    
    cheat_list$town[which(cheat_list$town=="")] <- NA
    
    for (idx in 1:nrow(unique_pubs)) {

      pubname <- as.character(unique_pubs$mod[idx])
      pubtown <- unique_pubs$town[idx]
      pubtill <- unique_pubs$pubtill[idx]
      pubfrom <- unique_pubs$pubfrom[idx]
      
      if (is.na(pubtown)) {
        unique_pubs_instances <- intersect(which(pubname==unique_pubs$mod), which(is.na(unique_pubs$town)))
      } else {
        unique_pubs_instances <- intersect(which(pubname==unique_pubs$mod), which(pubtown==unique_pubs$town))
      }
      if (is.na(pubfrom)) {
        unique_pubs_instances <- intersect(which(is.na(unique_pubs$pubfrom)), unique_pubs_instances)
      } else {
        unique_pubs_instances <- intersect(which(pubfrom==unique_pubs$pubfrom), unique_pubs_instances)
      }
      if (is.na(pubtill)) {
        unique_pubs_instances <- intersect(which(is.na(unique_pubs$pubtill)), unique_pubs_instances)
      } else {
        unique_pubs_instances <- intersect(which(pubtill==unique_pubs$pubtill), unique_pubs_instances)
      }
        
      # Default value, might be changed later on
      ret$orig[unique_pubs_instances] <- as.character(unique_pubs$orig[idx])
      ret$mod[unique_pubs_instances] <- pubname

      tmp_inds <- which(cheat_list$alt==pubname)
      if (length(tmp_inds)>=1) {
        # check town
        matching_towns <- grep(pubtown, cheat_list$town[tmp_inds])
        town_na_inds <- which(is.na(cheat_list$town[tmp_inds]))
        matching_towns_inds <- union(matching_towns, town_na_inds)
        if (!is.na(towns[idx])) {tmp_inds <- tmp_inds[matching_towns_inds]}
        
        if (length(tmp_inds)>=1) {
          # check years: either start OR end year of publication must be within range
          year_not_na_inds <- tmp_inds[which(!is.na(cheat_list$year_from[tmp_inds]))]
          matching_start_inds <- which(cheat_list$year_from[year_not_na_inds] >= pubfrom)
          matching_start_inds <- intersect(matching_start_inds, which(cheat_list$year_till[year_not_na_inds] <= pubfrom))
          
          matching_end_inds <- which(cheat_list$year_from[year_not_na_inds] >= pubtill)
          matching_end_inds <- intersect(matching_end_inds, which(cheat_list$year_till[year_not_na_inds] <= pubfrom))
          
          matching_years_inds <- union(matching_start_inds, matching_end_inds)
          matching_years_inds <- union(matching_years_inds, tmp_inds[which(is.na(cheat_list$year_from[tmp_inds]))])
          
          if (!is.na(pubfrom)) {tmp_inds <- matching_years_inds}
          
          # No point of changing a unique to something else,
          # if the changed name doesn't exist in the other set of names
          if ((length(tmp_inds)==1) && (pubname %in% pubs) && (!is.na(tmp_inds))) {
            
            unique_pubs_instances <- intersect(which(pubname==unique_pubs$mod), which(pubtown==unique_pubs$town))
            unique_pubs_instances <- intersect(which(pubtill==unique_pubs$pubfrom), unique_pubs_instances)
            unique_pubs_instances <- intersect(which(pubtill==unique_pubs$pubtill), unique_pubs_instances)

            ret$orig[unique_pubs_instances] <- as.character(unique_pubs$orig[idx])
            ret$mod[unique_pubs_instances] <- cheat_list$pref[tmp_inds]
          }
        }
      }
  }

  # Map back to the original domain before returning
  return (ret[match(p5$id, unique_pubs$id),])
}

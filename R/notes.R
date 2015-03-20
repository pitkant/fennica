# df$note_general <- embellish_field(df.orig[["500a"]]) # 21528 unique, 36382 NA
# df$note_dissert <- embellish_field(df.orig[["502a"]]) # 4 unique, 65501 NA
# df$note_granter <- embellish_field(df.orig[["502c"]]) # 88 unique, 66074 NA
# df$note_year <- embellish_field(df.orig[["502d"]]) # 283 unique, 66258 NA
# df$note_source <- embellish_field(df.orig[["510a"]]) # 5000 unique, 60165 NA
# df$note_loc <- embellish_field(df.orig[["510c"]]) # 6451 unique, 65267 NA

fix_note_diss <- function(df.orig, df) {
	v <- df.orig$note_dissertation
	v[v=="Diss"] <- TRUE
	v[v=="Diss. :;Diss"] <- TRUE
	v[v=="Diss. synod"] <- FALSE
	v[is.na(v)] <- FALSE
	df$note_diss <- v

	v <- df.orig$note_dissertation
	v[v=="Diss"] <- FALSE
	v[v=="Diss. :;Diss"] <- FALSE
	v[v=="Diss. synod"] <- TRUE
	v[is.na(v)] <- FALSE
	df$note_synod <- v

	df
}

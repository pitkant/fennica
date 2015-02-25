# df$note_general <- embellish_field(df.orig[["500a"]]) # 21528 unique, 36382 NA
# df$note_dissert <- embellish_field(df.orig[["502a"]]) # 4 unique, 65501 NA
# df$note_granter <- embellish_field(df.orig[["502c"]]) # 88 unique, 66074 NA
# df$note_year <- embellish_field(df.orig[["502d"]]) # 283 unique, 66258 NA
# df$note_source <- embellish_field(df.orig[["510a"]]) # 5000 unique, 60165 NA
# df$note_loc <- embellish_field(df.orig[["510c"]]) # 6451 unique, 65267 NA

fix_note_dissert <- function(v) {
	v[v=="Diss"] <- "d"
	v[v=="Diss. :;Diss"] <- "diss"
	v[v=="Diss. synod"] <- "synod"

	v
}

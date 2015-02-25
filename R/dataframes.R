# for dplyr compatibility
# may not be needed in future
# ref. https://github.com/hadley/dplyr/issues/650

classes_to_simple <- function(x) {
	y <- tbl_df(data.frame(list(row.index = 1:nrow(x))))
	y$language 				<- x$language@.Data
	y$author 				<- x$author@.Data
	y$title 				<- x$title@.Data
	y$publication			<- x$publication@.Data
	y$physical				<- x$physical@.Data
	y$note 					<- x$note@.Data
	y$term 					<- x$term@.Data
	y$miscellanea 			<- x$miscellanea@.Data

	y
}

classes_to_full <- function(x) {
	y <- tbl_df(data.frame(list(row.index = 1:nrow(x))))
	y$language 				<- x$language@.Data
	y$language_fin			<- x$language@finnish
	y$language_swe			<- x$language@swedish
	y$language_lat			<- x$language@latin
	y$language_ger			<- x$language@german
	y$language_eng			<- x$language@english
	y$language_fre			<- x$language@french
	y$language_rus			<- x$language@russian
	y$language_grc			<- x$language@greek
	y$language_dan			<- x$language@danish
	y$language_ita			<- x$language@italian
	y$language_heb			<- x$language@hebrew
	y$language_dut			<- x$language@dutch
	y$language_spa			<- x$language@spanish
	y$language_smi			<- x$language@sami
	y$language_gre			<- x$language@moderngreek
	y$language_ice			<- x$language@icelandic
	y$language_ara			<- x$language@arabic
	y$language_por			<- x$language@portuguese
	y$language_fiu			<- x$language@finnougrian
	y$language_mul			<- x$language@multiple
	y$language_und			<- x$language@undetermined
	y$author 				<- x$author@.Data
	y$author_nam			<- x$author@name
	y$author_dat 			<- x$author@date
	y$author_fam 			<- x$author@name_family
	y$author_fir 			<- x$author@name_first
	y$author_oth 			<- x$author@name_other
	y$author_bir 			<- x$author@date_birth
	y$author_dea 			<- x$author@date_death
	y$title 				<- x$title@.Data
	y$title_uni 			<- x$title@uniform
	y$title_pro 			<- x$title@proper
	y$title_rem 			<- x$title@remainder
	y$publication			<- x$publication@.Data
	y$publication_plc 		<- x$publication@place
	y$publication_pbl 		<- x$publication@publisher
	y$publication_tim		<- x$publication@time
	y$publication_frq		<- x$publication@frequency
	y$publication_itv		<- x$publication@interval
#	y$publication_i 		<- x$publication@place_i
#	y$publication_ii 		<- x$publication@place_ii
#	y$publication_iii 		<- x$publication@place_iii
	y$publication_tia 		<- x$publication@time_at
	y$publication_tif		<- x$publication@time_from
	y$publication_tiu 		<- x$publication@time_until
	y$physical				<- x$physical@.Data
	y$physical_ext 			<- x$physical@extent
	y$physical_dtl 			<- x$physical@details
	y$physical_dim 			<- x$physical@dimension
	y$physical_acc 			<- x$physical@accomppanied
	y$note 					<- x$note@.Data
	y$note_gen 				<- x$note@general
	y$note_dis 				<- x$note@dissertation
	y$note_gnt 				<- x$note@granter
	y$note_yea 				<- x$note@year
	y$note_src 				<- x$note@source
	y$note_loc 				<- x$note@location
	y$term 					<- x$term@.Data
	y$term_tpc 				<- x$term@topic
	y$term_geo 				<- x$term@geography
	y$miscellanea 			<- x$miscellanea@.Data
	y$miscellanea_crp 		<- x$miscellanea@corporate
	y$miscellanea_unc 		<- x$miscellanea@uncontrolled
	y$miscellanea_scc 		<- x$miscellanea@successor
	y$miscellanea_hdr 		<- x$miscellanea@holder

	y
}

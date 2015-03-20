mark_languages <- function(df.orig, df) {
	subroutine <- function(abbrv){grepl(abbrv, df.orig$language, ignore.case = T)}
	df$language_finnish <- subroutine("fin")
	df$language_swedish <- subroutine("swe")
	df$language_latin <- subroutine("lat")
	df$language_german <- subroutine("ger")
	df$language_english <- subroutine("eng")
	df$language_french <- subroutine("fre")
	df$language_russian <- subroutine("rus")
	df$language_greek <- subroutine("grc")
	df$language_danish <- subroutine("dan")
	df$language_italian <- subroutine("ita")
	df$language_hebrew <- subroutine("heb")
	df$language_dutch <- subroutine("dut")
	df$language_spanish <- subroutine("spa")
	df$language_sami <- subroutine("smi")
	df$language_moderngreek <- subroutine("gre")
	df$language_icelandic <- subroutine("ice")
	df$language_arabic <- subroutine("ara")
	df$language_portuguese <- subroutine("por")
	df$language_finnougrian <- subroutine("fiu")
	df$language_multiple <- subroutine("mul")
	df$language_undetermined <- subroutine("und")	

	df
}

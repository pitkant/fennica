mark_languages <- function(df.orig, df) {
	subroutine <- function(abbrv){grepl(abbrv, df.orig$language, ignore.case = T)}
	df$finnish <- subroutine("fin")
	df$swedish <- subroutine("swe")
	df$latin <- subroutine("lat")
	df$german <- subroutine("ger")
	df$english <- subroutine("eng")
	df$french <- subroutine("fre")
	df$russian <- subroutine("rus")
	df$greek <- subroutine("grc")
	df$danish <- subroutine("dan")
	df$italian <- subroutine("ita")
	df$hebrew <- subroutine("heb")
	df$dutch <- subroutine("dut")
	df$spanish <- subroutine("spa")
	df$sami <- subroutine("smi")
	df$modern_greek <- subroutine("gre")
	df$icelandic <- subroutine("ice")
	df$arabic <- subroutine("ara")
	df$portuguese <- subroutine("por")
	df$finnougrian <- subroutine("fiu")
	df$multiple <- subroutine("mul")
	df$undetermined <- subroutine("und")	

	df
}

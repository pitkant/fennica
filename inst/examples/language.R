check_language <- function (str) {
  v <- grepl(paste0(".*",str,".*$"), df.orig[["041a"]], ignore.case = T) + grepl(str, df.orig[["041h"]], ignore.case = T)
  v[v == 2] <- 1
  
  v
}

# Major languages in this dataset
df$lang_finnish <- check_language("fin")
df$lang_swedish <- check_language("swe")
df$lang_latin <- check_language("lat")
df$lang_german <- check_language("ger")
df$lang_english <- check_language("eng")
df$lang_french <- check_language("fre")
df$lang_russian <- check_language("rus")
df$lang_greek <- check_language("grc")
df$lang_danish <- check_language("dan")

# Minor languages in this dataset
df$lang_italian <- check_language("ita")
df$lang_hebrew <- check_language("heb")
df$lang_dutch <- check_language("dut")
df$lang_spanish <- check_language("spa")
df$lang_sami <- check_language("smi")
df$lang_moderngreek <- check_language("gre")
df$lang_icelandic <- check_language("ice")
df$lang_arabic <- check_language("ara")
df$lang_portuguese <- check_language("por")

# Language aggregates per the MARC standard
df$lang_finnougrian <- check_language("fiu")
df$lang_multiple <- check_language("mul")
df$lang_undetermined <- check_language("und")

lang <- data.frame(list(row.index = 1:nrow(df.orig)))

check_language <- function (str) {
  v <- grepl(paste0(".*",str,".*$"), df.orig[["041a"]], ignore.case = T) + grepl(str, df.orig[["041h"]], ignore.case = T)
  v[v == 2] <- 1
  
  v
}

# Major languages in this dataset
lang$finnish <- check_language("fin")
lang$swedish <- check_language("swe")
lang$latin <- check_language("lat")
lang$german <- check_language("ger")
lang$english <- check_language("eng")
lang$french <- check_language("fre")
lang$russian <- check_language("rus")
lang$greek <- check_language("grc")
lang$danish <- check_language("dan")

# Minor languages in this dataset
lang$italian <- check_language("ita")
lang$hebrew <- check_language("heb")
lang$dutch <- check_language("dut")
lang$spanish <- check_language("spa")
lang$sami <- check_language("smi")
lang$moderngreek <- check_language("gre")
lang$icelandic <- check_language("ice")
lang$arabic <- check_language("ara")
lang$portuguese <- check_language("por")

# Language aggregates per the MARC standard
lang$finnougrian <- check_language("fiu")
lang$multiple <- check_language("mul")
lang$undetermined <- check_language("und")

lang <- lang[,-1]

# print(colSums(lang))

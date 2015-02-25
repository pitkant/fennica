collect_misspellings <- function (v,w) {
	eff <- 1
	while (eff > 0) {
		eff <- 0
		for (i in 1:length(v)) {
			if(is.na(v[i])) {
				next
			}
			if(min(adist(v[i],w)) == 1){
				w <- c(w,v[i])
				eff <- 1
			}
		}
	}
	w
}

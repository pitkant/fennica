source("analysis.init.R")
source("analysis.run.R")

# Custom analyses
knitr::knit("summary.Rmd", encoding="UTF-8")
knitr::knit("Helsinki.Rmd", encoding="UTF-8")
knitr::knit("Suomi.Rmd", encoding="UTF-8")
knitr::knit("Turku.Rmd", encoding="UTF-8")
knitr::knit("Vaasa.Rmd", encoding="UTF-8")
knitr::knit("suvut.Rmd", encoding="UTF-8")
knitr::knit("20151209-HelsinkiDH.Rmd", encoding="UTF-8")
knitr::knit("20160303-Krakow.Rmd", encoding="UTF-8")

library(rmarkdown)
rmarkdown::render("manuscript-krakow.Rmd")
rmarkdown::render("20160715-slides-Krakow.Rmd")
#knitr::knit("manuscript-krakow.Rmd", encoding="UTF-8")

# Push changes to github
# https://github.com/ropensci/git2r
library(git2r)
repo <- repository("../../")
#config(repo, user.name="antagomir", user.email="leo.lahti@iki.fi")
add(repo, "figure/*.png", force = TRUE)
# commit(repo, "Rmd update")
# push(repo) # does not work ?
#system("git push")

# system("git add -f figure/*.png")
# system("git add output.tables/*.csv")
system("git commit -a -m'Rmd update'")
system("git push")





source("analysis.init.R")

# ---------------------------------------------------------

# Summarize the data and discarded entries
tmp <- generate_summary_tables(df.preprocessed, df.orig, output.folder)

# ---------------------------------

sf <- generate_summaryfiles(df.preprocessed, author = author, output.folder = output.folder, ntop = ntop)

knitr::knit("summary.Rmd", encoding="UTF-8")
knitr::knit("Helsinki.Rmd", encoding="UTF-8")
knitr::knit("Suomi.Rmd", encoding="UTF-8")
knitr::knit("Turku.Rmd", encoding="UTF-8")
knitr::knit("Vaasa.Rmd", encoding="UTF-8")
knitr::knit("suvut.Rmd", encoding="UTF-8")
knitr::knit("20151209-HelsinkiDH.Rmd", encoding="UTF-8")
knitr::knit("20160303-Krakow.Rmd", encoding="UTF-8")

# -----------------------------------------

#library(rmarkdown)
#render("summary.Rmd", output_format = "pdf_document")
#render("Helsinki.Rmd", output_format = "pdf_document")
#render("Suomi.Rmd", output_format = "pdf_document")
#render("Turku.Rmd", output_format = "pdf_document")
#render("Vaasa.Rmd", output_format = "pdf_document")
#render("suvut.Rmd", output_format = "pdf_document")
#render("20151209-HelsinkiDH.Rmd", output_format = "pdf_document")





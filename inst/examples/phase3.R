library(dplyr)

source("R/AllClasses.R", encoding="UTF-8")
source("R/author_lifespan.R", encoding="UTF-8")
source("R/author_name.R", encoding="UTF-8")
source("R/data.R", encoding="UTF-8")
source("R/dataframes.R", encoding="UTF-8")
source("R/editing.R", encoding = "UTF-8")
source("R/house.R", encoding = "UTF-8")
source("R/notes.R", encoding = "UTF-8")
source("R/placenames.R", encoding = "UTF-8")
source("R/plots.R", encoding = "UTF-8")
source("R/time.R", encoding = "UTF-8")
source("R/university.R", encoding = "UTF-8")

# ---------------------------------------------

evalSubfields <- function(x) {
	doThis <- function(abbrv){grepl(abbrv, x@.Data, ignore.case = T)}
	x@finnish <- doThis("fin")
	x@swedish <- doThis("swe")
	x@latin <- doThis("lat")
	x@german <- doThis("ger")
	x@english <- doThis("eng")
	x@french <- doThis("fre")
	x@russian <- doThis("rus")
	x@greek <- doThis("grc")
	x@danish <- doThis("dan")
	x@italian <- doThis("ita")
	x@hebrew <- doThis("heb")
	x@dutch <- doThis("dut")
	x@spanish <- doThis("spa")
	x@sami <- doThis("smi")
	x@moderngreek <- doThis("gre")
	x@icelandic <- doThis("ice")
	x@arabic <- doThis("ara")
	x@portuguese <- doThis("por")
	x@finnougrian <- doThis("fiu")
	x@multiple <- doThis("mul")
	x@undetermined <- doThis("und")	
	x
}

df$language <- evalSubfields(df$language)

# ---------------------------------------------

print("Group author names")
df$author@name_family <- fix_family(df$author@name)
df$author@name_first <- fix_first(df$author@name)
df$author@name_other <- fix_other(df$author@name)

# ---------------------------------------------

print("Extract author dates")
df$author@date_birth <- fix_birth(df$author@date)
df$author@date_death <- fix_death(df$author@date)

# ---------------------------------------------

print("Clean place names (this may take several minutes)")
df$publication@place <- preprocess_placenames(df$publication@place)
source("inst/examples/city.R", encoding = "UTF-8")
df$publication@country <- deduce_country(df$publication@place)

# ---------------------------------------------

print("Clean publishing house names")
df$publication@publisher <- fix_pubhouses(df$publication@publisher)

# ---------------------------------------------

print("Clean publishing years")
df$publication@time_at <- fix_pubwhen(df$publication@time)
df$publication@time_from <- fix_pubfrom(df$publication@time)
df$publication@time_until <- fix_pubtill(df$publication@time)

# ---------------------------------------------

print("Clean notes")
df$note@granter <- fix_university(df$note@dissertation)
df$note@dissertation <- fix_note_dissert(df$note@dissertation)

df.full <- classes_to_full(df)
source("inst/examples/visualization.R", encoding = "UTF-8")

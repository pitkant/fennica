library(dplyr)

source("R/AllClasses.R", encoding="UTF-8")
source("R/author_lifespan.R", encoding="UTF-8")
source("R/author_name.R", encoding="UTF-8")
source("R/collect_misspellings.R", encoding="UTF-8")
source("R/correct_misspellings.R", encoding="UTF-8")
source("R/data.R", encoding="UTF-8")
source("R/dataframes.R", encoding="UTF-8")
source("R/editing.R", encoding = "UTF-8")
source("R/house.R", encoding = "UTF-8")
source("R/notes.R", encoding = "UTF-8")
source("R/plots.R", encoding = "UTF-8")
source("R/preprocess_placenames.R", encoding = "UTF-8")
source("R/time.R", encoding = "UTF-8")
source("R/university.R", encoding = "UTF-8")

print("Start collecting variables to a polished data frame")

df <- data.frame(list(row.index = 1:nrow(df.orig)))

empty <- rep(NA,nrow(df.orig))

df$language <- new("Lingua", embellish(combine(df.orig[["041a"]],df.orig[["041h"]],empty,empty,empty,empty)))
df$author <- new("Auctor", embellish(combine(df.orig[["100a"]],df.orig[["100d"]],empty,empty,empty,empty)),
	name=embellish(df.orig[["100a"]]), date=embellish(df.orig[["100d"]]))
df$title <- new("Titulus", embellish(combine(df.orig[["240a"]],df.orig[["245a"]],df.orig[["245b"]],empty,empty,empty)),
	uniform=embellish(df.orig[["240a"]]), proper=embellish(df.orig[["245a"]]), remainder=embellish(df.orig[["245b"]]))
df$publication <- new("Publicus", embellish(combine(df.orig[["260a"]],df.orig[["260b"]],df.orig[["260c"]],df.orig[["310a"]],df.orig[["362a"]],empty)),
	place=embellish(df.orig[["260a"]]), publisher=embellish(df.orig[["260b"]]), time=embellish(df.orig[["260c"]]), frequency=embellish(df.orig[["310a"]]),
	interval=embellish(df.orig[["362a"]]))
df$physical <- new("Physica", embellish(combine(df.orig[["300a"]],df.orig[["300b"]],df.orig[["300c"]],df.orig[["300e"]],empty,empty)),
	extent=embellish(df.orig[["300a"]]), details=embellish(df.orig[["300b"]]), dimension=embellish(df.orig[["300c"]]), accomppanied=embellish(df.orig[["300e"]]))
df$note <- new("Nota", embellish(combine(df.orig[["500a"]],df.orig[["502a"]],df.orig[["502c"]],df.orig[["502d"]],df.orig[["510a"]],df.orig[["510c"]])),
	general=embellish(df.orig[["500a"]]), dissertation=embellish(df.orig[["502a"]]), granter=embellish(df.orig[["502c"]]), year=embellish(df.orig[["502d"]]),
	source=embellish(df.orig[["510a"]]), location=embellish(df.orig[["510c"]]))
df$term <- new("Terminus", embellish(combine(df.orig[["650a"]],df.orig[["651a"]],empty,empty,empty,empty)),
	topic=embellish(df.orig[["650a"]]), geography=embellish(df.orig[["651a"]]))
df$miscellanea <- new("Miscellaneus", embellish(combine(df.orig[["710a"]],df.orig[["720a"]],df.orig[["785t"]],df.orig[["852a"]],empty,empty)),
	corporate=embellish(df.orig[["710a"]]), uncontrolled=embellish(df.orig[["720a"]]), successor=embellish_field(df.orig[["785t"]]), holder=embellish_field(df.orig[["852a"]]))

df <- df[,-1]

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
df$publication@place <- correct_misspellings(df$publication@place)

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

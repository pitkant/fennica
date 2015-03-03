library(dplyr)

source("R/AllClasses.R", encoding="UTF-8")
source("R/editing.R", encoding = "UTF-8")

print("Start collecting variables to a polished data frame")

df <- data.frame(list(row.index = 1:size_global))

df$language <- new("Lingua", embellish(combine(df.orig[["041a"]],df.orig[["041h"]])))
df$author <- new("Auctor", embellish(combine(df.orig[["100a"]],df.orig[["100d"]])),
	name=embellish(df.orig[["100a"]]), date=embellish(df.orig[["100d"]]))
df$title <- new("Titulus", embellish(combine(df.orig[["240a"]],df.orig[["245a"]],df.orig[["245b"]])),
	uniform=embellish(df.orig[["240a"]]), proper=embellish(df.orig[["245a"]]), remainder=embellish(df.orig[["245b"]]))
df$publication <- new("Publicus", embellish(combine(df.orig[["260a"]],df.orig[["260b"]],df.orig[["260c"]],df.orig[["310a"]],df.orig[["362a"]])),
	place=embellish(df.orig[["260a"]]), publisher=embellish(df.orig[["260b"]]), time=embellish(df.orig[["260c"]]), frequency=embellish(df.orig[["310a"]]),
	interval=embellish(df.orig[["362a"]]))
df$physical <- new("Physica", embellish(combine(df.orig[["300a"]],df.orig[["300b"]],df.orig[["300c"]],df.orig[["300e"]])),
	extent=embellish(df.orig[["300a"]]), details=embellish(df.orig[["300b"]]), dimension=embellish(df.orig[["300c"]]), accomppanied=embellish(df.orig[["300e"]]))
df$note <- new("Nota", embellish(combine(df.orig[["500a"]],df.orig[["502a"]],df.orig[["502c"]],df.orig[["502d"]],df.orig[["510a"]],df.orig[["510c"]])),
	general=embellish(df.orig[["500a"]]), dissertation=embellish(df.orig[["502a"]]), granter=embellish(df.orig[["502c"]]), year=embellish(df.orig[["502d"]]),
	source=embellish(df.orig[["510a"]]), location=embellish(df.orig[["510c"]]))
df$term <- new("Terminus", embellish(combine(df.orig[["650a"]],df.orig[["651a"]])),
	topic=embellish(df.orig[["650a"]]), geography=embellish(df.orig[["651a"]]))
df$miscellanea <- new("Miscellaneus", embellish(combine(df.orig[["710a"]],df.orig[["720a"]],df.orig[["785t"]],df.orig[["852a"]])),
	corporate=embellish(df.orig[["710a"]]), uncontrolled=embellish(df.orig[["720a"]]), successor=embellish_field(df.orig[["785t"]]), holder=embellish_field(df.orig[["852a"]]))

df <- df[,-1]

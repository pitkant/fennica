library(methods)

Lingua <- setClass("Lingua",
	contains="character",
	slots=list(
		finnish="logical",
		swedish="logical",
		latin="logical",
		german="logical",
		english="logical",
		french="logical",
		russian="logical",
		greek="logical",
		danish="logical",
		italian="logical",
		hebrew="logical",
		dutch="logical",
		spanish="logical",
		sami="logical",
		moderngreek="logical",
		icelandic="logical",
		arabic="logical",
		portuguese="logical",
		finnougrian="logical",
		multiple="logical",
		undetermined="logical"
	)
)

Auctor <- setClass("Auctor",
	contains="character",
	slots=list(
		name="character",
		date="character",
		name_family="character",
		name_first="character",
		name_other="character",
		date_birth="numeric",
		date_death="numeric"
	)
)

Titulus <- setClass("Titulus",
	contains="character",
	slots=list(
		uniform="character",
		proper="character",
		remainder="character"
	)
)

Publicus <- setClass("Publicus",
	contains="character",
	slots=list(
		place="character",
		publisher="character",
		time="character",
		frequency="character",
		interval="character",
		place_i="character",
		place_ii="character",
		place_iii="character",
		time_at="numeric",
		time_from="numeric",
		time_until="numeric"
	)
)

Physica <- setClass("Physica",
	contains="character",
	slots=list(
		extent="character",
		details="character",
		dimension="character",
		accomppanied="character"
	)
)

Nota <- setClass("Nota",
	contains="character",
	slots=list(
		general="character",
		dissertation="character",
		granter="character",
		year="character",
		source="character",
		location="character"
	)
)

Terminus <- setClass("Terminus",
	contains="character",
	slots=list(
		topic="character",
		geography="character"
	)
)

Miscellaneus <- setClass("Miscellaneus",
	contains="character",
	slots=list(
		corporate="character",
		uncontrolled="character",
		successor="character",
		holder="character"
	)
)

setGeneric("evalSubfields", function(x) {
	standardGeneric("evalSubfields")
})

setMethod("evalSubfields", c(x = "Lingua"), function(x) {
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
})

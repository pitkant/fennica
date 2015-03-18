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
		country="character",
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

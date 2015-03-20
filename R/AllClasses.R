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

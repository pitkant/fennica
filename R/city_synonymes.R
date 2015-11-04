#' @title city_synonymes
#' @description Use Levenshtein distance iteratively to find plausible misspellings for specific cities
#' @param unique_cities List of unique city names in the data
#' @return List of city name variants
#' @export
#' @author Niko Ilomaki \email{niko.ilomaki@@helsinki.fi}
#' @references See citation("fennica")
#' @examples \dontrun{all <- city_synonymes(c("Turku","Turkue", "Tampere", "Helsinki"}
#' @keywords utilities
city_synonymes <- function (unique_cities) {

  # Cambridge (4 pc) -> US or UK?
  basecase <- c(
	"Altdorf",
	"Amsterdam",
	"Augsburg",
	"Barcelona",
	"Basel",
	"Bergen",
	"Bern",
	"Bonn",
	"Braunschweig",
	"Budapest",
	"Dresden",
	"Edinburgh",
	"Eura",
	"Falun",
	"Firenze",
	"Forssa",
	"Frankfurt",
	"Harbor OH",
	"Heidelberg",
	"Heinola",
	"Huopalahti",
	"Houghton MI",
	"Hyvinkää",
	"Härnösand",
	"Iisalmi",
	"Imatra",
	"Isokyrö",
	"Ísafjördur",
	"Jena",
	"Joensuu",
	"Kajaani",
	"Kemi",
	"Kokemäki",
	"Kouvola",
	"Kymi",
	"Käkisalmi",
	"Lahti",
	"Laihia",
	"Laitila",
	"Lapua",
	"Leipzig",
	"Liège",
	"Loviisa",
	"Maastricht",
	"München",
	"Narva",
	"Nokia",
	"Norrköping",
	"Orivesi",
	"Parainen",
	"Parikkala",
	"Parkano",
	"Pest", # myöhemmin osa Budapestiä
	"Raahe",
	"Red Jacket MI",
	"Rooma",
	"Rovaniemi",
	"Sairala",
	"Salo",
	"Sauvo",
	"Savonlinna",
	"Seinäjoki",
	"Siena",
	"Skara",
	"Stuttgart",
	"Suomussalmi",
	"Terijoki",
	"Tornio",
	"Turenki",
	"Tuusula",
	"Tübingen",
	"Utrecht",
	"Vammala",
	"Vilna",
	"Virolahti",
	"Weimar",
	"Wien",
	"Wiesbaden",
	"York",
	"Zürich",
	"Örebro"
	)

  city.variants <- list()	

  # Standard cases
  for(x in basecase){
    message(x)
    # Retrieve the variants
    variants <- fennica::collect_misspellings(x,c(x),unique_cities) 
    # Add detected variants to the list
    city.variants[[x]] <- variants
    # Remove detected variants from the list to speed up
    unique_cities <- setdiff(unique_cities, variants)
  }

  # List known variants for specific cities
  known.variants <- list()
  known.variants[["Almena WI"]] <- c("Almena","Almena WI","Almena Wis","Almena Wisconsin")
  known.variants[["Ashtabula OH"]] <- c("Ashtabula","Ashtabula OH","Ashtabula Ohio")
  known.variants[["Astoria OR"]] <- c("Astoria","Astoria OR","Astoria Ore","Astoria Oregon")
  known.variants[["Berliini"]] <- c("Berliini","Berlin")
  known.variants[["Boston MA"]] <- c("Boston","Boston MA","Boston Mass","Boston Massachusetts")
  known.variants[["Bridgeport CT"]] <- c("Bridgeport","Bridgeport CT","Bridgeport Conn","Bridgeport Connecticut")
  known.variants[["Bronx NY"]] <- c("Bronx","Bronx NY","Bronx New York")
  known.variants[["Brooklyn NY"]] <- c("Brooklyn","Brooklyn NY","Brooklyn New York","Brooklynissa NY")
  known.variants[["Calumet MI"]] <- c("Calumet","Calumet MI","Calumet Mich","Calumet Michigan")
  known.variants[["Chicago IL"]] <- c("Chicago","Chicago IL","Chicago Ill","Chicago Illinois")
  known.variants[["Chisholm MN"]] <- c("Chisholm","Chisholm MN","Chisholm Minn","Chisholm Minnesota")
  known.variants[["Cincinnati OH"]] <- c("Cincinnati","Cincinnati OH","Cincinnati Ohio")
  known.variants[["Cleveland OH"]] <- c("Cleveland","Cleveland OH","Cleveland Ohio")
  known.variants[["Duluth MN"]] <- c("Duluth","Duluth MN","Duluth Minn","Duluth Minnesota")
  known.variants[["Espoo"]] <- c("Espoo","Esbo")
  known.variants[["Fitchburg MA"]] <- c("Fitchburg","Fitchburg MA","Fitchburg Mass","Fitchburg Massachusetts","Fitchburgissa Mass","Fichtburg Mass")
  known.variants[["Giessen"]] <- c("Giessen","Giessae","Giessae Cattorum")
  known.variants[["Göteborg"]] <- c("Göteborg","Gothenburg","Gothoburgi","Gothoburgae")
  known.variants[["Göttingen"]] <- c("Göttingen","Goettingae")
  known.variants[["Greifswald"]] <- c("Greifswald","Gryphiswaldae","Gryphiae","Gryphiswaldi")
  known.variants[["Haaparanta"]] <- c("Haaparanta","Haparanda")
  known.variants[["Hamina"]] <- c("Hamina","Haminassa","Fredrikshamn")
  known.variants[["Hampuri"]] <- c("Hampuri","Hamburg")
  known.variants[["Hancock MI"]] <- c("Hancock","Hancock MI","Hancock Mich", "Hancock Michigan","Hancockissa Mich")
  known.variants[["Hanko"]] <- c("Hanko","Hangö")
  known.variants[["Helsinki"]] <- c("Helsinki","Helsingissä","Helsingfors","Helsingforsia","Hki","Helsinki; Helsinki","Helsingissä; Helsinki","Hfors","Helsingforsisa","Helsingfors; Helsingfors","Helsingfors Helsingi")
  known.variants[["Hämeenlinna"]] <- c("Hämeenlinna","Hämeenlinnassa","Tavastehus")
  known.variants[["Ironwood MI"]] <- c("Ironwood","Ironwood MI","Ironwood Mich","Ironwood Michigan")
  known.variants[["Ishpeming MI"]] <- c("Ishpeming","Ishpeming MI","Ishpeming Mich","Ishpeming Michigan")
  known.variants[["Jyväskylä"]] <- c("Jyväskylä","Jyväskylässä")
  known.variants[["Kaleva MI"]] <- c("Kaleva","Kaleva MI","Kaleva Mich","Kaleva Michigan","Kalevassa Mich")
  known.variants[["Kaliningrad"]] <- c("Kaliningrad","Königsberg","Regiomonti Borussorum")
  known.variants[["Karjaa"]] <- c("Karjaa","Karis")
  known.variants[["Karlskrona"]] <- c("Karlskrona","Carlscrona")
  known.variants[["Kaskinen"]] <- c("Kaskinen","Kaskö")
  known.variants[["Kiel"]] <- c("Kiel","Kiliae")
  known.variants[["Kokkola"]] <- c("Kokkola","Gamlakarleby")
  known.variants[["Kotka"]] <- c("Kotka","Kotkassa")
  known.variants[["Kristiinankaupunki"]] <- c("Kristiinankaupunki","Kristinestad","Kristiina")
  known.variants[["Kruunupyy"]] <- c("Kruunupyy","Kronoby")
  known.variants[["Kuopio"]] <- c("Kuopio","Kuopiossa")
  known.variants[["Köln"]] <- c("Köln","Cologne")
  known.variants[["Kööpenhamina"]] <- c("Kööpenhamina","Köbenhavn","Copenhagen","Copenhague","Köpenhamn")
  known.variants[["Lappeenranta"]] <- c("Lappeenranta","Lappeenrannassa","Willmanstrand")
  known.variants[["Leiden"]] <- c("Leiden","Lugduni Batauorum","Lvgdvni Batavorvm","Ludguni Batavorum")
  known.variants[["Linköping"]] <- c("Linköping","Lincopiae")
  known.variants[["Lontoo"]] <- c("Lontoo","London","Londres")
  known.variants[["Lund"]] <- c("Lund","Lundae","Londini Gothorum","Londini Scanorum","Londini Goth","Lond Scanorum","Londini Scanor")
  known.variants[["Lyypekki"]] <- c("Lyypekki","Lübeck")
  known.variants[["Maarianhamina"]] <- c("Maarianhamina","Mariehamn")
  known.variants[["Magdeburg"]] <- c("Magdeburg","Magdaeburgi")
  known.variants[["Marburg"]] <- c("Marburg","Marpurgi Cattorum","Marpvrgi Cattorvm")
  known.variants[["Mikkeli"]] <- c("Mikkeli","Mikkelissä","St Mikkeli","St Michel","St Mikkelissä")
  known.variants[["Milwaukee WI"]] <- c("Milwaukee","Milwaukee WI","Milwaukee Wis","Milwaukee Wisconsin")
  known.variants[["Minneapolis MN"]] <- c("Minneapolis","Minneapolis MN","Minneapolis Minn","Minneapolis Minneasota")
  known.variants[["Moskova"]] <- c("Moskova","Moskau")
  known.variants[["Nanaimo BC"]] <- c("Nanaimo","Nanaimo BC")
  known.variants[["New York NY"]] <- c("New York","New York NY","New York New York")
  known.variants[["New York Mills MN"]] <- c("New York Mills","New York Mills MN","New York Mills Minn")
  known.variants[["Nürnberg"]] <- c("Nürnberg","Norimbergae")
  known.variants[["Oslo"]] <- c("Oslo","Kristiania","Christiania")
  known.variants[["Oulu"]] <- c("Oulu","Oulussa","Uleåborg")
  known.variants[["Pariisi"]] <- c("Pariisi","Paris")
  known.variants[["Philadelphia PA"]] <- c("Philadelphia","Philadelphia PA","Philadelphia Penn","Philadelphia Pennsylvania")
  known.variants[["Pietari"]] <- c("Pietari","Pietarissa","St Peterburg","St Petersburg","Petrograd","Sanktpeterburg","Sankt Peterburg","St Pietarbori","St Pietarborissa","Peterburis","St Petersbourg","Piotrogrod")
  known.variants[["Pietarsaari"]] <- c("Pietarsaari","Jakobstad")
  known.variants[["Pori"]] <- c("Pori","Porissa","Björneborg")
  known.variants[["Portland OR"]] <- c("Portland","Portland OR","Portland Oregon")
  known.variants[["Porvoo"]] <- c("Porvoo","Porvoossa","Borgå","Porvoo; Borgo")
  known.variants[["Port Arthur ON"]] <- c("Port Arthur","Port Arthur ON","Port Arthur Ont","Port Arthur Ontario")
  known.variants[["Pärnu"]] <- c("Pärnu","Pernaviae")
  known.variants[["Quincy MA"]] <- c("Quincy","Quincy MA","Quincy Mass","Quincy Massachusetts")
  known.variants[["Rauma"]] <- c("Rauma","Raumalla")
  known.variants[["Riika"]] <- c("Riika","Riga","Rigasa")
  known.variants[["Rock Island IL"]] <- c("Rock Island","Rock Island IL","Rock Island Ill","Rock Island Illinois")
  known.variants[["Rostock"]] <- c("Rostock","Rostochii","Rostochiae")
  known.variants[["Seattle WA"]] <- c("Seattle","Seattle WA","Seattle Wash","Seattle Washington")
  known.variants[["Sipoo"]] <- c("Sipoo","Sibbo")
  known.variants[["Smithville MN"]] <- c("Smithville","Smithville MN","Smithville Minn","Smithville Minnesota")
  known.variants[["Strängnäs"]] <- c("Strängnäs","Stregnesij","Strengnesiae")
  known.variants[["Sortavala"]] <- c("Sortavala","Sortavalassa")
  known.variants[["Superior WI"]] <- c("Superior","Superior WI","Superior Wis","Superior Wisconsin")
  known.variants[["Tallinna"]] <- c("Tallinna","Reval","Revaliae","Revelis")
  known.variants[["Tammisaari"]] <- c("Tammisaari","Ekenäs")
  known.variants[["Tampere"]] <- c("Tampere","Tampereella","Tammerfors")
  known.variants[["Tartto"]] <- c("Tartto","Tartu","Dorpati","Dorpati Livonorum","Dorpati Livonvm")
  known.variants[["Tukholma"]] <- c("Tukholma","Tukholmassa","Stockholm","Stockholmiae","Stockholmin","Stockholman","Stockholme","Holmiae","Stuckhulmisa","Stockh","Stocholmiae","Stockhomin","Tukhulmi")
  known.variants[["Turku"]] <- c("Turku","Turussa","Åbo","Aboae","Aboae Finnorum","Abogiae")
  known.variants[["Uppsala"]] <- c("Uppsala","Uppsalassa")
  known.variants[["Uusikaarlepyy"]] <- c("Uusikaarlepyy","Nykarleby")
  known.variants[["Uusikaupunki"]] <- c("Uusikaupunki","Nystad")
  known.variants[["Vaasa"]] <- c("Vaasa","Vaasassa","Nikolainkaupunki","Nikolainkaupungissa","Nikolaistad","Wasa Nikolaistad")
  known.variants[["Varsova"]] <- c("Varsova","Warsaw","Warszawa")
  known.variants[["Viipuri"]] <- c("Viipuri","Viipurissa","Viborg","Wiburgiae","Wiburisa") # huom! Tanskassakin on Viborg
  known.variants[["Västerås"]] <- c("Västerås","Arosia","Arosiensis","Westrosia")
  known.variants[["Wittenberg"]] <- c("Wittenberg","Wittenbergae")
  known.variants[["Worcester MA"]] <- c("Worcester","Worcester MA","Worcester Mass","Worcester Massachusetts")

  # Cases with multiple common variants
  for (city in names(known.variants)) {
    message(city)
    variants <- fennica::collect_misspellings(city, known.variants[[city]], unique_cities)
    # Add detected variants to the list
    city.variants[[city]] <- variants
    # Remove detected variants from the list to speed up
    unique_cities <- setdiff(unique_cities, variants)
  }

  # Convert into a synonyme table
  sn2 <- do.call("rbind", sapply(names(city.variants), function (city) {cbind(city.variants[[city]], city)}))
  colnames(sn2) <- c("synonyme", "name")

  # Remove potentially ambiguous terms
  inds <- which(sn2[, "synonyme"] %in% sn2[, "name"])
  if (length(inds) > 0) {
    sn2 <- sn2[-inds,]
  }

  sn2 <- as.data.frame(sn2)

  # write(unique_cities, file="output.tables/city_others.csv")
  sn2

}


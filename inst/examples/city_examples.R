source("../../R/city.R", encoding="UTF-8")
source("../../R/country.R", encoding="UTF-8")

unique_cities <- unique(df$city)

# -------------------------------------------------------------------------------------------------------------------------------------------------------------

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

for(x in basecase){
	unique_cities <- collect_misspellings(x,c(x),unique_cities)
}

# -------------------------------------------------------------------------------------------------------------------------------------------------------------

unique_cities <- collect_misspellings("Almena WI",c("Almena","Almena WI","Almena Wis","Almena Wisconsin"),unique_cities)
unique_cities <- collect_misspellings("Ashtabula OH",c("Ashtabula","Ashtabula OH","Ashtabula Ohio"),unique_cities)
unique_cities <- collect_misspellings("Astoria OR",c("Astoria","Astoria OR","Astoria Ore","Astoria Oregon"),unique_cities)
unique_cities <- collect_misspellings("Berliini",c("Berliini","Berlin"),unique_cities)
unique_cities <- collect_misspellings("Boston MA",c("Boston","Boston MA","Boston Mass","Boston Massachusetts"),unique_cities)
unique_cities <- collect_misspellings("Bridgeport CT",c("Bridgeport","Bridgeport CT","Bridgeport Conn","Bridgeport Connecticut"),unique_cities)
unique_cities <- collect_misspellings("Bronx NY",c("Bronx","Bronx NY","Bronx New York"),unique_cities)
unique_cities <- collect_misspellings("Brooklyn NY",c("Brooklyn","Brooklyn NY","Brooklyn New York","Brooklynissa NY"),unique_cities)
unique_cities <- collect_misspellings("Calumet MI",c("Calumet","Calumet MI","Calumet Mich","Calumet Michigan"),unique_cities)
unique_cities <- collect_misspellings("Chicago IL",c("Chicago","Chicago IL","Chicago Ill","Chicago Illinois"),unique_cities)
unique_cities <- collect_misspellings("Chisholm MN",c("Chisholm","Chisholm MN","Chisholm Minn","Chisholm Minnesota"),unique_cities)
unique_cities <- collect_misspellings("Cincinnati OH",c("Cincinnati","Cincinnati OH","Cincinnati Ohio"),unique_cities)
unique_cities <- collect_misspellings("Cleveland OH",c("Cleveland","Cleveland OH","Cleveland Ohio"),unique_cities)
unique_cities <- collect_misspellings("Duluth MN",c("Duluth","Duluth MN","Duluth Minn","Duluth Minnesota"),unique_cities)
unique_cities <- collect_misspellings("Espoo",c("Espoo","Esbo"),unique_cities)
unique_cities <- collect_misspellings("Fitchburg MA",c("Fitchburg","Fitchburg MA","Fitchburg Mass","Fitchburg Massachusetts","Fitchburgissa Mass",
	"Fichtburg Mass"),unique_cities)
unique_cities <- collect_misspellings("Giessen",c("Giessen","Giessae","Giessae Cattorum"),unique_cities)
unique_cities <- collect_misspellings("Göteborg",c("Göteborg","Gothenburg",
	"Gothoburgi","Gothoburgae"),unique_cities)
unique_cities <- collect_misspellings("Göttingen",c("Göttingen","Goettingae"),unique_cities)
unique_cities <- collect_misspellings("Greifswald",c("Greifswald","Gryphiswaldae",
	"Gryphiae","Gryphiswaldi"),unique_cities)
unique_cities <- collect_misspellings("Haaparanta",c("Haaparanta","Haparanda"),unique_cities)
unique_cities <- collect_misspellings("Hamina",c("Hamina","Haminassa","Fredrikshamn"),unique_cities)
unique_cities <- collect_misspellings("Hampuri",c("Hampuri","Hamburg"),unique_cities)
unique_cities <- collect_misspellings("Hancock MI",c("Hancock","Hancock MI","Hancock Mich", "Hancock Michigan","Hancockissa Mich"),unique_cities)
unique_cities <- collect_misspellings("Hanko",c("Hanko","Hangö"),unique_cities)
unique_cities <- collect_misspellings("Helsinki",c("Helsinki","Helsingissä","Helsingfors",
	"Helsingforsia","Hki","Helsinki; Helsinki","Helsingissä; Helsinki","Hfors","Helsingforsisa","Helsingfors; Helsingfors","Helsingfors Helsingi"),unique_cities)
unique_cities <- collect_misspellings("Hämeenlinna",c("Hämeenlinna","Hämeenlinnassa","Tavastehus"),unique_cities)
unique_cities <- collect_misspellings("Ironwood MI",c("Ironwood","Ironwood MI","Ironwood Mich","Ironwood Michigan"),unique_cities)
unique_cities <- collect_misspellings("Ishpeming MI",c("Ishpeming","Ishpeming MI","Ishpeming Mich","Ishpeming Michigan"),unique_cities)
unique_cities <- collect_misspellings("Jyväskylä",c("Jyväskylä","Jyväskylässä"),unique_cities)
unique_cities <- collect_misspellings("Kaleva MI",c("Kaleva","Kaleva MI","Kaleva Mich","Kaleva Michigan","Kalevassa Mich"),unique_cities)
unique_cities <- collect_misspellings("Kaliningrad",c("Kaliningrad","Königsberg","Regiomonti Borussorum"),unique_cities)
unique_cities <- collect_misspellings("Karjaa",c("Karjaa","Karis"),unique_cities)
unique_cities <- collect_misspellings("Karlskrona",c("Karlskrona","Carlscrona"),unique_cities)
unique_cities <- collect_misspellings("Kaskinen",c("Kaskinen","Kaskö"),unique_cities)
unique_cities <- collect_misspellings("Kiel",c("Kiel","Kiliae"),unique_cities)
unique_cities <- collect_misspellings("Kokkola",c("Kokkola","Gamlakarleby"),unique_cities)
unique_cities <- collect_misspellings("Kotka",c("Kotka","Kotkassa"),unique_cities)
unique_cities <- collect_misspellings("Kristiinankaupunki",c("Kristiinankaupunki","Kristinestad","Kristiina"),unique_cities)
unique_cities <- collect_misspellings("Kruunupyy",c("Kruunupyy","Kronoby"),unique_cities)
unique_cities <- collect_misspellings("Kuopio",c("Kuopio","Kuopiossa"),unique_cities)
unique_cities <- collect_misspellings("Köln",c("Köln","Cologne"),unique_cities)
unique_cities <- collect_misspellings("Kööpenhamina",c("Kööpenhamina","Köbenhavn","Copenhagen",
	"Copenhague","Köpenhamn"),unique_cities)
unique_cities <- collect_misspellings("Lappeenranta",c("Lappeenranta","Lappeenrannassa","Willmanstrand"),unique_cities)
unique_cities <- collect_misspellings("Leiden",c("Leiden","Lugduni Batauorum","Lvgdvni Batavorvm",
	"Ludguni Batavorum"),unique_cities)
unique_cities <- collect_misspellings("Linköping",c("Linköping","Lincopiae"),unique_cities)
unique_cities <- collect_misspellings("Lontoo",c("Lontoo","London","Londres"),unique_cities)
unique_cities <- collect_misspellings("Lund",c("Lund","Lundae","Londini Gothorum","Londini Scanorum","Londini Goth","Lond Scanorum","Londini Scanor"),unique_cities)
unique_cities <- collect_misspellings("Lyypekki",c("Lyypekki","Lübeck"),unique_cities)
unique_cities <- collect_misspellings("Maarianhamina",c("Maarianhamina","Mariehamn"),unique_cities)
unique_cities <- collect_misspellings("Magdeburg",c("Magdeburg","Magdaeburgi"),unique_cities)
unique_cities <- collect_misspellings("Marburg",c("Marburg","Marpurgi Cattorum","Marpvrgi Cattorvm"),unique_cities)
unique_cities <- collect_misspellings("Mikkeli",c("Mikkeli","Mikkelissä","St Mikkeli","St Michel","St Mikkelissä"),unique_cities)
unique_cities <- collect_misspellings("Milwaukee WI",c("Milwaukee","Milwaukee WI","Milwaukee Wis","Milwaukee Wisconsin"),unique_cities)
unique_cities <- collect_misspellings("Minneapolis MN",c("Minneapolis","Minneapolis MN","Minneapolis Minn","Minneapolis Minneasota"),unique_cities)
unique_cities <- collect_misspellings("Moskova",c("Moskova","Moskau"),unique_cities)
unique_cities <- collect_misspellings("Nanaimo BC",c("Nanaimo","Nanaimo BC"),unique_cities)
unique_cities <- collect_misspellings("New York NY",c("New York","New York NY","New York New York"),unique_cities)
unique_cities <- collect_misspellings("New York Mills MN",c("New York Mills","New York Mills MN","New York Mills Minn"),unique_cities)
unique_cities <- collect_misspellings("Nürnberg",c("Nürnberg","Norimbergae"),unique_cities)
unique_cities <- collect_misspellings("Oslo",c("Oslo","Kristiania","Christiania"),unique_cities)
unique_cities <- collect_misspellings("Oulu",c("Oulu","Oulussa","Uleåborg"),unique_cities)
unique_cities <- collect_misspellings("Pariisi",c("Pariisi","Paris"),unique_cities)
unique_cities <- collect_misspellings("Philadelphia PA",c("Philadelphia","Philadelphia PA","Philadelphia Penn","Philadelphia Pennsylvania"),unique_cities)
unique_cities <- collect_misspellings("Pietari",c("Pietari","Pietarissa","St Peterburg","St Petersburg","Petrograd",
	"Sanktpeterburg","Sankt Peterburg","St Pietarbori","St Pietarborissa","Peterburis","St Petersbourg","Piotrogrod"),unique_cities)
unique_cities <- collect_misspellings("Pietarsaari",c("Pietarsaari","Jakobstad"),unique_cities)
unique_cities <- collect_misspellings("Pori",c("Pori","Porissa","Björneborg"),unique_cities)
unique_cities <- collect_misspellings("Portland OR",c("Portland","Portland OR","Portland Oregon"),unique_cities)
unique_cities <- collect_misspellings("Porvoo",c("Porvoo","Porvoossa","Borgå",
	"Porvoo; Borgo"),unique_cities)
unique_cities <- collect_misspellings("Port Arthur ON",c("Port Arthur","Port Arthur ON","Port Arthur Ont","Port Arthur Ontario"),unique_cities)
unique_cities <- collect_misspellings("Pärnu",c("Pärnu","Pernaviae"),unique_cities)
unique_cities <- collect_misspellings("Quincy MA",c("Quincy","Quincy MA","Quincy Mass","Quincy Massachusetts"),unique_cities)
unique_cities <- collect_misspellings("Rauma",c("Rauma","Raumalla"),unique_cities)
unique_cities <- collect_misspellings("Riika",c("Riika","Riga","Rigasa"),unique_cities)
unique_cities <- collect_misspellings("Rock Island IL",c("Rock Island","Rock Island IL","Rock Island Ill","Rock Island Illinois"),unique_cities)
unique_cities <- collect_misspellings("Rostock",c("Rostock","Rostochii","Rostochiae"),unique_cities)
unique_cities <- collect_misspellings("Seattle WA",c("Seattle","Seattle WA","Seattle Wash","Seattle Washington"),unique_cities)
unique_cities <- collect_misspellings("Sipoo",c("Sipoo","Sibbo"),unique_cities)
unique_cities <- collect_misspellings("Smithville MN",c("Smithville","Smithville MN","Smithville Minn","Smithville Minnesota"),unique_cities)
unique_cities <- collect_misspellings("Strängnäs",c("Strängnäs",
	"Stregnesij","Strengnesiae"),unique_cities)
unique_cities <- collect_misspellings("Sortavala",c("Sortavala","Sortavalassa"),unique_cities)
unique_cities <- collect_misspellings("Superior WI",c("Superior","Superior WI","Superior Wis","Superior Wisconsin"),unique_cities)
unique_cities <- collect_misspellings("Tallinna",c("Tallinna","Reval","Revaliae",
	"Revelis"),unique_cities)
unique_cities <- collect_misspellings("Tammisaari",c("Tammisaari","Ekenäs"),unique_cities)
unique_cities <- collect_misspellings("Tampere",c("Tampere","Tampereella","Tammerfors"),unique_cities)
unique_cities <- collect_misspellings("Tartto",c("Tartto","Tartu","Dorpati","Dorpati Livonorum","Dorpati Livonvm"),unique_cities)
unique_cities <- collect_misspellings("Tukholma",c("Tukholma","Tukholmassa","Stockholm","Stockholmiae",
	"Stockholmin","Stockholman","Stockholme","Holmiae","Stuckhulmisa","Stockh","Stocholmiae","Stockhomin","Tukhulmi"),unique_cities)
unique_cities <- collect_misspellings("Turku",c("Turku","Turussa","Åbo","Aboae","Aboae Finnorum","Abogiae"),unique_cities)
unique_cities <- collect_misspellings("Uppsala",c("Uppsala","Uppsalassa"),unique_cities)
unique_cities <- collect_misspellings("Uusikaarlepyy",c("Uusikaarlepyy","Nykarleby"),unique_cities)
unique_cities <- collect_misspellings("Uusikaupunki",c("Uusikaupunki","Nystad"),unique_cities)
unique_cities <- collect_misspellings("Vaasa",c("Vaasa","Vaasassa","Nikolainkaupunki","Nikolainkaupungissa","Nikolaistad",
	"Wasa Nikolaistad"),unique_cities)
unique_cities <- collect_misspellings("Varsova",c("Varsova","Warsaw","Warszawa"),unique_cities)
unique_cities <- collect_misspellings("Viipuri",c("Viipuri","Viipurissa","Viborg","Wiburgiae",
	"Wiburisa"),unique_cities) # huom! Tanskassakin on Viborg
unique_cities <- collect_misspellings("Västerås",c("Västerås","Arosia","Arosiensis","Westrosia"),unique_cities)
unique_cities <- collect_misspellings("Wittenberg",c("Wittenberg","Wittenbergae"),unique_cities)
unique_cities <- collect_misspellings("Worcester MA",c("Worcester","Worcester MA","Worcester Mass","Worcester Massachusetts"),unique_cities)

write(unique_cities, file="output.tables/city_others.csv")

# -------------------------------------------------------------------------------------------------------------------------------------------------------------

for(x in basecase){
	df$city <- correct_misspellings(df$city,x)
}

df$city <- correct_misspellings(df$city,"Almena WI")
df$city <- correct_misspellings(df$city,"Altdorf")
df$city <- correct_misspellings(df$city,"Amsterdam")
df$city <- correct_misspellings(df$city,"Ashtabula OH")
df$city <- correct_misspellings(df$city,"Astoria OR")
df$city <- correct_misspellings(df$city,"Barcelona")
df$city <- correct_misspellings(df$city,"Berliini")
df$city <- correct_misspellings(df$city,"Boston MA")
df$city <- correct_misspellings(df$city,"Bridgeport CT")
df$city <- correct_misspellings(df$city,"Bronx NY")
df$city <- correct_misspellings(df$city,"Brooklyn NY")
df$city <- correct_misspellings(df$city,"Calumet MI")
df$city <- correct_misspellings(df$city,"Chicago IL")
df$city <- correct_misspellings(df$city,"Chisholm MN")
df$city <- correct_misspellings(df$city,"Cincinnati OH")
df$city <- correct_misspellings(df$city,"Cleveland OH")
df$city <- correct_misspellings(df$city,"Duluth MN")
df$city <- correct_misspellings(df$city,"Espoo")
df$city <- correct_misspellings(df$city,"Fitchburg MA")
df$city <- correct_misspellings(df$city,"Giessen")
df$city <- correct_misspellings(df$city,"Göteborg")
df$city <- correct_misspellings(df$city,"Göttingen")
df$city <- correct_misspellings(df$city,"Greifswald")
df$city <- correct_misspellings(df$city,"Haaparanta")
df$city <- correct_misspellings(df$city,"Hamina")
df$city <- correct_misspellings(df$city,"Hampuri")
df$city <- correct_misspellings(df$city,"Hancock MI")
df$city <- correct_misspellings(df$city,"Hanko")
df$city <- correct_misspellings(df$city,"Helsinki")
df$city <- correct_misspellings(df$city,"Hämeenlinna")
df$city <- correct_misspellings(df$city,"Ironwood MI")
df$city <- correct_misspellings(df$city,"Ishpeming MI")
df$city <- correct_misspellings(df$city,"Jena")
df$city <- correct_misspellings(df$city,"Jyväskylä")
df$city <- correct_misspellings(df$city,"Kaleva MI")
df$city <- correct_misspellings(df$city,"Kaliningrad")
df$city <- correct_misspellings(df$city,"Karjaa")
df$city <- correct_misspellings(df$city,"Karlskrona")
df$city <- correct_misspellings(df$city,"Kaskinen")
df$city <- correct_misspellings(df$city,"Kiel")
df$city <- correct_misspellings(df$city,"Kokkola")
df$city <- correct_misspellings(df$city,"Kotka")
df$city <- correct_misspellings(df$city,"Kouvola")
df$city <- correct_misspellings(df$city,"Kristiinankaupunki")
df$city <- correct_misspellings(df$city,"Kruunupyy")
df$city <- correct_misspellings(df$city,"Kuopio")
df$city <- correct_misspellings(df$city,"Köln")
df$city <- correct_misspellings(df$city,"Kööpenhamina")
df$city <- correct_misspellings(df$city,"Lahti")
df$city <- correct_misspellings(df$city,"Lappeenranta")
df$city <- correct_misspellings(df$city,"Leiden")
df$city <- correct_misspellings(df$city,"Linköping")
df$city <- correct_misspellings(df$city,"Lontoo")
df$city <- correct_misspellings(df$city,"Loviisa")
df$city <- correct_misspellings(df$city,"Lund")
df$city <- correct_misspellings(df$city,"Lyypekki")
df$city <- correct_misspellings(df$city,"Maarianhamina")
df$city <- correct_misspellings(df$city,"Magdeburg")
df$city <- correct_misspellings(df$city,"Marburg")
df$city <- correct_misspellings(df$city,"Mikkeli")
df$city <- correct_misspellings(df$city,"Milwaukee WI")
df$city <- correct_misspellings(df$city,"Minneapolis MN")
df$city <- correct_misspellings(df$city,"Moskova")
df$city <- correct_misspellings(df$city,"Nanaimo BC")
df$city <- correct_misspellings(df$city,"Narva")
df$city <- correct_misspellings(df$city,"New York NY")
df$city <- correct_misspellings(df$city,"New York Mills MN")
df$city <- correct_misspellings(df$city,"Oslo")
df$city <- correct_misspellings(df$city,"Oulu")
df$city <- correct_misspellings(df$city,"Pariisi")
df$city <- correct_misspellings(df$city,"Philadelphia PA")
df$city <- correct_misspellings(df$city,"Pietari")
df$city <- correct_misspellings(df$city,"Pietarsaari")
df$city <- correct_misspellings(df$city,"Pori")
df$city <- correct_misspellings(df$city,"Port Arthur ON")
df$city <- correct_misspellings(df$city,"Portland OR")
df$city <- correct_misspellings(df$city,"Porvoo")
df$city <- correct_misspellings(df$city,"Pärnu")
df$city <- correct_misspellings(df$city,"Quincy MA")
df$city <- correct_misspellings(df$city,"Rauma")
df$city <- correct_misspellings(df$city,"Riika")
df$city <- correct_misspellings(df$city,"Rock Island IL")
df$city <- correct_misspellings(df$city,"Rooma")
df$city <- correct_misspellings(df$city,"Rostock")
df$city <- correct_misspellings(df$city,"Seattle WA")
df$city <- correct_misspellings(df$city,"Sipoo")
df$city <- correct_misspellings(df$city,"Smithville MN")
df$city <- correct_misspellings(df$city,"Sortavala")
df$city <- correct_misspellings(df$city,"Strängnäs")
df$city <- correct_misspellings(df$city,"Superior WI")
df$city <- correct_misspellings(df$city,"Tallinna")
df$city <- correct_misspellings(df$city,"Tammisaari")
df$city <- correct_misspellings(df$city,"Tampere")
df$city <- correct_misspellings(df$city,"Tartto")
df$city <- correct_misspellings(df$city,"Tukholma")
df$city <- correct_misspellings(df$city,"Turenki")
df$city <- correct_misspellings(df$city,"Turku")
df$city <- correct_misspellings(df$city,"Uppsala")
df$city <- correct_misspellings(df$city,"Uusikaarlepyy")
df$city <- correct_misspellings(df$city,"Uusikaupunki")
df$city <- correct_misspellings(df$city,"Vaasa")
df$city <- correct_misspellings(df$city,"Varsova")
df$city <- correct_misspellings(df$city,"Viipuri")
df$city <- correct_misspellings(df$city,"Vilna")
df$city <- correct_misspellings(df$city,"Västerås")
df$city <- correct_misspellings(df$city,"Wittenberg")
df$city <- correct_misspellings(df$city,"Worcester MA")

df$city[df$city=="Stockholmisa ja Turusa"] <- "Tukholma" # 42
df$city[df$city=="Stockholm Upsala och Åbo"] <- "Tukholma" # 5
df$city[df$city=="Franckfurt am Mäyn und Leipzig"] <- "Frankfurt" # 3
df$city[df$city=="Stockholm och Åbo"] <- "Tukholma" # 3
df$city[df$city=="Förut tryckt i Stockholm och å nyo uplagd i Åbo"] <- "Turku" # 2
df$city[df$city=="Stockholm och Upsala"] <- "Tukholma" # 2
df$city[df$city=="Åbo och Stockholm"] <- "Turku" # 2

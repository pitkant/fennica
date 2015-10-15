unique_cities <- tau::fixEncoding(unique(df$publication_place),latin1=TRUE)

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
	unique_cities <- fennica::collect_misspellings(x,c(x),unique_cities)
}

# -------------------------------------------------------------------------------------------------------------------------------------------------------------

unique_cities <- fennica::collect_misspellings("Almena WI",c("Almena","Almena WI","Almena Wis","Almena Wisconsin"),unique_cities)
unique_cities <- fennica::collect_misspellings("Ashtabula OH",c("Ashtabula","Ashtabula OH","Ashtabula Ohio"),unique_cities)
unique_cities <- fennica::collect_misspellings("Astoria OR",c("Astoria","Astoria OR","Astoria Ore","Astoria Oregon"),unique_cities)
unique_cities <- fennica::collect_misspellings("Berliini",c("Berliini","Berlin"),unique_cities)
unique_cities <- fennica::collect_misspellings("Boston MA",c("Boston","Boston MA","Boston Mass","Boston Massachusetts"),unique_cities)
unique_cities <- fennica::collect_misspellings("Bridgeport CT",c("Bridgeport","Bridgeport CT","Bridgeport Conn","Bridgeport Connecticut"),unique_cities)
unique_cities <- fennica::collect_misspellings("Bronx NY",c("Bronx","Bronx NY","Bronx New York"),unique_cities)
unique_cities <- fennica::collect_misspellings("Brooklyn NY",c("Brooklyn","Brooklyn NY","Brooklyn New York","Brooklynissa NY"),unique_cities)
unique_cities <- fennica::collect_misspellings("Calumet MI",c("Calumet","Calumet MI","Calumet Mich","Calumet Michigan"),unique_cities)
unique_cities <- fennica::collect_misspellings("Chicago IL",c("Chicago","Chicago IL","Chicago Ill","Chicago Illinois"),unique_cities)
unique_cities <- fennica::collect_misspellings("Chisholm MN",c("Chisholm","Chisholm MN","Chisholm Minn","Chisholm Minnesota"),unique_cities)
unique_cities <- fennica::collect_misspellings("Cincinnati OH",c("Cincinnati","Cincinnati OH","Cincinnati Ohio"),unique_cities)
unique_cities <- fennica::collect_misspellings("Cleveland OH",c("Cleveland","Cleveland OH","Cleveland Ohio"),unique_cities)
unique_cities <- fennica::collect_misspellings("Duluth MN",c("Duluth","Duluth MN","Duluth Minn","Duluth Minnesota"),unique_cities)
unique_cities <- fennica::collect_misspellings("Espoo",c("Espoo","Esbo"),unique_cities)
unique_cities <- fennica::collect_misspellings("Fitchburg MA",c("Fitchburg","Fitchburg MA","Fitchburg Mass","Fitchburg Massachusetts","Fitchburgissa Mass","Fichtburg Mass"),unique_cities)
unique_cities <- fennica::collect_misspellings("Giessen",c("Giessen","Giessae","Giessae Cattorum"),unique_cities)
unique_cities <- fennica::collect_misspellings("Göteborg",c("Göteborg","Gothenburg","Gothoburgi","Gothoburgae"),unique_cities)
unique_cities <- fennica::collect_misspellings("Göttingen",c("Göttingen","Goettingae"),unique_cities)
unique_cities <- fennica::collect_misspellings("Greifswald",c("Greifswald","Gryphiswaldae","Gryphiae","Gryphiswaldi"),unique_cities)
unique_cities <- fennica::collect_misspellings("Haaparanta",c("Haaparanta","Haparanda"),unique_cities)
unique_cities <- fennica::collect_misspellings("Hamina",c("Hamina","Haminassa","Fredrikshamn"),unique_cities)
unique_cities <- fennica::collect_misspellings("Hampuri",c("Hampuri","Hamburg"),unique_cities)
unique_cities <- fennica::collect_misspellings("Hancock MI",c("Hancock","Hancock MI","Hancock Mich", "Hancock Michigan","Hancockissa Mich"),unique_cities)
unique_cities <- fennica::collect_misspellings("Hanko",c("Hanko","Hangö"),unique_cities)
unique_cities <- fennica::collect_misspellings("Helsinki",c("Helsinki","Helsingissä","Helsingfors","Helsingforsia","Hki","Helsinki; Helsinki","Helsingissä; Helsinki","Hfors","Helsingforsisa","Helsingfors; Helsingfors","Helsingfors Helsingi"),unique_cities)
unique_cities <- fennica::collect_misspellings("Hämeenlinna",c("Hämeenlinna","Hämeenlinnassa","Tavastehus"),unique_cities)
unique_cities <- fennica::collect_misspellings("Ironwood MI",c("Ironwood","Ironwood MI","Ironwood Mich","Ironwood Michigan"),unique_cities)
unique_cities <- fennica::collect_misspellings("Ishpeming MI",c("Ishpeming","Ishpeming MI","Ishpeming Mich","Ishpeming Michigan"),unique_cities)
unique_cities <- fennica::collect_misspellings("Jyväskylä",c("Jyväskylä","Jyväskylässä"),unique_cities)
unique_cities <- fennica::collect_misspellings("Kaleva MI",c("Kaleva","Kaleva MI","Kaleva Mich","Kaleva Michigan","Kalevassa Mich"),unique_cities)
unique_cities <- fennica::collect_misspellings("Kaliningrad",c("Kaliningrad","Königsberg","Regiomonti Borussorum"),unique_cities)
unique_cities <- fennica::collect_misspellings("Karjaa",c("Karjaa","Karis"),unique_cities)
unique_cities <- fennica::collect_misspellings("Karlskrona",c("Karlskrona","Carlscrona"),unique_cities)
unique_cities <- fennica::collect_misspellings("Kaskinen",c("Kaskinen","Kaskö"),unique_cities)
unique_cities <- fennica::collect_misspellings("Kiel",c("Kiel","Kiliae"),unique_cities)
unique_cities <- fennica::collect_misspellings("Kokkola",c("Kokkola","Gamlakarleby"),unique_cities)
unique_cities <- fennica::collect_misspellings("Kotka",c("Kotka","Kotkassa"),unique_cities)
unique_cities <- fennica::collect_misspellings("Kristiinankaupunki",c("Kristiinankaupunki","Kristinestad","Kristiina"),unique_cities)
unique_cities <- fennica::collect_misspellings("Kruunupyy",c("Kruunupyy","Kronoby"),unique_cities)
unique_cities <- fennica::collect_misspellings("Kuopio",c("Kuopio","Kuopiossa"),unique_cities)
unique_cities <- fennica::collect_misspellings("Köln",c("Köln","Cologne"),unique_cities)
unique_cities <- fennica::collect_misspellings("Kööpenhamina",c("Kööpenhamina","Köbenhavn","Copenhagen","Copenhague","Köpenhamn"),unique_cities)
unique_cities <- fennica::collect_misspellings("Lappeenranta",c("Lappeenranta","Lappeenrannassa","Willmanstrand"),unique_cities)
unique_cities <- fennica::collect_misspellings("Leiden",c("Leiden","Lugduni Batauorum","Lvgdvni Batavorvm","Ludguni Batavorum"),unique_cities)
unique_cities <- fennica::collect_misspellings("Linköping",c("Linköping","Lincopiae"),unique_cities)
unique_cities <- fennica::collect_misspellings("Lontoo",c("Lontoo","London","Londres"),unique_cities)
unique_cities <- fennica::collect_misspellings("Lund",c("Lund","Lundae","Londini Gothorum","Londini Scanorum","Londini Goth","Lond Scanorum","Londini Scanor"),unique_cities)
unique_cities <- fennica::collect_misspellings("Lyypekki",c("Lyypekki","Lübeck"),unique_cities)
unique_cities <- fennica::collect_misspellings("Maarianhamina",c("Maarianhamina","Mariehamn"),unique_cities)
unique_cities <- fennica::collect_misspellings("Magdeburg",c("Magdeburg","Magdaeburgi"),unique_cities)
unique_cities <- fennica::collect_misspellings("Marburg",c("Marburg","Marpurgi Cattorum","Marpvrgi Cattorvm"),unique_cities)
unique_cities <- fennica::collect_misspellings("Mikkeli",c("Mikkeli","Mikkelissä","St Mikkeli","St Michel","St Mikkelissä"),unique_cities)
unique_cities <- fennica::collect_misspellings("Milwaukee WI",c("Milwaukee","Milwaukee WI","Milwaukee Wis","Milwaukee Wisconsin"),unique_cities)
unique_cities <- fennica::collect_misspellings("Minneapolis MN",c("Minneapolis","Minneapolis MN","Minneapolis Minn","Minneapolis Minneasota"),unique_cities)
unique_cities <- fennica::collect_misspellings("Moskova",c("Moskova","Moskau"),unique_cities)
unique_cities <- fennica::collect_misspellings("Nanaimo BC",c("Nanaimo","Nanaimo BC"),unique_cities)
unique_cities <- fennica::collect_misspellings("New York NY",c("New York","New York NY","New York New York"),unique_cities)
unique_cities <- fennica::collect_misspellings("New York Mills MN",c("New York Mills","New York Mills MN","New York Mills Minn"),unique_cities)
unique_cities <- fennica::collect_misspellings("Nürnberg",c("Nürnberg","Norimbergae"),unique_cities)
unique_cities <- fennica::collect_misspellings("Oslo",c("Oslo","Kristiania","Christiania"),unique_cities)
unique_cities <- fennica::collect_misspellings("Oulu",c("Oulu","Oulussa","Uleåborg"),unique_cities)
unique_cities <- fennica::collect_misspellings("Pariisi",c("Pariisi","Paris"),unique_cities)
unique_cities <- fennica::collect_misspellings("Philadelphia PA",c("Philadelphia","Philadelphia PA","Philadelphia Penn","Philadelphia Pennsylvania"),unique_cities)
unique_cities <- fennica::collect_misspellings("Pietari",c("Pietari","Pietarissa","St Peterburg","St Petersburg","Petrograd","Sanktpeterburg","Sankt Peterburg","St Pietarbori","St Pietarborissa","Peterburis","St Petersbourg","Piotrogrod"),unique_cities)
unique_cities <- fennica::collect_misspellings("Pietarsaari",c("Pietarsaari","Jakobstad"),unique_cities)
unique_cities <- fennica::collect_misspellings("Pori",c("Pori","Porissa","Björneborg"),unique_cities)
unique_cities <- fennica::collect_misspellings("Portland OR",c("Portland","Portland OR","Portland Oregon"),unique_cities)
unique_cities <- fennica::collect_misspellings("Porvoo",c("Porvoo","Porvoossa","Borgå","Porvoo; Borgo"),unique_cities)
unique_cities <- fennica::collect_misspellings("Port Arthur ON",c("Port Arthur","Port Arthur ON","Port Arthur Ont","Port Arthur Ontario"),unique_cities)
unique_cities <- fennica::collect_misspellings("Pärnu",c("Pärnu","Pernaviae"),unique_cities)
unique_cities <- fennica::collect_misspellings("Quincy MA",c("Quincy","Quincy MA","Quincy Mass","Quincy Massachusetts"),unique_cities)
unique_cities <- fennica::collect_misspellings("Rauma",c("Rauma","Raumalla"),unique_cities)
unique_cities <- fennica::collect_misspellings("Riika",c("Riika","Riga","Rigasa"),unique_cities)
unique_cities <- fennica::collect_misspellings("Rock Island IL",c("Rock Island","Rock Island IL","Rock Island Ill","Rock Island Illinois"),unique_cities)
unique_cities <- fennica::collect_misspellings("Rostock",c("Rostock","Rostochii","Rostochiae"),unique_cities)
unique_cities <- fennica::collect_misspellings("Seattle WA",c("Seattle","Seattle WA","Seattle Wash","Seattle Washington"),unique_cities)
unique_cities <- fennica::collect_misspellings("Sipoo",c("Sipoo","Sibbo"),unique_cities)
unique_cities <- fennica::collect_misspellings("Smithville MN",c("Smithville","Smithville MN","Smithville Minn","Smithville Minnesota"),unique_cities)
unique_cities <- fennica::collect_misspellings("Strängnäs",c("Strängnäs","Stregnesij","Strengnesiae"),unique_cities)
unique_cities <- fennica::collect_misspellings("Sortavala",c("Sortavala","Sortavalassa"),unique_cities)
unique_cities <- fennica::collect_misspellings("Superior WI",c("Superior","Superior WI","Superior Wis","Superior Wisconsin"),unique_cities)
unique_cities <- fennica::collect_misspellings("Tallinna",c("Tallinna","Reval","Revaliae","Revelis"),unique_cities)
unique_cities <- fennica::collect_misspellings("Tammisaari",c("Tammisaari","Ekenäs"),unique_cities)
unique_cities <- fennica::collect_misspellings("Tampere",c("Tampere","Tampereella","Tammerfors"),unique_cities)
unique_cities <- fennica::collect_misspellings("Tartto",c("Tartto","Tartu","Dorpati","Dorpati Livonorum","Dorpati Livonvm"),unique_cities)
unique_cities <- fennica::collect_misspellings("Tukholma",c("Tukholma","Tukholmassa","Stockholm","Stockholmiae","Stockholmin","Stockholman","Stockholme","Holmiae","Stuckhulmisa","Stockh","Stocholmiae","Stockhomin","Tukhulmi"),unique_cities)
unique_cities <- fennica::collect_misspellings("Turku",c("Turku","Turussa","Åbo","Aboae","Aboae Finnorum","Abogiae"),unique_cities)
unique_cities <- fennica::collect_misspellings("Uppsala",c("Uppsala","Uppsalassa"),unique_cities)
unique_cities <- fennica::collect_misspellings("Uusikaarlepyy",c("Uusikaarlepyy","Nykarleby"),unique_cities)
unique_cities <- fennica::collect_misspellings("Uusikaupunki",c("Uusikaupunki","Nystad"),unique_cities)
unique_cities <- fennica::collect_misspellings("Vaasa",c("Vaasa","Vaasassa","Nikolainkaupunki","Nikolainkaupungissa","Nikolaistad","Wasa Nikolaistad"),unique_cities)
unique_cities <- fennica::collect_misspellings("Varsova",c("Varsova","Warsaw","Warszawa"),unique_cities)
unique_cities <- fennica::collect_misspellings("Viipuri",c("Viipuri","Viipurissa","Viborg","Wiburgiae","Wiburisa"),unique_cities) # huom! Tanskassakin on Viborg
unique_cities <- fennica::collect_misspellings("Västerås",c("Västerås","Arosia","Arosiensis","Westrosia"),unique_cities)
unique_cities <- fennica::collect_misspellings("Wittenberg",c("Wittenberg","Wittenbergae"),unique_cities)
unique_cities <- fennica::collect_misspellings("Worcester MA",c("Worcester","Worcester MA","Worcester Mass","Worcester Massachusetts"),unique_cities)

write(unique_cities, file="output.tables/city_others.csv")

# -------------------------------------------------------------------------------------------------------------------------------------------------------------

for(x in basecase){
	df$publication_place <- fennica::correct_misspellings(df$publication_place,x)
}

df$publication_place <- fennica::correct_misspellings(df$publication_place,"Almena WI")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Altdorf")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Amsterdam")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Ashtabula OH")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Astoria OR")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Barcelona")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Berliini")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Boston MA")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Bridgeport CT")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Bronx NY")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Brooklyn NY")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Calumet MI")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Chicago IL")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Chisholm MN")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Cincinnati OH")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Cleveland OH")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Duluth MN")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Espoo")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Fitchburg MA")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Giessen")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Göteborg")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Göttingen")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Greifswald")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Haaparanta")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Hamina")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Hampuri")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Hancock MI")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Hanko")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Helsinki")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Hämeenlinna")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Ironwood MI")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Ishpeming MI")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Jena")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Jyväskylä")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Kaleva MI")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Kaliningrad")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Karjaa")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Karlskrona")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Kaskinen")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Kiel")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Kokkola")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Kotka")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Kouvola")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Kristiinankaupunki")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Kruunupyy")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Kuopio")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Köln")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Kööpenhamina")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Lahti")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Lappeenranta")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Leiden")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Linköping")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Lontoo")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Loviisa")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Lund")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Lyypekki")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Maarianhamina")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Magdeburg")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Marburg")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Mikkeli")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Milwaukee WI")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Minneapolis MN")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Moskova")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Nanaimo BC")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Narva")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"New York NY")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"New York Mills MN")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Oslo")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Oulu")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Pariisi")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Philadelphia PA")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Pietari")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Pietarsaari")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Pori")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Port Arthur ON")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Portland OR")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Porvoo")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Pärnu")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Quincy MA")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Rauma")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Riika")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Rock Island IL")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Rooma")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Rostock")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Seattle WA")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Sipoo")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Smithville MN")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Sortavala")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Strängnäs")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Superior WI")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Tallinna")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Tammisaari")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Tampere")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Tartto")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Tukholma")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Turenki")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Turku")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Uppsala")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Uusikaarlepyy")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Uusikaupunki")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Vaasa")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Varsova")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Viipuri")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Vilna")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Västerås")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Wittenberg")
df$publication_place <- fennica::correct_misspellings(df$publication_place,"Worcester MA")

df$publication_place[df$publication_place=="Stockholmisa ja Turusa"] <- "Tukholma" # 42
df$publication_place[df$publication_place=="Stockholm Upsala och Åbo"] <- "Tukholma" # 5
df$publication_place[df$publication_place=="Franckfurt am Mäyn und Leipzig"] <- "Frankfurt" # 3
df$publication_place[df$publication_place=="Stockholm och Åbo"] <- "Tukholma" # 3
df$publication_place[df$publication_place=="Förut tryckt i Stockholm och å nyo uplagd i Åbo"] <- "Turku" # 2
df$publication_place[df$publication_place=="Stockholm och Upsala"] <- "Tukholma" # 2
df$publication_place[df$publication_place=="Åbo och Stockholm"] <- "Turku" # 2

# Vol number and count fields could not be extracted from physical_extent field in Fennica - remove
if ("volcount" %in% names(df.preprocessed)) {
  df.preprocessed$volcount <- NULL
}
if ("volnumber" %in% names(df.preprocessed)) {
  df.preprocessed$volnumber <- NULL
}


# Harmonize some publication place names manually
place <- df.preprocessed$publication_place

df.preprocessed$publication_place <- gsub("New York NY", "New York", df.preprocessed$publication_place)
df.preprocessed$publication_place <- gsub("Philadelphia PA", "Philadelphia", df.preprocessed$publication_place)

# Translations
df.preprocessed$publication_place <- gsub("Billnäs", "Karjaa", df.preprocessed$publication_place)

# Missing geoc - TODO manual table to augment the data
#Hancock MI            217
#Fitchburg MA          140
#Ashtabula OH           51
#Kaleva MI              50
#Duluth MN              42
#Calumet MI             37
#Port Arthur ON         28
#Astoria OR             25
#Superior WI            14
#Ironwood MI            13
#New York Mills MN      10
#Worcester MA            8
#Quincy MA               7
#Ishpeming MI            7
#Visingsborg             5
#Jönnköping              5
#Almena WI               5
#Seattle WA              4
#Sääksmäki               3
#Kauvatsa                3
#Haunia                  3
#Cincinnati OH           3
#Tyrvää                  2
#Smithville MN           2
#Red Jacket MI           2
#New Haven MA            2
#Minneapolis MN          2
#Leibzig                 2
#Houghton MI             2
#Harbor OH               2
#Freiburg im Breisgau    2
#Ely MI                  2
#Cleveland OH            2
#Chisholm MN             2
#Watton MI               1
#Virginia MN             1
#Vammala                 1
#Turtle Lake WI          1
#Tsingshi                1
#Tervonsalmi             1
#Sudbury ON              1
#St Louis Kaunti MI      1
#Sarvilahti              1
#Sandstone MI            1
#Portland OR             1
#Pinjainen               1
#Nanaimo BC              1
#Milwaukee WI            1
#Laihiala                1
#Kivennapa               1
#Kaukaa                  1
#Kaprio                  1
#Kallislahti             1
#Jacobson MI             1
#Inkeri                  1
#Impilahti               1
#Hvitträsk               1
#Heinäjoki               1
#Grand Rapids MI         1
#Eveleth MI              1
#Clear Creek UT          1
#Carlstad                1
#Billnäs                 1
#Alfend                  1


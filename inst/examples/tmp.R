library(dplyr)
library(ggmap)
library(ggplot2)
library(gisfin)
source("funcs.R")

theme_set(get_theme_map())
mapdata <- filter(df0, catalog == "Fennica") %>%
      group_by(publication_decade, publication_place, latitude, longitude) %>%
      summarise(n = n())

mapdata$size <- mapdata$n
mapdata$highlight <- rep("black", nrow(mapdata))
mapdata$highlight[mapdata$publication_place %in% c("Turku")] <- "red"
mapdata$highlight <- factor(mapdata$highlight)

#---------------------------------------

region <- "Europe.north"
mymap <- get_map(location=geobox(region), color = "bw", source="google",  maptype="terrain")


print("Initialize plot")
p0 <- ggmap(mymap) + theme(legend.position="none")

pics <- list()
for (i in c(1650, 1710, 1760, 1800)) {
  
    # Plot map
    p <- p0

    # Pick the investigated period (sliding window)
    # Sum up the years within this sliding window for each element    	    
    dfw <- subset(mapdata, publication_decade == i) %>%
    	   	       group_by(latitude, longitude, highlight) %>%
		       summarize(n = sum(size))

    if (nrow(dfw) > 0) {
      p <- p0 +
      	geom_point(data = dfw,
      	  aes(x = longitude, y = latitude,
	      size = 20*log10(1+n),
	      color = highlight)) +
	      #color = highlight), alpha = 0.8) +	      
	  ggtitle(i) +
	  scale_size(range = c(2, 20)) +
	  scale_color_manual(values = c("black", "red"))	  
    }
    
  pics[[as.character(i)]] <- p

}

library(gridExtra)
grid.arrange(pics[[1]], pics[[2]], pics[[3]], pics[[4]], nrow = 1)




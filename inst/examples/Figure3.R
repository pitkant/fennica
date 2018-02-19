
library(ggplot2)
library(dplyr)
library(Cairo)
library(bibliographica)
theme_set(theme_bw(22))
pics <- list()
for (catal in unique(df0$catalog)) {
  df2 <- df0 %>% filter(catalog == catal) %>% 
                 group_by(publication_decade, gatherings) %>% 
		 summarise(paper2 = sum(paper, na.rm = TRUE)/1e6, n = n()) 
  df2$paper <- df2$paper2; df2$paper2 <- NULL # Rename
  df2 <- filter(df2, gatherings %in% setdiff(names(which(table(df2$gatherings) >= 20)), "NA"))
  df2$highlight <- rep("Other", nrow(df2))
  df2$highlight[df2$gatherings == "8vo"] <- "Octavo"
  df2$highlight <- factor(df2$highlight)

  df2$gatherings_abbr <- capitalize(map_gatherings(df2$gatherings, from = "Standard", to = "Name"))

  p <- ggplot(df2, aes(y = paper,
                       x = publication_decade,
		       shape = gatherings_abbr
		       ))		       
  p <- p + geom_point(size = 3)
  p <- p + geom_smooth(method = "loess", size = 1,
             aes(color = highlight, 
	          fill = highlight, 
		  linetype = gatherings_abbr,
		  group = gatherings_abbr), color = "black")
  p <- p + scale_color_manual(values = c("black", "lightgray"))
  p <- p + scale_fill_manual(values = c("black", "lightgray"))  	 
  p <- p + xlab("Vuosi")
  p <- p + ylab("Paperinkulutus (miljoonia arkkeja)")
  p <- p + guides(linetype = guide_legend(keywidth = 5, title = "Koko", nrow = 2, title.position = "top"),
       	             shape = guide_legend(keywidth = 5, title = "Koko", nrow = 2, title.position = "top"),
		      fill = guide_legend(title = "Korostus", nrow = 2, title.position = "top"),
		     color = guide_legend(title = "Korostus", nrow = 2, title.position = "top"))
  p <- p + ylim(c(0, max(df2$paper, na.rm = TRUE)))
  p <- p + ggtitle(catal)
  p <- p + theme(plot.title = element_text(hjust = 0))
  p <- p + theme(legend.position = "bottom")
  pics[[catal]] <- p
}


library(cowplot)
# https://cran.r-project.org/web/packages/cowplot/vignettes/shared_legends.html

pics[[1]] <- pics[[1]] + xlab("")
prow <- plot_grid( 
           pics[[1]] + theme(legend.position="none"),
           pics[[2]] + theme(legend.position="none"),
           align = 'vh',
           hjust = -1.1,
           vjust = 3,
	   label_size = 18,
           nrow = 2
           )
# extract the legend from one of the plots
# (clearly the whole thing only makes sense if all plots
# have the same legend, so we can arbitrarily pick one.)
legend <- get_legend(p)

# add the legend to the row we made earlier. Give it one-third of the width
# of one plot (via rel_widths).
p <- plot_grid( prow, legend, rel_heights = c(1, .1), ncol = 1)

#jpeg("Fig3.jpeg")
print(p)
ggplot2::ggsave("Fig3.pdf", width=12, height=15, device = "pdf", dpi = 300, onefile = FALSE)
#dev.off()

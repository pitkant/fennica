df <- readRDS("df.Rds")

inds <- grep("\\.\\.\\.", df$title)

# library(bibliographica)
library(dplyr)

# ----------------------------------

dfs <- df[inds, c("publication_year", "title")]
dfs <- dfs %>% arrange(publication_year)

write.table(dfs, file = "~/tmp/dot_titles_fennica.csv", sep = "\t", row.names = F, quote = F)

# ------------------------

dfs <- subset(df, publication_year >= 1698 & publication_year <= 1702) 
dfs <- dfs %>% arrange(publication_year)
dfs <- dfs[, -grep("language", names(dfs))]
write.table(dfs, file = "~/tmp/1698_1702_fennica.csv", sep = "\t", row.names = F, quote = F)

# -------------------------------------------


df$title_dots <- grepl("\\.\\.+", df$title)
df$title_length <- nchar(as.character(df$title))

dfs <- df %>% group_by(publication_decade) %>%
              summarise(dots = mean(title_dots, na.rm = TRUE))

library(ggplot2)
p <- ggplot(dfs, aes(x = publication_decade, y = 100 * dots)) +
       geom_bar(stat = "identity") +
       ylab("Fraction (%)") +
       ggtitle("Fraction of abbreviated titles")
pdf("~/tmp/abbreviated.pdf")
print(p)
dev.off()


# ---------------------

dfs1 <- df %>% filter(title_dots == TRUE) %>%
              group_by(publication_decade) %>%
              summarise(length = mean(title_length, na.rm = TRUE))

dfs2 <- df %>% filter(title_dots == FALSE) %>%
              group_by(publication_decade) %>%
              summarise(length = mean(title_length, na.rm = TRUE))

d <- sort(unique(df$publication_decade))
dfs1 <- dfs1[match(d, dfs1$publication_decade),]
dfs2 <- dfs2[match(d, dfs2$publication_decade),]
dfs <- dfs1
dfs$tmp <- dfs2$length
names(dfs) <- c("publication_decade", "nchar_abbrv", "nchar_other")
library(reshape2)
dfm <- melt(dfs, id = "publication_decade")
dfm <- subset(dfm, !is.na(value))

p <- ggplot(dfm, aes(x = publication_decade, y = value)) +
       geom_point(aes(color = variable))

pdf("~/tmp/abbreviated2.pdf", width=10, height=5)
print(p)
dev.off()

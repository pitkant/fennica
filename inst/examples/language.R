# Define the field to harmonize
field <- "language"

# Harmonize the raw data
x <- fennica::polish_languages(df.orig[[field]])

# Collect the results into a data.frame
df.harmonized <- data.frame(original_row = df.orig$original_row, x)    

# Store the title field data
# FIXME: convert to feather or plain CSV
data.file <- paste0(field, ".Rds")
saveRDS(df.harmonized, file = data.file)

# ------------------------------------------------------------

# Generate data summaries

message("Undefined language")
# Remove "und" from the list ("Undetermined")
f <- system.file("extdata/language_abbreviations.csv", package = "fennica")
abrv <- read_mapping(f, include.lowercase = T, self.match = T, ignore.empty = FALSE, mode = "table", sep = "\t")

# Unique languages that occur in the data
lang <- tolower(df.orig$language)
lang <- unique(lang[!is.na(lang)])
lang <- unlist(strsplit(lang, ";"), use.names = FALSE)
lang <- unique(lang)
lang <- lang[!grepl("^[0-9]$", lang)] # Remove numerics

# Remove the known ones (und is Undetermined)
known.abbreviations <- setdiff(abrv$synonyme, "und") # und = Undetermined
discarded.lang <- c("*", ".", "^,", "", "-", "\\\\?", "&")
unknown.lang <- lang[!lang %in% c(known.abbreviations, discarded.lang)]

message("Write unknown languages")
if ( length(unknown.lang) > 0 ) {

    ltab <- table(df.orig$language)
    
    # Count occurrences for each unknown lang
    # TODO should be easy to speed up by considering unique entries only
    # and them summing up their stats
    # Identify hits 0/1
    
    u <- sapply(unknown.lang, function (ul) grepl(paste("^", ul, "$", sep = ""), names(ltab))) |
      	 sapply(unknown.lang, function (ul) grepl(paste("^", ul, ";", sep = ""), names(ltab))) |
      	 sapply(unknown.lang, function (ul) grepl(paste(";", ul, ";", sep = ""), names(ltab))) |
      	 sapply(unknown.lang, function (ul) grepl(paste(";", ul, "$", sep = ""), names(ltab)))

    # Multiply by counts of each case 
    u <- apply(u, 2, function (x) {x * ltab})	 

    # Sum up the occurrence counts for each unknown language
    u <- colSums(u)
    u <- u[u > 0]    
    u <- rev(sort(u))
    tab <- cbind(term = names(u), n = unname(u))
    tmp <- write.csv(tab,
	     file = paste(output.folder, "language_discarded.csv", sep = ""),
	     quote = F, row.names = F)
	     
} else {
  
    write.csv("", file = paste(output.folder, "language_discarded.csv", sep = ""))
    
}

message("Accepted languages")
known.lang <- lang[lang %in% known.abbreviations]
tmp <- write_xtable(map(known.lang, abrv), paste(output.folder, field, "_accepted.csv", sep = ""), count = TRUE)

message("Language conversions")
tab <- cbind(original = df.orig[[field]], polished = df.harmonized[[field]])
tmp <- write_xtable(tab, paste(output.folder, field, "_conversions.csv", sep = ""), count = TRUE)

# ------------------------------------------------------------

# Generate markdown summary in title.md
df <- readRDS(data.file)
tmp <- knit(input = paste(field, ".Rmd", sep = ""), 
            output = paste(field, ".md", sep = ""))



#df.tmp <- bibliographica::polish_physical_extent(df.orig[[field]], verbose = TRUE)
rm.dim.file <- system.file("extdata/remove_dimension.csv", package = "bibliographica")    
df.tmp <- polish_physical_extent(df.orig[[field]], verbose = TRUE, rm.dim.file = rm.dim.file)

# Vol number and count fields could not be extracted from physical_extent field in Fennica - remove
df.tmp$volcount <- NULL
df.tmp$volnumber <- NULL

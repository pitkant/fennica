# Generic cleanup for the publisher field
tab <- polish_publisher(df.orig[[field]])

# Collect results to data frame
df.tmp <- data.frame(publisher = tab)


tmp <- polish_publication_frequency(df.orig[[field]])

# Add to data.frame
df.tmp <- data.frame(
      publication_frequency_annual = tmp$annual,
      publication_frequency_text   = tmp$freq)    
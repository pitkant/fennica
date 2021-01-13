#    # Polish the given field
#    df.tmp <- polish_field(df.orig, df.preprocessed, field, verbose = FALSE,
#                           languages = languages)

df.tmp <- mark_dissertations(df.orig[[field]])
     

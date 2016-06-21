# Summarize the data and discarded entries
tmp <- generate_summary_tables(df.preprocessed, df.orig, output.folder)
sf <- generate_summaryfiles(df.preprocessed, author = author, output.folder = output.folder, ntop = ntop)




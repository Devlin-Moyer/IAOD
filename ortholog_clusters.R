# ortholog_clusters.R
# takes all of the orthologous pairs produced by ortholog_finding and turns 
# them into a file where each line is a list of orthologous introns

suppressMessages(library("igraph"))

# print something so we know the script has started
cat("Clustering orthologous introns.\n")
# print the length of time it took to run this once finished
cat("It took",
  system.time(
    # print list of strings separated by newline characters
    cat(
      # unlist so that we can cat together with newline delimeters
      unlist(
        # collapse the list of lists of orthologous intron IDs into a list of
        # strings containing tab-delimited lists of orthologous intron IDs
        lapply(
          # get a named list of the components
          groups(
            # get list of all strongly-connected components of the graph- each
            # component should be a group of orthologous introns. The component
            # will be strongly-connected if every node within it is connected
            # to every other node by a path, which is a way to ensure that
            # the blast results are properly reciprocal
            components(
              # read in the dataframe of all orthologous pairs as an edge list
              # of a directed graph (direction will allow us to determine 
              # whether we got reciprocal blast hits or not)
              graph_from_data_frame(
                # t() returns a matrix and we need a dataframe
                as.data.frame(
                  # transpose the dataframe so that the rows are orthologous
                  # pairs, instead of columns
                  t(
                    # coerce to data.frame
                    as.data.frame(
                       # turn list of lists of vectors into list of vectors
                       lapply(
                         # split lines from file on tabs
                         lapply(
                           # combine all intron ortholog files into a
                           # comprehensive list
                           system2(
                             "cat",
                             "ortholog_lists/*",
                             #"test.tsv",
                             stdout = TRUE
                           ),
                           strsplit, "\t"
                         ),
                       "[[", 1
                       )
                     )
                  )
                ),
              ), mode = "strong" # see above for justification of strong
            )
          ),
          paste, collapse = "\t"
        ),
      ),
      # turn a list into a print-ready string where each list element become a
      # line in the output file
      file = "extra_clusters.txt", sep = "\n"
    )
  )[3], "seconds to cluster the orthologs.\n"
)

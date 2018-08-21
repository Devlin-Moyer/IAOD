# ortholog_finding.R
# finds orthologs between a pair of genes

library("RSQLite")
library("biomaRt")
library("parallel")
# do not need this package unless testing on one thread
# outputs a lot of messages as it loads- do not care what any of them say
#suppressMessages(library("Biostrings"))

# biomaRt-related functions ###################################################

# convert a binomial name into a biomart attribute name
get_attribute <- function(tax_name, type) {
  # there is an annoyingly minor difference between the attribute names in
  # the "default" and "variant" biomarts
  thing <- ifelse(
    type == "default",
    "homolog_ensembl_gene",
    "eg_homolog_ensembl_gene"
  )
  names <- strsplit(tax_name, "_")[[1]]
  attribute <- paste(
    paste(tolower(substr(names[1], 0, 1)), names[2], sep = ""),
    thing,
    sep = "_"
  )
  return(attribute)
}

# turn a binomial name into a biomart dataset name
get_dataset <- function(tax_name, type) {
  # this is the only difference between dataset names in different marts
  thing <- ifelse(type == "default", "gene_ensembl", "eg_gene")
  names <- strsplit(tax_name, "_")[[1]]
  dataset <- paste(
    paste(tolower(substr(names[1], 0, 1)), names[2], sep = ""),
    thing,
    sep = "_"
  )
  return(dataset)
}

# get gene ids for orthologs of a list of gene ids
run_biomaRt_query <- function(tax_name_1, tax_name_2, gene_ids, type) {
  # make host and mart names assuming a variant biomaRt
  host_name <- paste(type, "ensembl.org", sep = ".")
  mart_name <- paste(type, "mart", sep = "_")
  # if the type is default, convert host and mart names to defaults
  host_name <- ifelse(type == "default", "ensembl.org", host_name)
  mart_name <- ifelse(type == "default", "ENSEMBL_MART_ENSEMBL", mart_name)
  gene_orthologs <- getBM(
    attributes = c("ensembl_gene_id", get_attribute(tax_name_2, type)),
    filters = "ensembl_gene_id",
    values = gene_ids,
    mart = useMart(
      mart_name,
      host = host_name,
      dataset = get_dataset(tax_name_1, type)
    )
  )
  return(gene_orthologs)
}

# SQL functions ###############################################################

# get a list of all the gene IDs in a particular genome assembly
get_gene_ids <- function(genome, conn) {
  query <- dbSendQuery(
    conn,
    paste("SELECT DISTINCT gene_id FROM `", genome, "`", sep = "")
  )
  gene_ids <- dbFetch(query, n = -1)
  dbClearResult(query)
  return(gene_ids)
}

# get intron IDs associated with a particular gene id
get_intron_ids <- function(gene_id, genome, conn) {
  query <- dbSendQuery(
    conn,
    paste(
      "SELECT intron_id FROM `", genome, '` WHERE gene_id = "', gene_id, '"',
      sep = ""
    )
  )
  intron_ids <- dbFetch(query, n = -1)
  dbClearResult(query)
  return(intron_ids)
}

# get and concatenate sequences from a given intron
get_seqs <- function(intron_id, genome, conn) {
  query <- dbSendQuery(
    conn, paste(
      "SELECT sequence FROM `", genome, "`",
      ' WHERE intron_id = "', intron_id, '"',
      sep = ""
    )
  )
  sequence <- dbFetch(query, n = -1)
  dbClearResult(query)
  return(sequence)
}

# functions for finding intron orthologs given a pair of gene ids #############

# just get a pairwise alignment score for two intron sequences
compare_sequences <- function(intron_id_1, intron_id_2, seq_df) {
  seq_1 <- seq_df[which(seq_df$intron_id == intron_id_1),"seq"][[1]]$seq
  seq_2 <- seq_df[which(seq_df$intron_id == intron_id_2),"seq"][[1]]$seq
  similarity <- pairwiseAlignment(seq_1, seq_2, scoreOnly = TRUE)
  return(c(intron_id_1, intron_id_2, similarity))
}

# given a single intron ID and a list of other intron IDs, compare the single
# ID to every ID in the list, and return the highest scoring pair
find_best_pair <- function(intron_id, id_list, seq_df, output_file) {
  scored_pairs <- lapply(
    id_list,
    compare_sequences,
    intron_id_2 = intron_id,
    seq_df = seq_df
  )
  # the inner lapply returns a list of 1-item vectors that needs unlisting
  max_score <- as.numeric(max(unlist(lapply(scored_pairs, "[[", 3))))
  # if the most similar pair of introns is not very similar, then one gene
  # probably just has extra introns and/or exons, and there are no orthologs
  if (max_score > -100) {
    orthologous_pairs <- scored_pairs[which(
      unlist(lapply(scored_pairs, function(x) x[[3]] == max_score))
    )]
    return(orthologous_pairs)
  } else {
    return(c(NULL, NULL, NULL))
  }
}

# find orthologous intron pairs between two orthologous genes
compare_genes <- function(gene_ids, genome_1, genome_2, output_file) {
  cat(
    "Comparing genes ", gene_ids[[1]], " and ", gene_ids[[2]], ".\n", sep = ""
  )
  # start by creating a dataframe for looking up all of the intron sequences
  # in both genes so that the sequences for each intron only need to be looked
  # up from the SQLite database once
  conn <- dbConnect(SQLite(), dbname = "seq.db")
  seq_df_1 <- data.frame(stringsAsFactors = FALSE,
    intron_id = get_intron_ids(gene_ids[[1]], genome_1, conn)
  )
  seq_df_1$seq <- lapply(
    seq_df_1$intron_id, get_seqs, genome = genome_1, conn = conn
  )
  seq_df_2 <- data.frame(stringsAsFactors = FALSE,
    intron_id = get_intron_ids(gene_ids[[2]], genome_2, conn)
  )
  seq_df_2$seq <- lapply(
    seq_df_2$intron_id, get_seqs, genome = genome_2, conn = conn
  )
  seq_df <- rbind(seq_df_1, seq_df_2)
  dbDisconnect(conn)
  
  # then use the intron id column from one dataframe as the id list and apply
  # over the other one to find all intron orthologs between the two genes
  a <- lapply(
    seq_df_1$intron_id,
    find_best_pair,
    id_list = seq_df_2$intron_id,
    seq_df = seq_df
  )
  # make sure the highest-scoring pairs of introns are still the highest-
  # scoring pairs of introns if you switch the order in which you align them to
  # each other
  b <- lapply(
    seq_df_2$intron_id,
    find_best_pair,
    id_list = seq_df_1$intron_id,
    seq_df = seq_df
  )
  a <- a[-which(is.null(a))]
  b <- b[-which(is.null(b))]
  # need to make sure neither is length 0, which will happen if there are no
  # orthologous introns between the two genes
  if ((length(a) != 0) && (length(b) != 0)) {
    # merge does an inner join by default, which is exactly what we want
    cat(merge(a, b, by.y = c(2,1)), file = output_file, append = TRUE)
  }
}

###############################################################################

# get command-line arguments into helpfully named vaeiables
args <- commandArgs(trailingOnly = TRUE)
type <- args[1]
genome_1 <- args[2]
tax_name_1 <- args[3]
genome_2 <- args[4]
tax_name_2 <- args[5]

# print something informative
cat(
  "Finding orthologs between ",
  tax_name_1, " (", genome_1, ") and ", tax_name_2, " (", genome_2, ") using ",
  type, " biomart.\n",
  sep = ""
)

# make an output file name
output_file <- paste(
  "ortholog_lists/", genome_1, "_", genome_2, "_intron_orthologs.tsv",
  sep = ""
)
# since we write within an lapplied function, we must append, so we must ensure
# that we start with an empty file
if (file.exists(output_file)) {
  x <- file.remove(output_file)
}

# just have a nice substitution instead of pasting together a new string before
# we check for a gene ortholog file from a previous biomaRt query for this pair
# of species
input_file <- gsub("intron", "gene", output_file)
gene_orthologs <- data.frame()
if (file.exists(input_file)) {
  cat("Reading orthologous genes from file.\n")
  gene_orthologs <- read.delim(input_file)
} else {
  # get gene ids for a genome then get a list of orthologs for those gene ids
  cat("Running biomaRt query to get gene-level orthologs.\n")
  conn <- dbConnect(SQLite(), dbname = "seq.db")
  gene_ids <- get_gene_ids(genome_1, conn)
  dbDisconnect(conn)
  # since not all genes will have an ortholog in the second genome, this will
  # return rows with a blank in the second column, which need to be removed
  bad_gene_orthologs <- run_biomaRt_query(
    tax_name_1, tax_name_2, gene_ids, type
  )
  gene_orthologs <- bad_gene_orthologs[bad_gene_orthologs[2] != "",]
  # print this list out so that we only have to find it once for each pair
  sink(file = gsub("intron", "gene", output_file))
  write.table(gene_orthologs, quote = FALSE, sep = "\t")
  sink()
}

# set up a cluster of 20 threads to run everything in parallel
core_number <- detectCores() # should always be 20, but just in case
c1 <- makeCluster(core_number)

# before we run the parApply function, we need to make all the variables and
# functions it and needs available to the cluster
clusterExport(c1, c("gene_orthologs", "genome_1", "genome_2", "output_file",
  "find_best_pair", "get_intron_ids", "get_seqs", "compare_sequences",
  "gene_orthologs"
))
# we also need to make all the packages used in the cluster available
invisible(clusterEvalQ(c1, suppressMessages(library("RSQLite"))))
invisible(clusterEvalQ(c1, suppressMessages(library("Biostrings"))))

# each row in the dataframe should be a pair of gene ids; we don't need to
# capture any output because we print the intron orthologs as we find them
parApply(
  c1, gene_orthologs, 1, compare_genes,
  genome_1 = genome_1, genome_2 = genome_2, output_file = output_file
)

# stop the cluster before we exit the script because that's Good Practice (TM)
stopCluster(c1)

###############################################################################

# this section does not run anything in parallel so that you can get helpful
# output for debugging; trying to have all 20 cores write to one output file
# in parallel generates a largely useless and illegibile mess
#apply(
#  gene_orthologs, 1, compare_genes, genome_1 = genome_1, genome_2 = genome_2,
#  output_file = output_file
#)

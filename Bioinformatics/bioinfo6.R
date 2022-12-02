rm(list=ls())
mito_fasta = read.fasta('NC_012920.fasta')
mito_seq <- mito_fasta$NC_012920.1
print(length(mito_seq))

source('bioinfo.R')


newseq = create_complement(mito_seq)

nucleo_content(newseq)



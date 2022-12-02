mito_fasta = read.fasta('NC_012920.fasta')
mito_seq <- mito_fasta$NC_012920.1

#NO CHANGE PLEASE
find_codon = function(seq,codon,rf) {
  l=length(seq)-2
  position=NULL
  for (i in rf:l) {
    if (i%%3==rf && paste(seq[i],seq[i+1],seq[i+2],sep="")==codon) { #neu de 2 condition khac nhau, kieu paste... to a new variable, roi compare that variable to codon, no se ra ket qua cua 3 i
      position = append(position,i)
    }
  }
  cat(position)
}

find_codon(mito_seq,'atg',1)




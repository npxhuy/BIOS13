mito_fasta = read.fasta('NC_012920.fasta')
mito_seq <- mito_fasta$NC_012920.1

#NO CHANGE PLEASE
find_codon = function(seq,codon,rf) {
  l=length(seq)-2
  position=NULL
  for (i in rf:l) {
    if (i%%3==rf && tolower(paste(seq[i],seq[i+1],seq[i+2],sep=""))==tolower(codon)) { #neu de 2 condition khac nhau, kieu paste... to a new variable, roi compare that variable to codon, no se ra ket qua cua 3 i
      position = append(position,i) #tolower to lowercase
    }
  }
  return(position)
}


find_start_codon = function(seq,rf){
  startcodon = c('atg','ata','att','atc','gtg')
  allposition = NULL
  for (i in 1:length(startcodon)) {
    allposition=append(allposition,find_codon(seq,startcodon[i],rf))
    #loop through the startcodon list, do the find_codon fucntion with every start codon in the list, put all the value of the find_codon into another variable
  }
  return(sort(allposition))  #sort the allposition
}
find_start_codon(mito_seq[1:500],1)

find_stop_codon = function(seq,rf){
  stopcodon = c('taa','tag','aga','agg')
  allposition = NULL
  for (i in 1:length(stopcodon)) {
    allposition=append(allposition,find_codon(seq,stopcodon[i],rf))
    #loop through the stopcodon list, do the find_codon fucntion with every stop codon in the list, put all the value of the find_codon into another variable
  }
  return(sort(allposition))  #sort the allposition
}

find_stop_codon(mito_seq[1:500],1)


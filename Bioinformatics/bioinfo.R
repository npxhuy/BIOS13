
mito_fasta = read.fasta('NC_012920.fasta')

mito_seq <- mito_fasta$NC_012920.1


nucleo_content = function(seq){
  l=length(seq)
  a=0
  c=0
  g=0
  t=0
  for (i in 1:l){
    if (seq[i]=="a") {
      a=a+1
    } else if (seq[i]=="c") {
      c=c+1
    } else if (seq[i]=="g") {
        g=g+1
    } else if (seq[i]=="t") {
          t=t+1
    }
  }
  cat("A : ", a/l*100, "%\n")
  cat("G : ", g/l*100, "%\n")
  cat("C : ", c/l*100, "%\n")
  cat("T : ", t/l*100, "%\n")
}


create_complement = function(seq){
  anotherseq=seq #Create a another duplicate of the seq
  anotherseq[seq=='a'] <- 't' #Replace all the position of a in seq to t to the position in another seq
  anotherseq[seq=='t'] <- 'a'
  anotherseq[seq=='g'] <- 'c'
  anotherseq[seq=='c'] <- 'g'
  rev=anotherseq[length(seq):1] #reverse
  return(rev)
}





#######
create_complement1 = function(seq){
  l=length(seq)
  comp=NULL
  for (i in 1:l){
    if (seq[i]=="a") {
      comp[i]="t"
    } else if (seq[i]=="t") {
        comp[i]="a"
    } else if (seq[i]=="g") {
          comp[i]="c"
    } else if (seq[i]=="c") {
            comp[i]="g"
    }
  }
  comp = comp[l:1]
  return(comp) 
} #This function has a problem at index 13463 where a g is replace by NA????






  

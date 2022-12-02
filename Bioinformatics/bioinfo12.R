rm(list=ls())
source('bioinfo9.R')
#find_all_open_frames = function(seq,rf){
#  start=find_start_codon(seq,rf)
#  stop=find_stop_codon(seq,rf)
#}

start=find_start_codon(mito_seq[1:500],1)
stop=find_stop_codon(mito_seq[1:500],1)
combine=NULL

m = matrix(0,1,2)
alli <- c()
startandi <- c()
for (start_i in start){
  for (i in 1:length(stop)){
  if (start_i<stop[i]) {
    m = rbind(m,c(start_i,stop[i]+2))
    break
    startandi <- c(start_i, i)
    alli <- rbind(alli,startandi)
   }
  }
} #problem with the last open reading frame where the start is larger but still added to the list
#problem with rf =3 because it's 0

#creat blank matrix of 1 and two column
#loop throught the first start codon
#compare it with the stop codon, it it's bigger than the stop codon the ignore, move the position of the stop codon to compare by 1
# if it's smaller, then append two value into the matrix
#add it by rbind ???
# break

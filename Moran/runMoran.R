runMoran = function(tmax) {
  a = c('A') #Create a vector of single A
  b = rep('B',tmax -1) #A vector of tmax -1 number of B
  popgen = c(a,b) #Combine two vector
  count=0
  while (TRUE) {
    remove_index = sample.int(tmax,1) #Sample 1 number from 1 to tmax
    replace_index = sample.int(tmax,1)
    popgen[remove_index] = popgen[replace_index]
    count = count+1
    if ((length(popgen[popgen!='A'])==0 | length(popgen[popgen!='B'])==0)) {
      break
    }
  }
  return(c(popgen,count))
}



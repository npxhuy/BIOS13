rm(list=ls())
v1 <- c(1,4,6)
v2 <- c(2,3,5)

sorting <- function(a,b){
  v <- c(a,b)
  sortv <- sort(v)
  return(sortv)
}

sorting(v1,v2)


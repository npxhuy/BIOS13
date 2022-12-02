revvec <- function(v){
  newvec <- v[length(v):1]
  return(newvec)
}

a <- c(1,2,3,4,5)
revvec(a)

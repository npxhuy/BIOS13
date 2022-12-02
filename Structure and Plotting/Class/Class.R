rm(list=ls())
sorting <- function(v) {
  repeat{
    flag <-TRUE
    for (i in 1:(length(v)-1)) {
      if (v[i]>v[i+1]) {
        newi <- v[i]
        v[i] <- v[i+1]
        v[i+1] <- newi
        #cat(v, "\n")
        flag <- FALSE
      }
    }
    if (flag) {break}
  }
  return(v)
}

a <- c(4,3,2,1,8)

sorting(a)


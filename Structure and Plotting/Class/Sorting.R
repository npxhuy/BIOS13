rm(list=ls())
sorting <- function(v) { 
  repeat{
    flag <-TRUE #for repeat
    for (i in 1:(length(v)-1)) {
      if (v[i]>v[i+1]) {
        newi <- v[i]
        v[i] <- v[i+1]
        v[i+1] <- newi
        flag <- FALSE #reassign flag as FALSE if the if on line 6 is executed
      }
    }
    if (flag) {break} #if from line 6 to line 10 are executed, then do not break
    #because the flag is FALSE, if line 6 to 10 are not executed, means that all the elements are sorted
    #then flag is back to TRUE, and the if (flag) break is executed.
  }
  return(v)
}

a <- c(4,3,2,1,8)

sorting(a)
rm(list=ls())
set.seed(1)
plotmax <- function(n){
  rand_v <- runif(n)
  plot(rand_v,type='l',col='blue')
  position_localmax = c() #blank vector to add the position
  maxima= c() #blank vector to add the max 
  for (i in 2:(n-1)){
    if ((rand_v[i-1]<rand_v[i]) && (rand_v[i]>rand_v[i+1])) {
      #points(position_localmax,maxima,pch=3,col='red') Need this line or line 15 to draw the point
      position_localmax <- c(position_localmax, i) #grow the vector by eg. v <- c( v, newvalue)
      maxima <- c(maxima,rand_v[i])
    }
  }
  points(position_localmax,maxima,pch=3,col='red') #x is pos, maxima is y
  return(list(position_localmax,maxima))
}

plotmax(9)



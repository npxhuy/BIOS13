randomWalk = function(N,tmax) {
  x = rep(0,N) #create a vector that has the length of the walk and start all the walk with 0
  plot(NA, type='n', xlim=c(0,N),ylim=c(-2*sqrt(N),2*sqrt(N))) #Create a blank plot to plot in
  for (iter in 1:tmax) { #repeat tmax times
    for (i in 1:(N-1)) {
      x[i+1] = x[i] + rnorm(1) #The next value of i is added with the previous one and rnorm
    }
    lines(1:N,x,col='black') #X axis is number from 1 to N, Y value is x
    }
}


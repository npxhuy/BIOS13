rm(list=ls())
simulation <- function(pe,ps,n) {
  if(missing(n)) {
    x = c(1,rep(0,99)) #If n is not given, then it is set as 1
  } else {
    x = c(n,rep(0,99))
  }
  for (iter in 1:99) {
    temp=0
    if (x[iter]==0) {
      break # At any period, when population reaches 0, stop the loop.
    } else {
      for (i in 1:x[iter]) {
        e = runif(1) #Extinct prob and Speciate prob are generated differently randomly for every species
        s = runif(1)
        if (e<=pe){
          temp=temp-1
        } else if (e>pe & s<=ps) {
          temp=temp+1
        } else if (e>pe & s>ps) {
          temp=temp+0
        }
      }
      x[iter+1]=x[iter]+temp
    }
  }
  plot(NA, type='n',xlim=c(0,10),ylim=c(0,max(x)),ylab='Number of species',xlab='time (years) x 10^6')
  lines(seq(0.1,10,by=0.1),x) 
  return(x)
}
simulation(0.1,0.2)

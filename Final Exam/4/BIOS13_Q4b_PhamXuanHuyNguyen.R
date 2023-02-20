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
      break
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
  return(x)
}

# histogram
sum_of_simulation=0
for (i in 1:1000) {
  sum_of_simulation=sum_of_simulation+simulation(0.1,0.2)
}
hist(sum_of_simulation,xlab='Number of species',main='Histogram of the number of species after 10 millions years')

rm(list=ls())
#1a
LV_isoclines = function(r,a,mu){
  plot(1, type = "n", xlab = "",
        ylab = "", xlim = c(0, 5), 
       ylim = c(0, 5)) #creat blank plot
  abline(h=r/a)
  abline(v=mu/a)
}
LV_isoclines(1,1,2)

#1b
LV_sys <- function(t, np, Parameters) { 
  # extract vector content:
  n <- np[1]
  p <- np[2]
  
  r <- Parameters[1]
  a <- Parameters[2]
  mu <- Parameters[3]
  # calculate the two growth rates:
  dndt <- r*n - a*n*p
  dpdt <- a*n*p - mu*p
  return(list(c(dndt, dpdt ))) # the result as a vector in a list
}
library(deSolve)
np0 = c(1.5,0.5)
timevec = seq(0,20,by=0.1)
P = c(1,1,2)
out <- ode( y = np0, func = LV_sys, times = timevec, parms = P)

# plot( out[,1], out[,2], type='l', col='blue', ylim=c(0,3),) 
# lines( out[,1], out[,3], col='red' ) 
par(mfrow=c(1,2))
LV_isoclines(1,1,2)
lines(out[,2], out[,3]) #the timevec have to contains many small value (by 0.1) in order to draw a nice circle line
# LV_isoclines(1,1,2)
plot( out[,1], out[,2], type='l', col='blue', ylim=c(0,4),) 

lines( out[,1], out[,3], col='red' )


#1c
jab = function(r,a,mu) {
  m = matrix(data=c(0,-mu,r,0),nrow=2,ncol=2,byrow=TRUE)
  return(m)
}

jab(1,1,2)

#1d
e=eigen(jab(1,1,2))

t=2*pi/abs(Im(e$value[1]))


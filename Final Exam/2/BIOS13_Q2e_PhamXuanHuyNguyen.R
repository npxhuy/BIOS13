rm(list=ls())
LV_isoclines <- function(r,a,b,c) { 
  # Protein P isocline (dP/dt=0)
  fP = function(x) {
    a/(c*x)-b/c
  }
  p = seq(0,20,by=0.1)
  
  # Protein Q isocline (dQ/dt=0)
  fQ = function(x) {
    r*x/b
  }
  q = seq(0,20,by=0.1)
  
  # Plotting the isocline:
  plot(p,fP(p),type='l',col='blue', xlab="P concentration", 
       ylab="Q concentration",xlim=c(0,1),ylim=c(0,1))
  lines(q,fQ(q),col='red')
}

LV_sys <- function(t, pq, P) {
  # extract vector content:
  p <- pq[1]
  q <- pq[2]
  
  # calculate the two growth rates:
  dpdt <- P$a - P$b*p - P$c*p*q
  dqdt <- P$r*p - P$b*q
  
  # the result as a vector in a list
  return(list(c(dpdt, dqdt )))
}

library(deSolve)

# set up a vector of time-points for the output:
timevec <- seq(0,20,by=0.1)

# list of parameters:
P <- list(r=2,a=1,b=3,c=2)
# initial protein concentration
pq0 <- c(p=1.5,q=0.5) 

# call the ode function to solve the differential equation:
out <- ode( y = pq0, func = LV_sys, times = timevec, parms = P)
time <- out[,'time']
p <- out[,'p']
q <- out[,'q']

# next the phase plane, starting with the isoclines:
LV_isoclines(P$r,P$a,P$b,P$c)

# add the trajectory and legend:
lines(out[,'p'],out[,'q'])
legend("topright", legend = c("P", "Q","trajectory"),
       lwd = 1, col = c("blue", "red",'black'), cex=0.6)
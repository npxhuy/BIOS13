rm(list=ls())
library(deSolve)
Q3e = function(ts,T,r,c,a,b){
  WQ = function(t,wp,P){
    W = wp[1]
    Q = wp[2]
    if (t<=ts) {
      dWdt = P$r*W - P$a*W
      dQdt = 0
    } else if (t>ts) {
      dWdt = -P$a*W
      dQdt = P$c*W - P$b*Q
    }
    return(list(c(dWdt,dQdt)))
  }
  timevec = seq(0,T,by=1)
  P = list(r=r,c=c,a=a,b=b)
  wp0 = c(W=1,Q=0)
  out = ode(y=wp0,func=WQ,parms=P,times=timevec)
  
  time <- out[,'time']
  w <- out[,'W']
  q <- out[,'Q']
  plot( time, w, type='l', col='blue',xlim=c(0,100),
        ylim=c(0,max(w)),ylab="W,Q",xlab="t")
  lines( time, q, col='red')
  legend("topleft", legend = c("Worker", "Queen"),
         lwd = 1, col = c("blue", "red"), cex=0.6)
}
Q3e(60,100,0.08,0.01,0.01,0.001)

rm(list=ls())
simulation <- function(pe,ps,nmax,n) {
  if(missing(n)) {
    x = c(1,rep(0,99))
  } else {
    x = c(n,rep(0,99))
  }
  for (iter in 1:99) {
    temp=0
    if (x[iter]==0) {
      break 
    } else {
      ps_temp=ps*((nmax/1.8)/x[iter])
      pe_temp=pe
      for (i in 1:x[iter]) {
        e = runif(1)
        s = runif(1)
        if (e<=pe_temp){
          temp=temp-1
        } else if (e>pe_temp & s<=ps_temp) {
          temp=temp+1
        } else if (e>pe_temp & s>ps_temp) {
          temp=temp+0
        }
      }
      x[iter+1]=x[iter]+temp
    }
  }
  plot(NA, type='n',xlim=c(0,10),ylim=c(0,max(x)),
       ylab='Number of species',xlab='time (years) x 10^6')
  lines(seq(0.1,10,by=0.1),x) 
  return(x)
}
simulation(0.1,0.2,1500)

rm(list=ls())
x <- seq(1,100)
x[1]=0
for (i in 1:100) {x[i+1]=x[i]+rnorm(1)}
plot(x,type='l')

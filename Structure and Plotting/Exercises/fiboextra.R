rm(list=ls())
fibo <- function(n){
  fibo_v<-c(1,1)
  l=length(fibo_v)
  par(mfrow=c(1,2)) #A plot of 1 row, 2 column
  while (l<n){
    for (i in 1:l){
      fibo_v[i+2] = fibo_v[i]+fibo_v[i+1]
      l=length(fibo_v)
    }
  }
  plot(fibo_v, type='l') #plotting the fibo vector
  #Creating a vector of golden ratio
  gold_v<-c(0)
  for (i in 1:n){
    gold_v[i]=((1+sqrt(5))/2)^(i/sqrt(5))
  }
  plot(gold_v,type='l')
  
  
}
fibo(8)

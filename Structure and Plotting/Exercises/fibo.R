rm(list=ls())
fibo <- function(n){
  fibo_v<-c(1,1)
  l=length(fibo_v)
  while (l<n){
    for (i in 1:l){
      fibo_v[i+2] = fibo_v[i]+fibo_v[i+1]
      l=length(fibo_v)
    }  
  }
  cat(fibo_v)
}
fibo(7)
'''
fibo <- function(n){
  fibo_v<-c(1,1)
  l=length(fibo_v)
  while (l<n){
      fibo_v[l+1] = fibo_v[l]+fibo_v[l-1] #The index of fibo after the last one is equal to the sum of this index and the pervious index
      l=length(fibo_v)
  }
  cat(fibo_v) #Must out side while loop {}
}
fibo(7)
'''

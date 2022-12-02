

rm(list=ls())
A = matrix(
  c(0.5,0.3,-0.2,1.2),
  nrow=2,
  ncol=2,
  byrow=TRUE #By default matrices are in column-wise order
  # So this parameter decides how to arrange the matrix
)

year = 10

v1 = matrix(
  c(100,200),
  nrow=2,
  ncol=1,
  byrow=FALSE
)

v2 = matrix(
  c(300,100),
  nrow=2,
  ncol=1,
  byrow=FALSE
)

owl=NULL
rat=NULL

for (i in 1:10) {
  newA=(A%^%i)%*%(2*v1+6*v2) #Install matpow but still cant run it??? must install expm
  owl[i]=newA[1,1]
  rat[i]=newA[2,1]
  
}

l1=1.1
l2=0.6
newowl=NULL
newrat=NULL
for (i in 1:10) {
  newAA=2*(l1^i)*v1+6*(l2^i)*v2
  newowl[i]=newAA[1,1]
  newrat[i]=newAA[2,1]
}


plot(newowl,col='blue')
points(newrat,col='red')







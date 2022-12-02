rm(list=ls())
X = matrix(
  c(1,2,1,0),
  nrow=2,
  ncol=2,
  byrow=TRUE
)

#a
a=det(X)

#b
e = eigen(X) #Show the ev value and vectors

#c
ev=e$values #take the value
ev1=ev[1]
ev2=ev[2]
#d
vec=e$vectors #take the vectors
vec1=(vec[,1]) #every row in the first column
vec2=(vec[,2]) #every row in the second column
dim(vec1) <- c(2,1) #turn to vertical
dim(vec2) <- c(2,1) #turn to vertical
#e

sum1=(X%*%vec2)
sum2=(ev2*vec2)



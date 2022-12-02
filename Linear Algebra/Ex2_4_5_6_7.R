rm(list=ls())
I = matrix(
  c(1,0,0,0,1,0,0,0,1),
  nrow=3,
  ncol=3,
  byrow=T
)

J = matrix(
  c(8,2,-6),
  nrow=3,
  ncol=1,
  byrow=F
)

#4
K=I%*%J

#5
e=eigen(I)
ev=e$values

#6 Creat 2x2 Identity matrix and show that 0.5I * matrix -> half of its value
I2 = matrix(
  c(1,0,0,1),
  nrow=2,
  ncol=2,
  byrow=T
)

L = matrix(
  c(12,8),
  nrow=2,
  ncol=1,
  byrow=F
)

M=0.5*I2%*%L

#7 Confirm, in R, that the eigen-values of a scaling matrix, such as 0.5I, are all equal to the scaling constant (0.5 in the example). 
e2=eigen(0.5*I2)
ev2=e2$values

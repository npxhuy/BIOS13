rm(list=ls())

u = matrix(c(3,6,7),nrow=1,ncol=3)
v = matrix(c(12,13,14),nrow=1,ncol=3)

#a
a=u+v

#b
b=sum(u*v)

#c |u|
c=sqrt(sum(u*u))

#d |v|
d=sqrt(sum(v*v))

#e |u+v|
e=sqrt(sum(a*a))


B=matrix(
  c(1,0,4,2,0,5,3,0,6),
  nrow=3,
  ncol=3,
  byrow=TRUE
)

#2a
a2=B%*%t(u) #t(x) transpose the vector from row to column

#2b
b2=B%*%t(v)

#2c
c2=B%*%t(a) #a variable from the first exercise

#2d
d2 = B%*%B%*%t(u)



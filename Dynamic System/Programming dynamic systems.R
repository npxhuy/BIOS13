#1

r0 =1 # intrinsic growth rate
K = 100 # carrying capacity
a=NULL

for (n in 0:150) {
  a[n+1]=r0*n*(1-(n/K))
}

plot(a, type = 'l',
     xlab='n', xlim=c(0,150), 
     ylab='dn/dt', ylim=c(-20,30))
abline(h=0)

###

#2
a2=NULL
for (t in 0:150) {
  a2[t+1]=K/(1+((K/1)-1)*exp(1)^(-r0*t))
}

plot(a2, type = 'l',
     xlab='time', xlim=c(0,20),
     ylab='n', ylim=c(0,100))

#3
a3=diff(a2)
a3[151]=0 #to make it equal in length

plot(a2,a3,type='l', xlab='population in time', ylab='differences of population in time')
plot(a,a3,type='l',xlim=c(0,20), xlab='population in time')


#4

#odefunction = function(r0,t0,delt,re){
#  r0=1
#  t=0
#  del_n=
#}

t0=0
n0=1
r0=1
K=100
t=t0 #Start by setting t = 0
n=n0 # n = n0 (x=x0)
rep=100
del_t=0.1 #Choose small delta t
population=NULL
population=rbind(c(t,n),population)
for (i in 0:rep){
  del_n=r0*n*(1-(n/K))*del_t #Calculate Delta_n (delta_x)
  t=del_t+t #Update t <- t + del_t
  n=del_n+n #Update x <- x + del_x
  population=rbind(c(t,n),population)
}
plot(population, type='l')


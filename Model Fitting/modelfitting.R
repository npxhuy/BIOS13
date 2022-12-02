rm(list=ls())
setwd("~/Documents/GitHub/BIOS13/Model Fitting")
ringlets = read.csv('Ringlets.csv') 
head(ringlets)
# par(mfrow=c(1,2))
# plot(ringlets, type='b')
# plot(log(ringlets$N)~ringlets$year, type='b') #Take the log to scale big number down and small number up, to have a general look  
Ringlets=ringlets[-1,]
Nt=ringlets$N[2:23]
Ntplus1=ringlets$N[3:24]
# After remove the year 1976

# plot(Nt, Ntplus1, xlab='N(t)', ylab='N(t+1)') 

Rickerfit <- nls( Ntplus1 ~ Nt*exp(r0*(1-Nt/K)), data=list(Nt=Nt), 
                  start=list(r0=1,K=100) ) 
summary(Rickerfit)

# points(Nt, fitted(Rickerfit), col='red') # fitted extracts fitted values from objects returned by modeling functions

# plot(Nt, residuals(Rickerfit)) #after removing the 1976 data, can see a bit of downward trend clearer

rt <- log(Ntplus1/Nt) #Re calculate rt

# plot(Nt,rt) 

rt_fit <- nls( rt ~ r0*(1-Nt/K), data=list(Nt=Nt), start=list(r0=1,K=100) ) 
# Calculate the rt_fit through nls

summary(rt_fit)

# points(Nt, fitted(rt_fit), col='blue') #plot over plot(Nt,rt)

# o^ = 0.3445
# In the summary(rt_fit), the residual standard error said: 0.3445 on 20 degrees of freedom
o_hat=sqrt(sum(residuals(rt_fit)^2)/(length(rt)-2)) # 0.3445

newNtplus1=5
r_hat=1.004 #get from summary(rt_fit)
K_hat=311 #get from summary(rt_fit) the Parameters part
#Predict the Nt+1 by using initial Nt as 5
for (i in 1:length(Nt)) {
  new_value=newNtplus1[i]*exp(r_hat*(1-newNtplus1[i]/K_hat)+rnorm(1,0,o_hat)) #rnorm(1,0,o_hat) give 1 value, mean = 0 and sd=o_hat
  newNtplus1=append(newNtplus1,new_value)
  new_value=0
}
# par(mfrow=c(1,2))

#plot 2 plots here, we should expect similar looking plot since we use the initial Nt to predict the next year 
# plot(newNtplus1~seq(1,23,by=1))
# plot(Ringlets)

###
#Alternative model, model selection

Hasselfit_rt = nls(rt ~ log(lamda/(1+a*Nt)^b), data=list(Nt=Nt), start=list(lamda=1.1,a=0.001,b=1))
summary(Hasselfit_rt)
# plot(Nt,rt,xlab="Nt",ylab='rt')
# points(Nt, fitted(Hasselfit_rt),col='red')
# In the manual, we divided both side with Nt to get the rt


###
# Monte-Carlo simulations 



rt_fit_ricket_plot = function(year,rep) {
  r_hat=1.004
  K_hat=311
  o_hat=0.3445
  Ntplus1 = rep(5,year) #create a vector that has the length of the walk and start all the walk with 0
  plot(NA, type='n', xlim=c(0,year),ylim=c(0,1000)) #Create a blank plot to plot in
  for (iter in 1:rep) { #repeat tmax times
    for (i in 1:(year-1)) {
      Ntplus1[i+1] = Ntplus1[i]*exp(r_hat*(1-Ntplus1[i]/K_hat)+rnorm(1,0,o_hat)) #The next value of i is added with the previous one and rnorm
    }
    lines(1:year,Ntplus1,col='black') #X axis is number from 1 to N, Y value is x
  }
}







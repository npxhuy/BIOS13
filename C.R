#10
c(2,2,2) #[2 2 2]
seq(2,10, by=2) #[2 4 6 8 10]
seq(0,300, by=3) #[0 3 6 9 ... 300]
rep(2:3,3) #[2 3 2 3 2 3], repeat a vector from 2:3 3 times
seq(11,27, length=23) #23 evenly spaced numbers between 11 and 27
seq(8,-1, by=-1) #[8 7 6 5 4 3 2 1 0 -1] 

#11
u <- seq(5,100, by=5)
u[c(3,7)] <- 0 #Set elements 3 and 7 to 0 
cat(u)
u[u>50] <- -3 #Set all elements larger than 50 to -3
cat(u)
u <- u+7 #Add 7 to all elements
cat(u)
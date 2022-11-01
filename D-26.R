v1 <- scan(n=3)
v2 <- scan(n=3)
v3 <- c()
for (i in 1:3) {
  v3[length(v3)+1]<-v1[i] #The length initially is 0, +1 then 1
  v3[length(v3)+1]<-v2[i] #Now the length is 1, plus 1 is 2
}

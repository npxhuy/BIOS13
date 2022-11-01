rm(list=ls())
len <- as.integer(readline('Give me a num: '))

if (len > 0 && len <=10) {
  v1 <- scan(n=len)
  v2 <- scan(n=len)
  v3 <- c()
for (i in 1:length(v1)) {
  v3[length(v3)+1]<-v1[i] #The length initially is 0, +1 then 1
  v3[length(v3)+1]<-v2[i] #Now the length is 1, plus 1 is 2
}} else {cat('The num should be smaller than 10 and greater than 0')}
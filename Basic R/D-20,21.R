rm(list=ls())
yourname <- readline("Write your name: ")
#cat("Hello", yourname)
if (substr(yourname,1,1)=="P") {cat('Hello', yourname)}
#Modify the script only say hello when the name begins with P
#substr(yourname,1,1) take the first letter from the first name in name


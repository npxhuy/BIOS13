rm(list=ls())
tigers <- 10 #Creat variable named tigers with value of 10
lions <- tigers + 12 #Creat variable named lions with value tigers + 12
ls() #Check that there are two objects 
objects() #Same as line 4
lions == 22 #TRUE, make sure that lions has the value 22
tigers <- 15 #Change the value of tigers to 15
####
names(tigers) <- "The numbers of tigers in this jungle"
names(tigers) #Give the name of the variable tigers
tigers2 <- 2*tigers #The name are inherited
tigers2 #Will print out "The numbers ... jungle 30"
unname(tigers2) #Remove the "The numbers of...jungle", only resulted in 30
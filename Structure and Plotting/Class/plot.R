a <- c(5,4,3,2,1)
source('revvec.R')
b <- revvec(a)
library(ggplot2)
x <- 0:100
g <- ggplot(NULL, aes(x=x,y=sin(x)))
g + geom_line(aes(col=sin(x)))

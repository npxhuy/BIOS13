rm(list=ls())
temp <- readline('Temperature in F: ')
cat('It equals to', (as.numeric(temp)-32)/1.8, 'C')
#as.numeric to convert the string temp to number

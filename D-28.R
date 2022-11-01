rm(list=ls())
text <- readline()
len=nchar(text)
vowel <- c("a","e","i","o","u")
for (i in 1:len) {
  if (substr(text[1],i,i) %in% vowel) {print(substr(text[1],i,i))}
}


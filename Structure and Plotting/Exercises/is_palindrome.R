rm(list=ls())
is_palindrome <- function(string){
  str <-unlist(strsplit(string, split="")) #strsplit(string, split="")[[1]]
  l=length(str)
  if (l%%2==0) {
    h=(l/2)+1
    halfrev=str[l:h]
    half=str[1:h-1]
    
  }  
  else {
    h=(l+1)/2
    halfrev=str[l:(h+1)]
    half=str[1:h-1]
  }
  flag=TRUE
  for (i in 1:length(half)) {
    if (half[i]!=halfrev[i]) {
      flag=FALSE
    }
    return(flag)
  }
}
is_palindrome('jack')
is_palindrome('anna')
is_palindrome('eve')
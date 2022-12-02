mymax <- function(a,b){
  v <- c(a,b)
  maxv=max(v)
  return(maxv)
}

mymax(5,6)

##
mymax2 <- function(a,b) {
  if (a>=b) {maxvalue <- a} else {maxvalue <- b}
  return(maxvalue)
}

mymax2(5,7)

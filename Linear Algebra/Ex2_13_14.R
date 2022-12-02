rm(list=ls())
draw_a_tree <- function() { 
  # x-coordinates of nodes in the tree  
  # (NA values creates breaks in the line, 'lifting the pen'): 
  x <- c(0, 0, 0.7, 1.5, NA, 0.7, 0.8, NA, 0, -0.6, -1.2, NA, -0.6, -
           0.5) 
  # y-coordinates: 
  y <- c(0, 1, 1.3, 1.4, NA, 1.3, 1.8, NA, 1.0, 1.4, 1.7, NA, 1.4, 
         2.0) 
  # Plot a brown tree, with thick branches 
  plot(x, y, type='l', col='brown', lwd=8) # lwd sets the line thickness 
}

A <- 0.5*matrix(c(1,0,0,1),2,2) 

draw_a_transformed_tree <-function(m) {
  # x-coordinates of nodes in the tree  
  # (NA values creates breaks in the line, 'lifting the pen'): 
  x <- c(0, 0, 0.7, 1.5, NA, 0.7, 0.8, NA, 0, -0.6, -1.2, NA, -0.6, -0.5) 
  # y-coordinates: 
  y <- c(0, 1, 1.3, 1.4, NA, 1.3, 1.8, NA, 1.0, 1.4, 1.7, NA, 1.4, 2.0) 
  
  # For each vector u =(x[i], y[i]),  
  # calculate the corresponding transformed vector v = A*u, 
  # and put the new coordinates back into the vectors x, y. 
  for (i in 1:length(x)) { 
    # original coordinate vector: 
    u <- c(x[i],y[i]) 
    # transformed vector: 
    v <- m %*% u 
    # replace the original coordinates with the transformed ones: 
    x[i] <- v[1] 
    y[i] <- v[2] 
  } 
  
  # Add a green tree to the current plot 
  plot(x, y, type='l', col='green', lwd=8) # lwd sets the line thickness 
} 

B = -1*matrix(c(1,0,0,1),2,2)

#15
theta <- 30/360*2*pi 
C = matrix(c(cos(theta),sin(theta),-sin(theta),cos(theta)), 2, 2)

e=eigen(C)


#16 mirror image
D= matrix(c(-1,0,0,1),2,2)




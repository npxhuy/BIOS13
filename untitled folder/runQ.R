runQ = function(Pin,Pout,T_queue) {
  queue=NULL
  len_q=NULL
  plot(NA, type='n', xlim=c(0,T_queue),ylim=c(0,(T_queue))) #create a blank plot
  for (i in 1:T_queue) {
    inp=runif(1)
    outp=runif(1)
    if (inp<=Pin) {
      queue = append(queue,1) #Add to the queue
    } 
    if (outp<=Pout) {
      queue = queue[-1] #Remove the last
    }
    len_q=append(len_q,length(queue))
  }
  points(1:T_queue,len_q)
}
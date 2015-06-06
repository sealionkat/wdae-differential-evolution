crossover_exp <- function(Pgi, Mgi) {
  Ngi <- point();
  i <- 1;
  while(i <= dim) {
    a <- runif(1);
    if(a < CR) {
      Ngi$coordinates[[i]] <- Pgi$coordinates[[i]]
    } else {
      break;
    }
    i <- i + 1;
  }
  
  while(i <= dim) {
    Ngi$coordinates[[i]] <- Mgi$coordinates[[i]];
    i <- i + 1;
  }
  
  return(Ngi);
  
}
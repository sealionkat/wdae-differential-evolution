crossover_bin <- function(Pgi, Mgi) {
  Ngi <- point();
  
  for(i in 1:dim) {
    a <- runif(1);
    if(a < CR) {
      Ngi$coordinates[[i]] <- Pgi$coordinates[[i]];
    } else {
      Ngi$coordinates[[i]] <- Mgi$coordinates[[i]];
    }
  }
  
  return(Ngi);
}
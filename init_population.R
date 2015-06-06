init_population <- function() {
  population <- list();
  
  for(i in 1:NP) {
    population[[i]] <- point();
  }
  
  return(population);
}

init_population <- function(count) {
  population <- list();
  
  for(i in 1:count) {
    population[[i]] <- point();
  }
  
  return(population);
}

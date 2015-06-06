selection_avg <- function(Pg) {
  len <- length(Pg);
  avg <- rep(c(0), dim);
  
  for(i in 1:len) {
    avg <- avg + Pg[[i]]$coordinates;
  }
  
  avg <- avg / len;
  return(point(coords = avg));
}
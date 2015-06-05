selection_avg <- function(Pg) {
  len <- length(Pg);
  avg <- rep(c(0), dim);
  
  for(i in 1:len) {
    avg <- avg + Pg[[i]];
  }
  
  avg <- avg / len;
  return(); #point
}
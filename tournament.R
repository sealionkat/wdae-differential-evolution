tournament <- function(Pgi, Ogi) {
  if(Pgi$quality < Ogi$quality) {
    return(Pgi);
  } else {
    return(Ogi);
  }
}
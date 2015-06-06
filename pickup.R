pickup <- function(Pg, Pgj) {
  Pgk <- NULL;
  Pgl <- NULL;
  repeat {
    Pgk <- sample(Pg, 1);
    if(!all(Pgk[[1]]$coordinates == Pgj[[1]]$coordinates)) {
      break;
    }
  }
  
  repeat {
    Pgl <- sample(Pg, 1);
    if( (!all(Pgl[[1]]$coordinates == Pgj[[1]]$coordinates)) & (!all(Pgl[[1]]$coordinates == Pgk[[1]]$coordinates)))  {
      break;
    }
  }
  
  return(list(Pgk, Pgl));
}
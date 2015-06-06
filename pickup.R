pickup <- function(Pg, Pgj) {
  Pgkt <- NULL;
  Pglt <- NULL;
  repeat {
    Pgkt <- sample(Pg, 1);
    if(!all(Pgkt[[1]]$coordinates == Pgj$coordinates)) {
      break;
    }
  }
  
  repeat {
    Pglt <- sample(Pg, 1);
    if( (!all(Pglt[[1]]$coordinates == Pgj$coordinates)) & (!all(Pglt[[1]]$coordinates == Pgkt[[1]]$coordinates)))  {
      break;
    }
  }
  
  Pgk <- point(coords=Pgkt[[1]]$coordinates);
  Pgl <- point(coords=Pglt[[1]]$coordinates);
  
  
  return(list(Pgk, Pgl));
}
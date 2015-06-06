# differential evolution function
# parameters
# - selection_type: type of selection process; possible values: "rand", "avg"
# - crossover_type: type of crossover process; possible values: "bin", "exp"
# - NP: initial population count; natural number >= 3
# - CR: crossover coefficient; (0;1)
# - FC: scale coefficient; [0;1]

de <- function(selection_type, crossover_type, benchmark_fun) {
  # error handling
  
  # setting selection and crossover type
  selection <- NULL;
  crossover <- NULL;
  if(selection_type == 'rand') {
    selection <- selection_rand;
  } else {
    selection <- selection_avg;
  }
  if(crossover_type == 'bin') {
    crossover <- crossover_bin;
  } else {
    crossover <- crossover_exp;
  }
  
  # main algorithm
  
  P <- list(init_population());
  M <- list();
  O <- list();
  H <- rep(P, 1); # copy of P
  g <- 1; # time
  iter <- 1;
  while(iter <= maxIterations) {
    M[[g]] <- list();
    O[[g]] <- list();
    P[[g+1]] <- list();
    
    for(i in 1:NP) {
      Psel <- selection(P[[g]])
      Pgj <- Psel[[1]];
      Pgkl <- pickup(P[[g]], Pgj);
      Pgk <- Pgkl[[1]];
      Pgl <- Pgkl[[2]];
      Pmutated <- point(coords=(Pgj$coordinates + FC * (Pgk$coordinates - Pgl$coordinates)));
      M[[g]][[i]] <- Pmutated;
      
      O[[g]][[i]] <- crossover(P[[g]][[i]], Pmutated);
      H[[length(H) + 1]] <- O[[g]][[i]];
      
      P[[g]][[i]]$quality <- benchmark_fun(P[[g]][[i]]$coordinates);
      O[[g]][[i]]$quality <- benchmark_fun(O[[g]][[i]]$coordinates);
      
      P[[g + 1]][[i]] <- tournament(P[[g]][[i]], O[[g]][[i]]);
    }
    
    g <- g + 1;
    iter <- iter + 1;
  }
  
  return(P)
  
}
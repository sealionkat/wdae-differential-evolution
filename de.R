# differential evolution function
# parameters
# - selection_type: type of selection process; possible values: "rand", "avg"
# - crossover_type: type of crossover process; possible values: "bin", "exp"
# - NP: initial population count; natural number >= 1
# - CR: crossover coefficient; (0;1)
# - FC: scale coefficient; [0;1]

de <- function(selection_type, crossover_type, NP, CR, FC) 
{
  # error handling
  
  # setting selection and crossover type
  selection <- NULL;
  crossover <- NULL;
  if(selection_type == 'rand') {
    selection <- selection_bin;
  } else {
    selection <- selection_avg;
  }
  if(crossover_type == 'bin') {
    crossover <- crossover_bin;
  } else {
    crossover <- crossover_exp;
  }
  
  # main algorithm
  
  P <- init_population();
  H <- rep(P, 1); # copy of P
  g <- 0; # time
  iter <- 1;
  while(iter <= maxIteration) 
  {
    
    
    
    g <- g + 1;
    iter <- iter + 1;
  }
  
  
}
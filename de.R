# differential evolution function
# parameters
# - selection_type: type of selection process; possible values: "rand", "avg"
# - crossover_type: type of crossover process; possible values: "bin", "exp"
# - NP: initial population count; natural number >= 1
# - CR: crossover coefficient; (0;1)
# - F: scale coefficient; [0;1]

de <- function(selection_type, crossover_type, NP, CR, F) 
{
  # error handling
  
  # setting selection and crossover type
  
  P <- init_population();
  H <- rep(P, 1);
  g <- 0; # time
  iter <- 1;
  while(iter <= maxIteration) 
  {
    g <- g + 1;
    iter <- iter + 1;
  }
  
  
}
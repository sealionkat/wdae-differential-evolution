source("vars.R")

point <- function() 
{
  return(list(coordinates=runif(dim, minRange, maxRange), quality=0));
}

point()
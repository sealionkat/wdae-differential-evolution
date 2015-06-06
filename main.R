# Standard and modified differential evolution algorithms
# 2015


source("globals.R");
source("point.R");
source("init_population.R");
source("selection_rand.R");
source("selection_avg.R");
source("pickup.R");
source("crossover_bin.R");
source("crossover_exp.R");
source("tournament.R");
source("de.R");

library(cec2013);

# main <- function() {
#   # benchmark_fun <- function(coords) { return cec2013(num, coords); }
#   
#   bf <- function(coords) { 
#     return (cec2013(1, coords));
#   }
#   
#   results <- de("rand", "bin", bf);
#   
#   results
# }
# 
# main();

bf <- function(coords) { 
  return (cec2013(1, coords));
}

results <- de("avg", "bin", bf);


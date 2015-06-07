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

save_file <- function(sel_type, co_type, i, j) {
  results <- de(sel_type, co_type, function(coords) {return(cec2013(i, coords));});
  fileName <- paste("tests/test", j, "_FUNC", i, "_SEL", sel_type,"_CO", co_type, "_NP", NP, "_CR", CR, "_FC", FC, "_dim", dim, "_maxI", maxIterations, "_maxR", maxRange, "_minR", minRange, ".txt", sep = "");
  saveRDS(results, file = fileName);
}

run_tests <- function() {
  for(j in 1:10) {
    for(i in 1:28) {
      sel_type <- "rand";
      co_type <- "bin";
      save_file(sel_type, co_type, i, j);
      
      sel_type <- "avg";
      save_file(sel_type, co_type, i, j);
      
      co_type <- "exp";
      save_file(sel_type, co_type, i, j);
      
      sel_type <- "rand";
      save_file(sel_type, co_type, i, j);    
    }
  }
}

main <- function() {
  NP <- 100; # population count
  CR <- 0.1; # crossover factor 0.1
  FC <- 0.5; # selection factor 0.5
  run_tests();
  
  CR <- 0.5
  run_tests();
  
  CR <- 0.7;
  run_tests();
  
  CR <- 0.9;
  run_tests();
  
  CR <- 0.1;
  FC <- 0.1;
  run_tests();
  
  FC <- 0.7;
  run_tests();
  
  NP <- 10; # population count
  CR <- 0.1; # crossover factor 0.1
  FC <- 0.5; # selection factor 0.5
  run_tests();
  
  CR <- 0.5
  run_tests();
  
  CR <- 0.7;
  run_tests();
  
  CR <- 0.9;
  run_tests();
  
  CR <- 0.1;
  FC <- 0.1;
  run_tests();
  
  FC <- 0.7;
  run_tests();
  
  NP <- 1000; # population count
  CR <- 0.1; # crossover factor 0.1
  FC <- 0.5; # selection factor 0.5
  run_tests();
  
  CR <- 0.5
  run_tests();
  
  CR <- 0.7;
  run_tests();
  
  CR <- 0.9;
  run_tests();
  
  CR <- 0.1;
  FC <- 0.1;
  run_tests();
  
  FC <- 0.7;
  run_tests();
  
  
  
#   run_tests();
#   
#   NP <- 100;
#   
#   run_tests();
#   
#   NP <- 10;
#   CR <- 0.5;
#   
#   run_tests();
#   
#     
#   NP <- 100;
#   CR <- 0.5;
#   
#   run_tests();
  
}

main();


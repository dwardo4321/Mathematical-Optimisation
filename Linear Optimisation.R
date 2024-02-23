install.packages("lpSolve")
library(lpSolve)

objective_fun_coeff <- c(6,8,1,2)

constraint_matrix <- matrix(c(1,2,-1,0,2,1,1,1), byrow = T, ncol = 4)

constraint_direct <- c(">=", ">=")

constraint_rhs <- c(3, 2)

opti <- lp(direction = "min", objective.in = objective_fun_coeff, 
   const.dir = constraint_direct, const.mat = constraint_matrix,
   const.rhs = constraint_rhs)

opti$solution

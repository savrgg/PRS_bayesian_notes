# simple simulation 
library(rstan)
options(mc.cores = parallel::detectCores()).
rstan_options(auto_write = TRUE)
Sys.setenv(LOCAL_CPPFLAGS = '-march=native')

fit <- 
  rstan::stan(
    file = "stan_scripts/0-data-simulation-example.stan", 
    algorithm = "Fixed_param")


#https://mc-stan.org/workshops/dec2017/exercises_1_2_curse_of_dim.html#6
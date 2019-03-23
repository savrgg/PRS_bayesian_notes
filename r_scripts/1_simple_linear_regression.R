library(rstan)
options(mc.cores = parallel::detectCores())

N = 100
y = rnorm(N, mean=5, sd=10)

stanfit <- 
  stan(
    file = "stan_scripts/simple_linear_regression.stan",
    data=c("N","y")
  )

print(stanfit)

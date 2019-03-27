data {
  real alpha;
  real beta;
  real <lower = 0> sigma;
}

model {
  
}

generated quantities {
  real y[10];
  real x[10];
  for (n in 1:10){
    x[n] = normal_rng(0,1);
    y[n] = normal_rng(alpha * x[n] + beta, sigma);
  }
}

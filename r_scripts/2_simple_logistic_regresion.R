
# with glm -----
# simulate the data

x <- rnorm(100, mean = 5)
y <- rbinom(n = 100, size = 1, prob = invlogit(-20+4*x))
df <- data.frame(x = x, y = y)
fit <- glm(y ~ x, family = binomial)

df1 <- 
  ciTools::add_ci(df, fit, names = c("lwr", "upr", alpha = 0.1)) %>% 
  dplyr::mutate(type = "parametric")

df2 <- 
  ciTools::add_ci(df, fit, type = "boot", names = c("lwr", "upr"), alpha = 0.1, nSims = 500) %>% 
  dplyr::mutate(type = "bootstrap")

df <- dplyr::bind_rows(df1, df2)




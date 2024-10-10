# if you cannot run the code here, you should open the entire folder, not the "code" folder, or you can simply change the directory below
datadir <- ".\\datasets\\prostate.csv"
prostate_data <- read.csv(datadir)
xnames <- names(prostate_data)[names(prostate_data) != "lpsa"]
yname <- "lpsa"
data <- prostate_data[xnames]
X <- as.matrix(data)
y <- prostate_data[[yname]]
dimensions <- dim(data)
N <- nrow(data)
p <- ncol(data)
X <- cbind(rep(1, N), X)
gamma_ <- matrix(0, p + 1, p + 1)
z <- matrix(1, N, p + 1)
beta_ <- rep(0, p + 1)
for (j in 2 : (p + 1)){
  for (l in 1 : (j - 1)){
    gamma_[l, j] <- (z[, l] %*% X[, j]) / (z[, l] %*% z[, l])
  }
  z[, j] <- X[, j]
  for (k in 1 : (j - 1)){
    z[, j] <- z[, j] - gamma_[k, j] * z[, k]
  }
}
for (i in 1 : (p + 1)){
  gamma_[i, i] <- 1
}
for (i in 1 : (p + 1)){
  norm_tmp <-  sqrt(z[, i] %*% z[, i])
  z[, i] <- z[, i] / norm_tmp
  gamma_[i, ] <- gamma_[i, ] * norm_tmp
}
z %*% gamma_ - X
m <- rep(0, p + 1)
for (i in 1 : (p + 1)){
  m[i] <- z[, i] %*% y
}
beta_ <- backsolve(gamma_, m)
beta_





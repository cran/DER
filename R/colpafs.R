colpafs <- function(y, a) {
  y <- Rfast::eachrow( y, Rfast::colmeans(y), oper = "/" )
  dm <- dim(y)
  n <- dm[1]  ;  p <- dm[2]
  h <- 4.7 / sqrt(n) * Rfast::colVars(y, std = TRUE) * a^0.1  ## bandwidth
  res <- matrix(0, p, ncol = 4)
  colnames(res) <- c("paf", "alienation", "identification", "1 + rho")
  rownames(res) <- colnames(y)
  for ( i in 1:p ) {
    d <- Rfast::vecdist(y[, i])
    fhat <- Rfast::rowmeans( exp( -0.5 * d^2 / h[i]^2 ) ) / sqrt(2 * pi) / h[i]
    fhata <- fhat^a
    #paf <- sum( fhata * d ) / n^2
    paf <- sum( Rfast::eachcol.apply(d, fhata) ) / n^2
    alien <- mean(d)
    ident <- mean(fhata)
    rho <- paf / (alien * ident) - 1
    res[i, ] <- c(paf, alien, ident, 1 + rho)
  }
  res
}







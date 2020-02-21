#' myncurve
#'
#' @param mu The mean
#' @param sigma The standarad deviation
#' @param a The point used for the probability of a certain set of values.
#'
#' @return A Normal curve with the probability region shaded and also returns
#' the value of the probability
#' @export
#'
#' @examples
#' myncurve(5, 5, 5)
myncurve = function(mu, sigma, a){
  curve(dnorm(x,mean=mu,sd=sigma), xlim = c(mu-3*sigma, mu + 3*sigma))
  xcurve = seq((mu - 3 * sigma), a, length=1000)
  ycurve = dnorm(xcurve, mean = mu, sd = sigma)
  polygon(c(mu - 3*sigma, xcurve, a), c(0, ycurve, 0), col = "Red")
  print(paste("P( X <= ", a, ") = ",
              pnorm(a, mean = mu, sd = sigma)), quote = FALSE)
}

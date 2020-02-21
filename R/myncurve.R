#' myncurve
#'
#' @param mu The mean of the normal curve.
#' @param sigma The sd of the normal curve
#' @param a The endpoint for the probability.
#'
#' @return A normal curve with an area from -infinity to a shaded in.
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

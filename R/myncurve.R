#' myncurve
#'
#' @param mu The mean for the normal distribution
#' @param sigma The standard deviation for the normal distribution
#' @param a The right endpoint for the probability of the distribution.
#'
#' @return A normal plot with the area from -infinity to a shaded in
#' and the probability of the x falling into that area.
#' @export
#'
#' @examples
#' myncurve(5, 5, 5)
myncurve = function(mu, sigma, a){
  curve(dnorm(x,mean=mu,sd=sigma), xlim = c(mu-3*sigma, mu + 3*sigma))
  xcurve = seq((mu - 3 * sigma), a, length=1000)
  ycurve = dnorm(xcurve, mean = mu, sd = sigma)
  polygon(c(mu - 3*sigma, xcurve, a), c(0, ycurve, 0), col = "Red")
  print(paste("P( X <= ", a, ") = ", pnorm(a, mean = mu, sd = sigma)), quote = FALSE)
}

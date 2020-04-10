#' myci
#'
#' @param x A sample to be tested
#'
#' @return The 95% percent confidence interval for a single sample for mu.
#' @export
#'
#' @examples
#' set.seed(23);x = rnorm(30,mean=10,sd=12)
#' myci(x)
myci = function(x) {
  t=qt(0.95,length(x) - 1)
  ci=c()
  ci[1]=mean(x)-t*sd(x)/sqrt(length(x))
  ci[2]=mean(x)+t*sd(x)/sqrt(length(x))
  ci
}

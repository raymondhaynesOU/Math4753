% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/myboot2.R
\name{myboot2}
\alias{myboot2}
\title{myboot2}
\usage{
myboot2(iter = 10000, x, fun = "mean", alpha = 0.05, ...)
}
\arguments{
\item{iter}{The amount of samples generated.}

\item{x}{A given sample.}

\item{fun}{The function that will be tested.}

\item{alpha}{The alhpa value for the confidence interval.}

\item{...}{Any extra modifications that will be made to the histogram generated.}
}
\value{
A list of multiple values calculated.
}
\description{
myboot2
}
\examples{
myboot2(iter = 10000, x = sam, fun = "var", alpha = .1)
}

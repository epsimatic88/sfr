% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/arith.R
\name{Ops.sfg}
\alias{Ops.sfg}
\title{S3 Ops Group Generic Functions (multiply and add/subtract) for affine transformation}
\usage{
\method{Ops}{sfg}(e1, e2)
}
\arguments{
\item{e1}{object of class \code{sfg}}

\item{e2}{numeric; in case of multiplication an n x n matrix, in case of addition or subtraction a vector of length n, with n the number of dimensions of the geometry}
}
\value{
object of class \code{sfg}
}
\description{
Ops functions for simple feature geometry objects (constrained to multiplication and addition)
}
\examples{
st_point(c(1,2,3)) + 4
st_point(c(1,2,3)) * 3 + 4
m = matrix(0, 2, 2)
diag(m) = c(1, 3)
# affine:
st_point(c(1,2)) * m + c(2,5)
}

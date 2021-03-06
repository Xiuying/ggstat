% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/count.R
\name{compute_count_vec}
\alias{compute_count_vec}
\title{Count unique observations (vector).}
\usage{
compute_count_vec(x, w = NULL)
}
\arguments{
\item{x}{A logical vector, a factor, a double or integer vector (or
S3 object with \code{\link{restore}()} method), or a character vector.}

\item{w}{Optionally, a vector of weights. If present, weights are summed
instead of counting observations. In other words, the default behaviour
is to assign weight 1 to each point.}
}
\value{
A data frame with columns:
 \item{x_}{value (same type as \code{x})}
 \item{count_}{number of observations/sum of weights (numeric)}
}
\description{
This function is very similar to table except that: it counts missing values
if present, can use weights, only does 1d, returns a 2 column data frame
instead of a named vector, and is much much faster.
}
\examples{
compute_count_vec(sample(100, 1e4, rep = TRUE))
compute_count_vec(sample(c(TRUE, FALSE, NA), 1e4, rep = TRUE))
}
\keyword{internal}


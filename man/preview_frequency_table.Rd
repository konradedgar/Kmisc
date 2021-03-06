% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/preview-frequency-table.R
\name{preview_frequency_table}
\alias{preview_frequency_table}
\title{Preview Frequency Tables}
\usage{
preview_frequency_table(x, ...)
}
\arguments{
\item{x}{A vector.}

\item{...}{Other arguments passed to \code{\link[base]{table}}.}
}
\value{
A matrix with frequency values of a vector
}
\description{
Simple function showing frequencies of vector by combining
  results from \code{\link[base]{table}} and \code{\link[base]{prop.table}}.
}
\examples{
preview_frequency_table(x = c("a", rep("b", 3)))

}

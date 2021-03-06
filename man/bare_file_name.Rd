% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bare-file-name.R
\name{bare_file_name}
\alias{bare_file_name}
\title{Get Bare File Name}
\usage{
bare_file_name(x)
}
\arguments{
\item{x}{A character vector with a file path(s)}
}
\value{
A character vector corresponding to file name without path and
  extension.
}
\description{
The function provides bare file name without path and extension.
}
\examples{
bare_file_name(tempfile(pattern = "some_file", fileext = ".ext"))

}

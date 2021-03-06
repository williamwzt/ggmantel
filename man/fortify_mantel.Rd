% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fortify-mantel.R
\name{fortify_mantel}
\alias{fortify_mantel}
\title{Fortify a mantel's test data to data.frame}
\usage{
fortify_mantel(gdis, mdis, gdist_fun = "vegdist",
  mdist_fun = "vegdist", mantel_fun = "mantel",
  gdist_params = list(), mdist_params = list(), process = TRUE, ...)
}
\arguments{
\item{gdis}{a list of dissimilarity matrices, data.frame or a dist objects.}

\item{mdis}{a list of dissimilarity matrices, data.frame or a dist objects.}

\item{gdist_fun}{a string of distance function, it is used to handle `gdis` parameter.}

\item{mdist_fun}{a string of distance function, it is used to handle `mdis` parameter.}

\item{mantel_fun}{a string of mantel's test function.}

\item{gdist_params}{a list of extra params passing to `gdist_fun`.}

\item{mdist_params}{a list of extra params passing to `mdist_fun`.}

\item{process}{logical, if TRUE cat processing bar.}

\item{...}{a list of extra params passing to `mantel_fun`.}
}
\description{
\code{fortify_mantel()}  provides a unified interface for mantel's test, specifying different
distance function (now support \code{\link[stats]{dist}} and \code{\link[vegan]{vegdist}}) and different mantel's test functions (
(now support \code{\link[vegan]{mantel}}, \code{\link[ade4]{mantel.rtest}} and \code{\link[ade4]{mantel.randtest}}).
}
\details{
For every element in `gdis` and `mdis`, if no unique name is specified, it will be automatically setted by
"gdis" or "mdis" with a incremental number.
}
\examples{
library(vegan)
data(varespec)
data(varechem)
fortify_mantel(varechem, list(spec = varespec))
}
\seealso{
\code{\link[vegan]{vegdist}}, \code{\link[vegan]{mantel}}, \code{\link[ade4]{mantel.rtest}} and
\code{\link[ade4]{mantel.randtest}}.
}

\name{webuse}
\alias{webuse}
\alias{webuselist}
\alias{webuse-package}
\title{webuse}
\description{Import Stata \sQuote{webuse} Datasets}
\usage{
    webuse(data, version = 14, envir = parent.frame())
    
    webuselist
}
\arguments{
  \item{data}{A character string containing the name of a Stata dataset.}
  \item{version}{An integer indicating the version of Stata for which to retrieve the named dataset. Default is version 14 (current as of June, 2015).}
  \item{envir}{An environment in which to store the object. By default, this will be the parent environment (often the global environment).}
}
\details{
\code{webuse} retrieves a named Stata dataset from Stata's server and loads it as a named object in the specified environment.

\code{webuselist} provides a named list of (some of) the datasets available. Use \code{names(webuselist)} to retrieve the datasets.
}
\value{A data.frame, invisibly.}
\references{
\href{http://www.stata.com/help.cgi?webuse}{Stata webuse manual}
}
\author{Thomas J. Leeper}
%\note{}
%\seealso{}
\examples{
webuse("auto")
"auto" %in% ls()

webuse("uslifeexp")
"uslifeexp" %in% ls()
}
%\keyword{}

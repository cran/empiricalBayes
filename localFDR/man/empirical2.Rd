% --- Source file: localFDR-internal.Rd ---
\name{localFDR-internal}
\alias{default.tolerance}
\title{ For programmers only. (Not to be called by the user.) }
\description{Finds a tolerance based on the minimum difference between each two elements for any vector.}
\usage{
	default.tolerance(x)
}
\arguments{ 
	\item{x}{ a vector}
}
	 
	  
\details{
	None.}
\value{
  Returns a numeric object of one value between 0 and 1.
}
\references{
	None }
\author{ Zahra Montazeri(\email{zahra@math.carleton.ca}), David R. Bickel (\email{DavidBickel.66846716@bloglines.com}, \url{http://www.davidbickel.com
}) }
\seealso{This function is used by \code{\link{find.alternative.prob.threshold}}, \code{\link{priorFDR}} and \code{\link{localFDR}}.}
\keyword{ htest}
\keyword{nonparametric}

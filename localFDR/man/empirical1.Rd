% --- Source file: localFDR-internal.Rd ---
\name{localFDR-internal}
\alias{default.alternative.prob.threshold}
\title{ For programmers only. (Not to be called by the user.) }
\description{Find a grid for the lowest probability that an alternative hypothesis can have it to be true based on number of features.}
\usage{
	default.alternative.prob.threshold (nfeatures)
}
\arguments{ 
	\item{nfeatures}{ number of features, for example, the number of genes on a microarray }
}
	 
	  
\details{
	None.}
\value{
  Returns a numeric object with all values between 0 and 1.
}
\references{
	None }
\author{ Zahra Montazeri(\email{zahra@math.carleton.ca}), David R. Bickel (\email{DavidBickel.66846716@bloglines.com}, 
\url{http:/www.davidbickel.com}) }
\seealso{This function is used by \code{\link{find.alternative.prob.threshold}}, \code{\link{priorFDR}} and \code{\link{localFDR}}.}
\keyword{ htest}
\keyword{nonparametric}




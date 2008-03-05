
% --- Source file: HighProbability-package.Rd ---
\name{HighProbability-package}
\alias{HighProbabiliy-package}
\alias{HighProbability}
\docType{package}
\title{HighProbability package overview}
\description{
   HighProbability provides a simple, fast, reliable solution to the multiple testing problem. Given a vector of p-values or 		achieved significance levels computed using standard frequentist 	inference, HighProbability determines which ones are low enough 	that their alternative hypotheses can be considered highly 		probable. The p-value vector may be determined using existing R 	functions such as t.test, wilcox.test, cor.test, or sample. 		HighProbability can be used to detect differential gene expression and to solve other problems involving a large number of 
	hypothesis tests.
}
\details{
Important functions:

 \code{\link{alternative.probable}} determines which alternative hypotheses have sufficiently high probability of truth for acceptance. 

\code{\link{alternative.beneficial}} determines which alternative hypotheses should be accepted according to a decision-theoretic approach.
}

\author{ David R. Bickel (\email{DavidBickel.66846716@bloglines.com}, \url{http://www.davidbickel.com}) , Zahra Montazeri (\email{zahra@math.carleton.ca})
 } 
\keyword{package}
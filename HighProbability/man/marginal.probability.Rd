
 % --- Source file: marginal.probability.Rd ---
\name{marginal.probability}
\alias{marginal.probability}
 \title{ Proportion of alternative hypotheses that are true}
\description{This function estimates the proportion of alternative hypotheses that are true}
\usage{
	marginal.probability(p.values, min.probability=0.5, max.iteration=10, tolerance=get.marginal.probability.tolerance(), verbose=FALSE)
}
\arguments{ 
	\item{p.values}{ a vector of p-values}
 	 \item{min.probability}{ the lowest posterior probability of an alternative hypothesis for it to be considered true. }
	  \item{max.iteration}{number of iterations if the estimates do not converge.}
	  \item{tolerance}{the difference in proportion estimates that defines convergence, the default value is 0.005.}
	  \item{verbose}{if TRUE, additional diagnostics are printed} 
}
\details{
	None.}
\value{
 The return value is a numeric vector of length 1 representing the estimate of the proportion of alternative hypotheses that are true.
}
\references{
 Bickel, D. R. (2004) "HighProbability determines which alternative hypotheses are highly probable: Genomic applications include detection of differential gene expression," arXiv.org e-print ID q-bio.QM/0402049. Available  on-line at \url{http://arxiv.org/abs/q-bio.QM/0402049} 
 }


\author{ David R. Bickel (\email{DavidBickel.66846716@bloglines.com}, \url{http://www.davidbickel.com}) , Zahra Montazeri (\email{zahra@math.carleton.ca}) }
\seealso{This function is used by \code{\link{alternative.probable}} and \code{\link{alternative.beneficial}}.}
\keyword{ htest}
\keyword{nonparametric}

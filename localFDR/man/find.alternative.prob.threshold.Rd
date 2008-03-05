
% --- Source file: find.p1.Rd ---
\name{localFDR-internal}
\alias{find.alternative.prob.threshold}
\title{For programmers only. (Not to be called by the users.) }
\description{
 Estimates the probabilities that the alternative hypotheses are true
}
\usage{
find.alternative.prob.threshold(p.values, alternative.prob.threshold=default.alternative.prob.threshold(), marginal.probability= NULL, max.iteration=10, tolerance=cal.marginal.probability.tolerance(default.alternative.prob.threshold()), plot.relative.gain = FALSE, call.browser=FALSE, verbose = TRUE)
}
\arguments{
  \item{p.values}{a vector of p-values that have not been corrected for multiple comparisons. For example, p-values may be calculated from \code{wilcox.test} or \code{cor.test} for two groups, or from \code{lm} for multiple groups. Alternately, permutation-based p-values (achieved significance levels) may be calculated using \code{sample}. }
  \item{alternative.prob.threshold}{ a numeric object, with each element between 0 and 1, that determines the space of possible estimates of the probability that an alternative hypothesis is true: more elements enable more precise estimates at the expense of computation speed. }
  \item{marginal.probability}{ a known or estimated lower bound on the proportion of p-values that correspond to true alternative hypotheses. The default action is to estimate and print marginal.probability.}
   \item{max.iteration}{ number of iterations if the estimates of the proportion of true null hypotheses do not converge.}
  \item{tolerance}{number specifying how close two successive estimates of the proportion of true null hypotheses are to constitute convergence.}
  \item{plot.relative.gain}{ if TRUE, the relative desirability will be plotted as a function of the significance level. }
  \item{call.browser}{ if TRUE, the debugging facilities are used.}
  \item{verbose}{if TRUE, additional diagnostics are printed}
  }
\details{
  See the following references for details.
}
\value{
  These functions return a minimum probability that an alternative hypothesis can have it to be considered true.
}
\references{
Bickel, David R. (2004) Error-Rate and Decision-Theoretic Methods of Multiple Testing: Which Genes Have High Objective Probabilities of Differential Expression?, \emph{ Statistical Applications in Genetics and Molecular Biology} \bold{ 3}: Iss. 1, Article 8 . Available on-line at \url{ http://www.bepress.com/sagmb/vol3/iss1/art8}

 Bickel, D. R. (2004) "HighProbability determines which alternative hypotheses are highly probable: Genomic applications include detection of differential gene expression," arXiv.org e-print ID q-bio.QM/0402049. Available  on-line at \url{http://arxiv.org/abs/q-bio.QM/0402049} 
 }


\author{  Zahra Montazeri (\email{zahra@math.carleton.ca}),  David R. Bickel (\email{DavidBickel.66846716@bloglines.com}, \url{http://www.davidbickel.com
}) }
\seealso{ \code{\link{priorFDR}}, \code{\link{localFDR}},  \code{\link{t.test}}, \code{\link{wilcox.test}}, \code{\link{cor.test}}, \code{\link{lm}}, \code{\link{sample}} }
\keyword{ htest }
\keyword{ nonparametric }


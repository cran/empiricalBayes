
% --- Source file: priorFDR.Rd ---
\name{priorFDR}
\alias{priorFDR}
\title{ prior false discovery rate}
\description{
 estimates the proportion of null hypotheses that are true. It is an empirical Bayes estimate of the prior probability that any given null hypothesis is true.
}
\usage{
priorFDR (p.values, ...)
}
\arguments{
  \item{p.values}{a vector of p-values that have not been corrected for multiple comparisons. For example, p-values may be calculated from \code{wilcox.test} or \code{cor.test} for two groups, or from \code{lm} for multiple groups. Alternately, permutation-based p-values (achieved significance levels) may be calculated using \code{sample}. }
  \item{...}{any other arguments for \code{priorFDR} which are passed unchanged to \code{marginal.probability} each time it is called. \code{marginal.probability} is low-level function not intended to be called by the typical user.  }
}
\details{
  See the following references for details.
}
\value{
  The return value is a numeric vector of length 1 representing the estimate of the proportion of null hypotheses that are true. It is an empirical Bayes estimate of the prior probability that any given null hypothesis is true.
}
\references{
Bickel, David R. (2004) Error-Rate and Decision-Theoretic Methods of Multiple Testing: Which Genes Have High Objective Probabilities of Differential Expression?, \emph{ Statistical Applications in Genetics and Molecular Biology} \bold{ 3}: Iss. 1, Article 8 . Available on-line at \url{http://www.bepress.com/sagmb/vol3/iss1/art8}

 Bickel, D. R. (2004) "HighProbability determines which alternative hypotheses are highly probable: Genomic applications include detection of differential gene expression," arXiv.org e-print ID q-bio.QM/0402049. Available  on-line at \url{http://arxiv.org/abs/q-bio.QM/0402049} 
 }

\author{  Zahra Montazeri (\email{zahra@math.carleton.ca}),  David R. Bickel (\email{DavidBickel.66846716@bloglines.com}, 
\url{http://www.davidbickel.com}) }
\seealso{ \code{\link{localFDR}}, \code{\link{t.test}}, \code{\link{wilcox.test}}, \code{\link{cor.test}}, \code{\link{lm}}, \code{\link{sample}}
\code{\link[HighProbability]{marginal.probability}}
 }
\examples{
n.variables <- 10000

 # This could be the number of genes on a microarray.

n.individuals <- 5

 # This could be the number of microarrays per group.

n.effects <- 1000 

# This is the number of alternative hypotheses that are true, e.g., number of genes differentially expressed.

x1 <- matrix(c(rnorm(n.effects * n.individuals, mean = 2, sd = 1), rnorm((n.variables - n.effects) * n.individuals, mean = 0, sd = 1)), nrow = n.variables, byrow = TRUE) 

# Observed data, e.g., logarithms of gene expression ratios, for group 1.

x2 <- matrix(rnorm(n.variables * n.individuals, mean = 0, sd = 1), nrow = n.variables, byrow = TRUE) 

# The same for group 2.

p.values <- numeric(n.variables)

for(i in 1:n.variables) p.values[i] <- t.test(x1[i, ], x2[i, ])$p.value

(prior.false.discovery.rate <- priorFDR(p.values))
}
\keyword{ htest }
\keyword{ nonparametric }


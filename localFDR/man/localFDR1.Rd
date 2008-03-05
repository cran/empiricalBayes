
% --- Source file:localFDR.Rd ---

\name{localFDR}
\alias{localFDR}
\title{local false discovery rate}
\description{
estimates the local false discovery rate corresponding to each null hypothesis. Unlike the p-value, the local false discovery rate approximates a posterior probability that the null hypothesis is true.
}
\usage{
localFDR (p.values, threshold, prior.fdr, tolerance, ...)
}
\arguments{
  \item{p.values}{a vector of p-values that have not been corrected for multiple comparisons. For example, p-values may be calculated from \code{wilcox.test} or \code{cor.test} for two groups, or from \code{lm} for multiple groups. Alternately, permutation-based p-values (achieved significance levels) may be calculated using \code{sample}. }
  \item{threshold}{a numeric object, with each element between 0 and 1, that determines the space of possible estimates of the probability that a null hypothesis is true: more elements enable more precise estimates at the expense of computation speed. }
  \item{prior.fdr}{ an estimate of the proportion of null hypotheses that are true or a prior probability that any given null hypothesis is true. If this argument is missing, it takes the value returned by \code{\link{priorFDR}}. }
\item{tolerance}{the floating point tolerance to be used in the test of convergence used to compute the default value of \code{prior.fdr}.}
  \item{...}{any other arguments for \code{localFDR} which are passed unchanged to \code{find.alternative.prob.threshold}, a low-level function not intended  to be called by the typical user.
}
}
\details{
  Unlike the p-value, the local false discovery rate approximates a posterior probability that the null hypothesis is true. See the following references for additional details.
}
\value{
  Object of class numeric of the same length as the p.values argument. Each element represents an estimate of the local false discovery rate corresponding to a null hypothesis. 
}
\references{
Bickel, David R. (2004) Error-Rate and Decision-Theoretic Methods of Multiple Testing: Which Genes Have High Objective Probabilities of Differential Expression?, \emph{ Statistical Applications in Genetics and Molecular Biology} \bold{ 3}: Iss. 1, Article 8 . Available on-line at \url{http://www.bepress.com/sagmb/vol3/iss1/art8}

 Bickel, D. R. (2004) "HighProbability determines which alternative hypotheses are highly probable: Genomic applications include detection of differential gene expression," arXiv.org e-print ID q-bio.QM/0402049. Available  on-line at \url{http://arxiv.org/abs/q-bio.QM/0402049} 
}
\author{  Zahra Montazeri (\email{zahra@math.carleton.ca}),  David R. Bickel (\email{DavidBickel.66846716@bloglines.com}, 
\url{http://www.davidbickel.com}) }
\seealso{ \code{\link{priorFDR}}, \code{\link{find.alternative.prob.threshold}}, \code{\link{t.test}}, \code{\link{wilcox.test}}, \code{\link{cor.test}}, \code{\link{lm}}, \code{\link{sample}} }
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

local.false.discovery.rate <- localFDR(p.values)

plot(p.values,local.false.discovery.rate, main="localFDR",xlab="p-value", ylab="local false discovery rate estimate")
}

\keyword{ htest }
\keyword{ nonparametric }


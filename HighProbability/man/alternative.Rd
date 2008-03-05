
% --- Source file: alternative.probable.Rd ---
\name{alternative.probable}
\alias{alternative.probable}
\alias{alternative.beneficial}
\title{alternative hypotheses accepted by empirical Bayes analysis}
\description{
  alternative.probable determines which alternative hypotheses have sufficiently high probability of truth for acceptance. 

alternative.beneficial determines which alternative hypotheses should be accepted according to a decision-theoretic approach.
}
\usage{
alternative.probable(p.values, min.probability=0.5, marginal.probability = NULL, max.iteration=10, tolerance=get.marginal.probability.tolerance(), plot.relative.gain = FALSE, call.browser=FALSE)
alternative.beneficial(p.values, cost.to.benefit=1, marginal.probability = NULL, max.iteration=10, tolerance=get.marginal.probability.tolerance(), plot.relative.gain = FALSE)
}
\arguments{
  \item{p.values}{ a vector of p-values that have not been corrected for multiple comparisons. For example, p-values may be calculated from \code{wilcox.test} or \code{cor.test} for two groups, or from \code{lm} for multiple groups. Alternately, permutation-based p-values (achieved significance levels) may be calculated using \code{sample}. }
  \item{min.probability}{ the lowest posterior probability of an alternative hypothesis for it to be true. This probability is conditional on the p-value and thus on the test statistic used to generate the p-value. }
  \item{cost.to.benefit}{ the ratio of the cost of accepting a false alternative hypothesis to the benefit of accepting a true alternative hypothesis. For example, in a microarray study, one may specify the expense of follow up studies needed to investigate a gene that only seems to be differentially expressed, divided by the enonomic or other benefit of finding a gene that really is differentially expressed. }
  \item{marginal.probability}{ a known or estimated lower bound on the proportion of p-values that correspond to true alternative hypotheses. The default action is to estimate and print marginal.probability. Printing may be suppressed by supplying 0 or some other value. }
   \item{max.iteration}{ number of iterations if the estimates of the  marginal probability do not converge.}
  \item{tolerance}{the difference in proportion estimates that defines convergence, the default value is 0.005.}
  \item{plot.relative.gain}{ If TRUE, the relative desirability will be plotted as a function of the significance level. }
  \item{call.browser}{ if TRUE, the debugging facilities are used.}
}
\details{
  See the following references for details.
}
\value{
  Each of these functions returns a logical vector with the same length as p.values. If an element in the vector is TRUE, then the corresponding p-value is low enough to warrant considering its alternative hypothesis true. The vector returned indicates which null hypotheses are considered true and which are considered false, based either on belief (for alternative.probable) or on a cost/benefit decision analysis (for alternative.beneficial).
}
\references{
Bickel, David R. (2004) Error-Rate and Decision-Theoretic Methods of Multiple Testing: Which Genes Have High Objective Probabilities of Differential Expression?, \emph{ Statistical Applications in Genetics and Molecular Biology} \bold{ 3}: Iss. 1, Article 8 . Available on-line at \url{http://www.bepress.com/sagmb/vol3/iss1/art8}

 Bickel, D. R. (2004) "HighProbability determines which alternative hypotheses are highly probable: Genomic applications include detection of differential gene expression," arXiv.org e-print ID q-bio.QM/0402049. Available  on-line at \url{http://arxiv.org/abs/q-bio.QM/0402049} 
 }
\author{ David R. Bickel (\email{DavidBickel.66846716@bloglines.com}, \url{http://www.davidbickel.com}) , Zahra Montazeri (\email{zahra@math.carleton.ca}) } 
\seealso{ \code{\link{marginal.probability}}, \code{\link{t.test}}, \code{\link{wilcox.test}}, \code{\link{cor.test}}, \code{\link{lm}}, \code{\link{sample}} }
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

is.probable <- alternative.probable(p.values) 

# Selects which alternative hypotheses are probably true, e.g., which genes are probably differentially expressed.

c(sum(is.probable[1:1000]), sum(is.probable[1001:10000])) 

# Numbers of true and false calls of differential expression.

is.probable.90 <- alternative.probable(p.values, min.probability = .90) 

# To be at least 90% confident of any call of differential expression.

c(sum(is.probable.90[1:1000]), sum(is.probable.90[1001:10000])) 

# Smaller numbers of true and false calls of differential expression.

is.beneficial <- alternative.beneficial(p.values, cost.to.benefit = 1)

all.equal(is.beneficial, is.probable)
}
\keyword{ htest }
\keyword{ nonparametric }




\name{cordata}
\alias{cordata}
\title{Correlation and Cohen's d effect sizes.}
\description{This function calculates the correlation for the data and Cohen's d effect sizes, both based on pooled an on treatment standard deviations.}
\usage{cordata("Before","After",data)}
\arguments{
  \item{Before}{a numeric vector giving the data values for the first (before) measure.}
  \item{After}{a numeric vector giving the data values for the second (after) measure.}
  \item{data}{an optional data frame containing the variables in the formula. By \code{default} the variables are taken from \code{environment (formula)}.}
}
\details{This function computes the correlation between both measures as also both effect sizes based on Cohen's d statistic.

The inputs mus be numeric.}
\value{Return a table containing the correlation, effect size pooled and effect size based on treatment.}
\references{
Cohen, J. (1988). Statistical power analysis for the behavioral sciences (2nd ed.). New York:Academic Press.}
\author{Daniela R. Recchia, Thomas Ostermann.}
\seealso{\link[effsize]{cohen.d},\link[stats]{cor}}
\examples{
cordata("Before","After",data=language_test)}

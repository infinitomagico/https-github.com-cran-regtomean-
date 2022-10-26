\name{meechua_eff.CI}
\alias{meechua_eff.CI}
\title{Calculates and plots treatment and regression effects as also its p-values.}
\description{This function calculates and plots treatment and regression effects of both before and after measures as also its p-values.}
\usage{meechua_eff.CI(x,n,se.after)}
\arguments{
  \item{x}{a data frame containing the results from \code{meechua_reg}. It is stored as \code{mod_coef.}}
  \item{n}{the original sample size (number of observations) from data.}
  \item{se.after}{the estimated standard error from \code{meechua_reg}. It is stored as \code{se.after}.}}
\details{After performing the \code{meechua_reg} the model coefficients \code{mod_coef} as also its global variable \code{se.after} are used as input in this function to estimate treatment and regression effects.}
\value{Two plots are performed, the first "Treatment Effect and p-value" and the second "Confidence Intervals" for \code{mu}.}
\references{Ostermann, T., Willich, Stefan N. & Luedtke, Rainer. (2008). Regression toward the mean - a detection method for unknown population mean based on Mee and Chua's algorithm. BMC Medical Research Methodology.}
\author{Daniela R. Recchia, Thomas Ostermann}
\seealso{\link[regtomean]{meechua_reg}}
\examples{
# First perform replicate_data and meechua_reg
replicate_data(50,60,"Before","After",data=language_test)
mee_chua_sort <- mee_chua[with(mee_chua,order(mu)),]
meechua_reg(mee_chua_sort)

# Model coeeficients (mod_coef) and se.after are stored in the environment
# as a result from the function meechua_reg
meechua_eff.CI(mod_coef,8,se.after)}


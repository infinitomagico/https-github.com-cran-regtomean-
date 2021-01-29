\name{meechua_reg}
\alias{meechua_reg}
\title{Fit linear models on the (replication) data.}
\description{This function fit linear models for a subset of data frames.}
\usage{meechua_reg(x)}
\arguments{
  \item{x}{Data to be used in the regression.}}
\details{
The data used for the regression must be sorted by \code{mu}.

A set of linear \code{models} will be estimated and model coefficients are saved and stored in \code{mod_coef}.

The estimated standard errror for the \code{after} measure is also stored in \code{se_after} to be used further in other functions.}
\value{
A table containing the estimations for each \code{mu}.
Global variables \code{models}, \code{mod_coef}, \code{se_after} are stored for further analysis.}
\references{
Ostermann, T., Willich, Stefan N. & Luedtke, Rainer. (2008). Regression toward the mean - a detection method for unknown population mean based on Mee and Chua's algorithm. BMC Medical Research Methodology.}
\author{Daniela R. Recchia, Thomas Ostermann.}

\seealso{\link[stats]{lm},\link[plyr]{dlply}}
\examples{
#sort mu ##
replicate_data(language_test,50,60,"Before","After",data=language_test)
mee_chua_sort <- mee_chua[with(mee_chua,order(mu)),]

meechua_reg(mee_chua_sort)}



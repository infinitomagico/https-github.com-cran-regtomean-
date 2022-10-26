\name{meechua_plot}
\alias{meechua_plot}
\title{Plot models from \code{meechua_reg}}
\description{This functions plots all 4 diagnostics plots for each linear regression model: "Residuals vs Fitted", "Normal Q-Q", "Scale-Location" and "Residuals vs Leverage".}
\usage{meechua_plot(x)}
\arguments{
  \item{x}{List containing the estimated linear models from\code{meechua_reg}. It is stored as \code{models}.}}
\details{For each model from \code{models} 4 diagnostic plots are performed. For the first model the numbers 1 to 4 should be given, for the second model numbers from  to 8 to 12, and so on.}
\value{Diagnostics plots for the set of models from \code{meechua_reg}.}
\references{
Ostermann, T., Willich, Stefan N. & Luedtke, Rainer. (2008). Regression toward the mean - a detection method for unknown population mean based on Mee and Chua's algorithm. BMC Medical Research Methodology.}
\author{Daniela R. Recchia, Thomas Ostermann.}

\seealso{\link[stats]{plot.lm},\link[regtomean]{meechua_reg}}
\examples{
# models are an output from meechua_reg
replicate_data(50,60,"Before","After",data=language_test)
mee_chua_sort <- mee_chua[with(mee_chua,order(mu)),]
meechua_reg(mee_chua_sort)

#models are the output from meechua_reg saved in the environment after running the function
meechua_plot(models)}


\name{replicate_data}
\alias{replicate_data}
\title{Replicates before and after values 100 times.}
\description{This function replicates 100 times the before and after values giving a start and end reference.}
\usage{replicate_data(x,start,end,by=NULL,Before,After,data=NULL)}
\arguments{
  \item{x}{a data frame containing the variables to be analyzed.}
  \item{start}{a start value for mu.}
  \item{end}{an end value for mu.}
  \item{by}{an increment for the sequence, if not informed (default) the increment is caluculated as the difference between \code{end}-\code{start}.}
  \item{Before}{a numeric vector giving the data values for the first (before) measure.}
  \item{After}{a numeric vector giving the data values for the second (after) measure.}
  \item{data}{an optional data frame containing the \code{before} and \code{after} variables in the formula. By \code{default} the variables are taken from \code{environment (formula)}}.}
\details{
In order to overcome the limitation of Mee and Chua's test regarding the population mean \code{mu} a replication of the data is performed.

After replicating the data the unknown population mean \code{mu}  is systematically estimated over a range of values. Further estimations will be based on this new dataset.}
\value{Return a data frame named \code{mee_chua} containing the values for \code{mu}, \code{before} and \code{after}.}
\references{
Ostermann, T., Willich, Stefan N. & Luedtke, Rainer. (2008). Regression toward the mean - a detection method for unknown population mean based on Mee and Chua's algorithm. BMC Medical Research Methodology.

Galton, F. (1886). Regression towards mediocrity in heriditary stature. Journal of the Anthropological Institute (I5: 246-263).}
\author{Daniela R. Recchia, Thomas Ostermann.}
\seealso{\link[base]{rep}}
\examples{replicate_data(language_test,50,60,"Before","After",data=language_test)}

########################################################################################
# Print the summary of each model
#' @export
#' @import plyr
#' @import graphics
#' @import sjPlot
#' @import sjmisc
#' @import sjlabelled
meechua_plot<-function(x){
  #library(plyr)
  #library(sjPlot)
  #library(sjmisc)
  #library(sjlabelled)
  l_ply(x, plot, .print = TRUE)
}

#meechua_plot(models)

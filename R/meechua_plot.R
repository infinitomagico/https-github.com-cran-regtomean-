########################################################################################
# Print the summary of each model
#' @export
#' @import graphics
#' @import sjPlot
#' @import sjmisc
meechua_plot<-function(x){
  #library(dplyr)
  #library(sjPlot)
  #library(sjmisc)
  plyr::l_ply(x, plot, .print = TRUE)
}

#meechua_plot(models)

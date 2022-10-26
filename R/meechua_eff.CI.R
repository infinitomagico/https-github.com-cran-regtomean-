#################################################################################
# calculating treatment effects, regression effects and p-values;
#' @export
#' @import stats
#' @import plotrix
#' @import graphics
meechua_eff.CI<-function(x,n,se.after){
  #library(plotrix)
  e.mu<- x[,1]/100
  treatment<- x[,2]-x[,1]/100
  t<-treatment/se.after
  m<-mean(treatment)
  error <- qt(0.975,df=n-2)*se.after
  lower <- treatment-error
  upper <- treatment+error

  p<-pt(t,df=n-2,lower.tail=F)

  twoord.plot(e.mu,treatment,e.mu,p,lylim=c(min(treatment),max(treatment)),rylim=c(0,1),lytickpos=seq(round(min(treatment),1),round(max(treatment),1), by = 0.2),rytickpos=seq(0,1, by = 0.2),main="Treatment Effect and p-value",ylab="Treatment Effect",rylab="p-value",type=c("l","l"),xlab="mu")

  plotCI(e.mu,treatment,error,xlab="mu", pt.bg=par("bg"),pch=21,lwd=2,scol="gray",main="Confidence Intervals")
}

#meechua_eff.CI(mod_coef,8,se.after)


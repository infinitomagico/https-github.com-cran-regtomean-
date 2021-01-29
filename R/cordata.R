################## Correlation and Effect Sizes ##############################
#' @export
#' @import stats
#' @import effsize
#' @import formattable
cordata <-
  function(Before,After,data=NULL){
      if(!is.null(data)){
        Correlation<-with(data,round(cor(Before,After),2))
        ### pooled ###
        #library(effsize)
        ef_pol<-with(data,round(cohen.d(After,Before)$estimate,2))
        #### based on treatment ####
        ef_std<-with(data,round(cohen.d(After,Before, pooled=FALSE)$estimate,2))
        }
      else {
      Correlation<-round(cor(Before,After),2)
      ef_pol<- round(cohen.d(After,Before)$estimate,2)
      ef_std<- round(cohen.d(After,Before, pooled=FALSE)$estimate,2)
      }
      #library(formattable)

cor_table<-cbind(Correlation,ef_pol,ef_std)
second<-as.data.frame(cor_table)
names(second)[1]<-"Correlation"
names(second)[2]<-"Effect size (pooled sd)"
names(second)[3]<-"Effect size (based on treatment sd)"

formattable(second,
            align =c("l","c","r"),
            list(`Indicator Name` = formatter("span", style = ~ style(color = "grey",font.weight = "bold"))
            ))
  }
#load("language_test.RData")
#cordata("Before","After",data=language_test)


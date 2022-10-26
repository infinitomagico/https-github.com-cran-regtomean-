################## # regression analysis for each mu ############################
#' @export
#' @import plyr
#' @import stats
#' @import formattable
### data must be ordered by mu ###
#mee_chua_sort <- mee_chua[order(mu),]
meechua_reg<-function(x){
   #library(plyr)

    models <- dlply(mee_chua_sort, "mu", function(df)
    lm(after~before, data = df))

  mod_coef<-ldply(models, coef)

  results <- ldply(models,function(i)coef(summary(i)))
  se<-results[,"Std. Error"]
  se.after<- se[seq(1,length(se),2)]

  Variable<-rep(c("Before","Intercept"),times=101)
  res_model_tab<-cbind(Variable,results)
  res_model_tab<-as.data.frame(res_model_tab)

  models<<-models
  mod_coef<<-mod_coef
  se.after<<-se.after

  formattable(res_model_tab,
              align =c("l","c","c","c","c","r"),
              list(`Indicator Name` = formatter("span", style = ~ style(color = "grey",font.weight = "bold"))
              ))
  }

#meechua_reg(mee_chua_sort)

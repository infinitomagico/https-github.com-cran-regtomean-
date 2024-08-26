################## # regression analysis for each mu ############################
#' @export
#' @import stats
#' @import formattable
### data must be ordered by mu ###
meechua_reg<-function(x, to_global = T){
  
  models <- plyr::dlply(x, "mu", function(df)
    lm(after~before, data = df))
  
  mod_coef<-plyr::ldply(models, coef)
  
  results <- plyr::ldply(models,function(i)coef(summary(i)))
  se<-results[,"Std. Error"]
  se_after<- se[seq(1,length(se),2)]
  
  Variable<-rep(c("Before","Intercept"),times=101)
  res_model_tab<-cbind(Variable,results)
  res_model_tab<-as.data.frame(res_model_tab)
  
  if(to_global){
    models<<-models
    mod_coef<<-mod_coef
    se_after<<-se_after
  }
  
  formattable(res_model_tab,
              align =c("l","c","c","c","c","r"),
              list(`Indicator Name` = formatter("span", style = ~ style(color = "grey",font.weight = "bold"))
              ))
  return(invisible(list(models = models, mod_coef = mod_coef, se_after = se_after)))
}
#####################################################################
#*copying the data set 100 times;
#' @export
#' @import formattable
#' @import mefa
replicate_data<- function(x,start,end,by=NULL,Before,After,data=NULL){
  #library(mefa)
  table2<-rep(x,101)
  mu<-seq(start*100,end*100, by=(end-start))
  mu<-rep(mu,each=nrow(x))

  if(!is.null(data)){
    before<-with(data,Before-mu/100)
    after<- data$After
  }
  else {
    before<-Before-mu/100
    after<- After
  }
  mee_chua<-cbind(mu,before,after)
  mee_chua<-as.data.frame(mee_chua)

  formattable(mee_chua,
              align =c("l","c","r"),
              list(`Indicator Name` = formatter("span", style = ~ style(color = "grey",font.weight = "bold"))
              ))
  mee_chua<<-mee_chua
  print(mee_chua)
  }

#replicate_data(language_test,50,60,"Before","After",data=language_test)

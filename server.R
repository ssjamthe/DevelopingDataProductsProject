library(datasets)
library(caret)
fit<-with(mtcars,lm(mpg ~ factor(am) + wt + hp))
shinyServer( function(input, output) {
    output$wt<-renderText({input$wt})
    output$hp<-renderText({input$hp})
    output$tt<-renderText({input$tt})
    predicted<-reactive({predict(fit,newdata=data.frame(am=ifelse(input$tt=="automatic",0,1),wt=input$wt,hp=input$hp))})
    output$predicted<-renderText({predicted()})  
  }
)

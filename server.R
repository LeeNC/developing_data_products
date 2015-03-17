data( ToothGrowth)
best_model<-lm(len ~ ., data=ToothGrowth)
mylen <- function(dose, supp){
        if(supp =='Orange Juice'){
                supp='OJ'
        } else {
                supp='VC'
        }
        predict_data <- data.frame(supp,dose)
        colnames(predict_data) <- c( 'supp', 'dose')
        my_predict<-predict(best_model,predict_data)
        my_predict
} 
shinyServer(
        
        function(input, output) {
                output$inputValue <- renderText({input$dose})
                output$selectValue <- renderText({input$supp})
                output$prediction <- renderText({mylen(input$dose,input$supp)})
        }
)
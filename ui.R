shinyUI(
        fluidPage(
                verticalLayout(
                        h3('The Effect of Vitamin C on Tooth Growth in Guinea Pigs'),
                        h4('This shiny application allows you to predict the tooth length based on the type of Vitamin C and the dosage. A linear regression model is built on the ToothGrowth dataset. In order to predict the tooth growth, enter the dosage and select the vitamin C type below.'),
                        splitLayout(
                                mainPanel(
                                        h3('Input Area'),
                                        numericInput('dose','Dosage in milligrams', 0.01, min = 0.01, max = 10), 
                                        selectInput('supp', 'Vitamin C Type', choices = c('Orange Juice'='Orange Juice','Ascorbic Acid'='Ascorbic Acid')),
                                        submitButton('Submit')
                                        
                                ),
                                mainPanel(
                                        h3('Results of prediction'),
                                        h4('You entered dosage as'),
                                        verbatimTextOutput("inputValue"),
                                        h4('You selected the vitamin C type as'),
                                        verbatimTextOutput("selectValue"),
                                        h4('Which resulted in a prediction of '),
                                        verbatimTextOutput("prediction")
                                        
                                )
                        )
                        
                        
                )
        )
)
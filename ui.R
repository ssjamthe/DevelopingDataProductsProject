shinyUI(pageWithSidebar( headerPanel("MPG Prediction"), 
                         sidebarPanel(
                           numericInput(inputId="wt", label = "Weight",value = 2,min = 0.5,max = 10), 
                           numericInput(inputId="hp", label = "Horse Power",value = 110,min = 10,max = 3000),
                           radioButtons("tt", label = "Transmission Type",
                                        choices = list("Automatic" = "automatic", "Manual" = "manual"
                                                       ),selected = "automatic"),
                           submitButton("submit", "Submit")
), mainPanel( tabsetPanel(tabPanel('Prediction',h3('Result of prediction'),
              h4('Weight (lb/1000)'),
              verbatimTextOutput('wt'),
              h4('Gross Horsepower'),
              verbatimTextOutput('hp'),
              h4('Transmission Type'),
              verbatimTextOutput('tt'),
              h4('Predicted MPG'),
              verbatimTextOutput('predicted')
  
),tabPanel('Help',h4('Training Data set'),
           p('This app uses R mtcars data set for training the model'),
           a('More Info',href='https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/mtcars.html'),
           h4('Prediction Model'),
           p('This app uses linear regression model to predict the mpg using input variables as predictors'),
           h4('Input Fields'),
           p('weight  - lb/1000'),
           p('Gross Horsepower'),
           p('Transmission Type - Automatic or Manual'),
           h4('Output'),
           p('mpg -	Miles/(US) gallon'))

)
)))
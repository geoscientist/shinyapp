
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(datasets)
library(MASS)

data("mtcars")
raw_model <- lm(mpg ~ ., data=mtcars)
best_model <- stepAIC(raw_model)

shinyServer(function(input, output) {

  output$scatterPlot <- renderPlot({

    # generate bins based on input$bins from ui.R
    x    <- mtcars
    dat <- data.frame(input$wt, input$qs, input$am)
    
    # draw the histogram with the specified number of bins
    plot(x$wt, x$qs, col = x$mpg, border = 'white')

  })

})


# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(datasets)

shinyServer(function(input, output) {
  
    # linear model
    fit <- reactive({ lm(mtcars[, input$predicted] ~ mtcars[, input$predictor]) })

    # render a simple regression model formula    
    output$text <- renderPrint({
      paste("Formula is ", input$predicted, " = ", fit()$coefficients[1], " + (", fit()$coefficients[2], ") *", input$predictor)
    })
    
    # scatterplot
    output$plot <- renderPlot({
    plot(mtcars[,input$predictor], mtcars[, input$predicted], col = "blue", pch = 18)
    abline(fit(), col = "red")

    })
      })   
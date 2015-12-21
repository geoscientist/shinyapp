
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
    x    <- faithful[, 2]
    bins <- seq(min(x), max(x), length.out = input$bins + 1)

    # draw the histogram with the specified number of bins
    plot(x, breaks = bins, col = 'darkgray', border = 'white')

  })

})

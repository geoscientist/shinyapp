
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(datasets)

shinyUI(fluidPage(

  # Application title
  titlePanel("Fuel consumption prediction"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      numericInput("wt",
                  label = h3("Car weight"),
                  min = 1, max = 6, value = 2, step = .1),
      numericInput("qs",
                    label = h3("Seconds per mile"),
                   17,
                   min = 7, max = 25, step = .1),
      selectInput("am",
                    label = h3("Select transmission type"),
                    choices = c(0, 1),
                  selected = 0
                  )
    ),

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("scatterPlot")
    )
  )
))


# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Fuel consumption prediction"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      numericInput(label = h3("Car weight"),
                  "Weight:", 2.0,
                  min = 1, max = 6),
      numericInput(label = h3("Seconds per mile"),
                   "qsec:", 17.0,
                   min = 7, max = 25),
      checkboxInput(inputId = "transmission",
                    label = strong("Show density estimate"),
                    value = FALSE)
    ),

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
))

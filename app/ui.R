
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(datasets)

shinyUI(fluidPage(

  # Application title
  titlePanel("Simple interactive regression plot"),

  # Sidebar with a two selected inputs
  sidebarLayout(
    sidebarPanel(
      selectInput("predicted",
                  label = h5("Select predicted variable"),
                  choices = names(mtcars),
                  selected = names(mtcars)[1]
      ),
      selectInput("predictor",
                    label = h5("Select predictor variable"),
                    choices = names(mtcars),
                  selected = names(mtcars)[4]
                  )),


    # Show a regression formula and scatterplot of selected features
    mainPanel(
      textOutput("text"),
      plotOutput("plot")
     )
  )
))

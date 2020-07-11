#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Car Mileage prediction"),
    p("This assignment is for Shiny Application and Reproducible Pitch. The data is taken from dataset mtcars. This model takes two values: No. of Cylinders and Weight of the car. "),
    p("Input the value of no. of cylinders and weight of the car in below inputs to get the approximate range of Mileage of the car "),
    p("No. of Cyliners: whole nos."),
    p("Weight of the car:in 1000 lbs"),
    p("Mileage of the car: in MPG"),
    p("lower value= 37.29677-2.402365*cyl-4.769929*wt"),
    p("mean value= 40.898313-1.784173*cyl-3.583425*wt"),
    p("upper value= 44.49985-1.165981*cyl-2.396921*wt"),

    # Input Values
    sidebarLayout(
        sidebarPanel(
            numericInput("cyl", "No. of Cyliners in whole nos.", 2, min = 1, step = 1,),
            numericInput("wt", "Weight of the car (in 1000 lbs)", 2, min = 0, step = 0.1,),

        ),

        # Show a plot of the generated distribution
        mainPanel(
            h3("Lower Limit of MPG"),
            textOutput("lower"),
            h3("Mean value of MPG"),
            textOutput("mean"),
            h3("Upper Limit of MPG"),
            textOutput("upper"),
        )
    )
))

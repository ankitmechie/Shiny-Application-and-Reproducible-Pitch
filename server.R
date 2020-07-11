#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)


# Define logic for mileage prediction
shinyServer(function(input, output) {
    
    output$lower<-renderText({37.29677-2.402365*input$cyl-4.769929*input$wt
        
    })
    output$mean<-renderText({40.898313-1.784173*input$cyl-3.583425*input$wt
        
    })
    output$upper<-renderText({44.49985-1.165981*input$cyl-2.396921*input$wt
        
    })
    
})

# Blake Benton
# CIS 4730
# 3.19.2018

library(shiny)
library(tidyverse)

data(iris)
str(iris)

my_ui <- fluidPage(
  h2("Iris Data Explorer"),
  selectInput(inputId = "select", # provides a dropdown box
              label = "Species:",
              choices = c("all", "setosa", "versicolor", "virginica"),
              selected = "versicolor"),
  sliderInput(inputId = "slider", # provides a slider for selection
              label = "Max Sepal Length:",
              min = 4.3, max = 7.9, step = .4,
              value = 5.2),
  
  dataTableOutput(outputId = "main_table"),
  plotOutput(outputId = "main_plot")
)

my_server <- function(input, output) {
  output$main_table <- renderDataTable({ # creates the interactive data table
    data = iris %>% 
      filter(Species == input$select,
             Sepal.Length <=input$slider)
    
    if(input$select == "All"){
      return(data_all)
    } else{
      return(data)
    }
    
    return(data)
  })
  
  output$main_plot <- renderPlot({ # creates the histogram
    data = iris %>% 
      filter(Species == input$select,
             Sepal.Length <= input$slider)

  new_plot = hist(data$Sepal.Length, 
    breaks = 3,
    main="Histogram of the Sepal Length Among the Matched Cases" )
  
    return(new_plot)
  })
  
}

shinyApp(ui = my_ui, server = my_server)


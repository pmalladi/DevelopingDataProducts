library(shiny)

# Define UI for application that lists countries with population in the given range

shinyUI(fluidPage(
  
  # Application Title
  titlePanel("Top 40 countries by population"),
  
  # Sidebar with a slider input for the population range selection
  sidebarLayout(
    sidebarPanel(
      sliderInput("populationRank",
                  paste("To use the app, select a country by it's rank by using the below slider. \n The country name and it's map are displayed as a result. \n The below maps (not to scale) are rendered using 'Maps' package"),
                  min = 1,
                  max = 40,
                  value = 1,
                  animate = TRUE
                  ),
      width = 8
    ),
    
    mainPanel(
      h1(textOutput("country")),
      plotOutput("map")
    )
  )
))

library(shiny)

# Define UI for application that lists countries with population in the given range

shinyUI(fluidPage(
  
  # Application Title
  titlePanel("Top 40 countries by population"),
  
  # Sidebar with a slider input for the population range selection
  sidebarLayout(
    sidebarPanel(
      #textInput("The below maps are rendered from [R] Maps package", label = h3("Text Input")),
      sliderInput("populationRank",
                  paste("Select a Rank to get the country name and map (Not to Scale). ______________ The below maps are rendered using [R] Maps Package"),
                  min = 1,
                  max = 40,
                  value = 1,
                  animate = TRUE
                  ),
      width = 8
    ),
    
    mainPanel(
      textOutput("country"),
      plotOutput("map")
    )
  )
))

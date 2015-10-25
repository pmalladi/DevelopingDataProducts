library(maps)
library(mapdata)

shinyServer(function(input, output) {
  fileName <- "Countries_And_Population.csv"
  popData <- read.csv2(fileName, sep = ",")
  output$map <- renderPlot({map('worldHires',popData$Country[input$populationRank])})
  output$country <- renderText({paste(popData$Country[input$populationRank])})
})

library(maps)
library(mapdata)

fileName <- "Countries_And_Population.csv"
popData <- read.csv2(fileName, sep = ",")

shinyServer(function(input, output) {
  output$map <- renderPlot({map('worldHires',popData$Country[input$populationRank])})
  output$country <- renderText({paste(popData$Country[input$populationRank])})
})

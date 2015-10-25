library(maps)
library(mapdata)

shinyServer(function(input, output) {
  fileName <- paste(getwd(), "/", "R Workspace/Module_9/Project/population/Countries_And_Population.csv", sep = "")
  popData <- read.csv2(fileName, sep = ",")
  output$map <- renderPlot({map('worldHires',popData$Country[input$populationRank])})
  output$country <- renderText({paste(popData$Country[input$populationRank])})
})

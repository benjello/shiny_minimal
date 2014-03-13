library(shiny)
library(rCharts)
library(ggplot2)

shinyServer(function(input, output) {
  
  hair_eye <- reactive({subset(as.data.frame(HairEyeColor), Sex == input$varSex)})
  
  output$plot <- renderChart({
    n <- nPlot(Freq ~ Hair, group = "Eye", data = hair_eye(), type = 'multiBarChart')
    n$set(dom = 'plot', width = 700,height=380)
    n
  })
  
  output$ggplot <- renderPlot({
    p <- qplot(wt, mpg, data = subset(mtcars,cyl==input$varCyl))
    p + geom_abline(intercept = 20)
    print(p)
  })
    
})


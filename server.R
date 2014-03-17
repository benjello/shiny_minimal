library(shiny)
library(rCharts)
library(ggplot2)

shinyServer(function(input, output) {
  
  output2<-subset(output2,select=-code)
  #output2$description<-as.character(output2$description)
  #output2$value<-factor(output2$value)
  data<-reactive({subset(output2, loyer==input$varLoyer)})
  
  output$plot <- renderChart({
    n <- nPlot(data = data(),value~sali, group = "description",  type = 'lineChart')
    n$set(dom = 'plot', width = 700,height=380)
    n
  })

#   output$ggplot <- renderPlot({
#     #p <- qplot(wt, mpg, data = subset(mtcars,cyl==input$varCyl))
#     #p + geom_abline(intercept = 20)
#     p <- ggplot(data=subset(output2,loyer==1000), aes(x = sali, y=value, color=description, group=description)) + geom_line()
#     print(p)
#   })
  
#   output$fisca <- renderChart({
#     n <- nPlot()
#   })
    
})


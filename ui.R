library(shiny)
library(rCharts)

shinyUI(pageWithSidebar(
  
  headerPanel("Grand titre"),
  
  sidebarPanel(
    
    selectInput('varSex',
                'Choose sex:',
                levels(as.data.frame(HairEyeColor)$Sex)),
    selectInput('varCyl',
                'Choose cyl:',
                c(4,6,8))
    
  ),
    
  mainPanel(
    showOutput("plot","nvd3"),
    plotOutput("ggplot")
  )

))
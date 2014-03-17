library(shiny)
library(rCharts)

shinyUI(pageWithSidebar(
  
  headerPanel("Exemple OpenFisca"),
  
  sidebarPanel(
    
    selectInput('varLoyer',
                'Loyer:',
                c(1000,3000))
  ),
    
  mainPanel(
    showOutput("plot","nvd3")
  )

))
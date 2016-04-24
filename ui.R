library(shiny)
library(ggplot2)

dataset <- diamonds

shinyUI(fluidPage(
  
  title = "Compound Effect",

  fluidRow(
    column(2,
           h4("Target Gene Cycle"),
           numericInput("A1", 
                        label = h5("Dose 1"), 
                        value = 20),
           numericInput("A2", 
                        label = h5("Dose 2"),
                        value =21 ),
           numericInput("A3", 
                        label = h5("Dose 3"),
                        value = 22),
           numericInput("A4", 
                        label = h5("Dose 4"),
                        value = 23),
           numericInput("A5", 
                        label = h5("Dose 5"),
                        value = 24),
           numericInput("A6", 
                        label = h5("Control Group"),
                        value = 25)
    ),
    column(2,
           h4("Internal Control Gene Cycle"),
           numericInput("B1", 
                        label = h5("Dose 1"), 
                        value = 25),
           numericInput("B2", 
                        label = h5("Dose 2"),
                        value = 25),
           numericInput("B3", 
                        label = h5("Dose 3"),
                        value = 25),
           numericInput("B4", 
                        label = h5("Dose 4"),
                        value = 25),
           numericInput("B5", 
                        label = h5("Dose 5"),
                        value = 25),
           numericInput("B6", 
                        label = h5("Control Group"),
                        value = 25)
    ),
    
    column(6,
           h4("This app is to calculate the mRNA expression in six well plate by data from qRT-PCR"),
           h4("Input the cycles of target gene and control gene in qRT-PCR, the Initial concentration of compound and choose the dilute times"),
           h4("The app will caculate the relative gene expression of target gene and draw a plot"),
           plotOutput("plot1")
    )
    ),

  fluidRow(
    column(3,
           h4("Concentration"),
           numericInput("Con",
                        label = h5("Initial Concentration"),
                        value=20
  ),
    sliderInput("dilute", label = h5("dilute times"),
                     min = 2, max = 10, value = 5))
)
)
)

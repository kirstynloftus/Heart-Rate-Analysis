#loading libraries
library(shiny)
library(ggplot2)
library(dplyr)

#loading data
HeartData <- read.csv("DoE_Project_Data.csv", stringsAsFactors = TRUE)
HeartData <- HeartData[, -c(6:8)]
colnames(HeartData) <- c('ExerciseType', 'InclineRate', 'StartRate', 'EndRate',
                         'ChangeRate')

ui <- fluidPage(

    
    titlePanel("Heart Rate Analysis Dashboard"),
    
    sidebarLayout(
        sidebarPanel(
            selectInput("exercise", "Choose Exercise Type:", choices = c("walk", "run")),
            selectInput("direction", "Choose Direction:", choices = c("up", "down"))
        ),

        
        mainPanel(
           tabsetPanel(
             tabPanel("Heart Rate by Exercise Type", plotOutput("exercisePlot")),
             tabPanel("Heart Rate by Direction", plotOutput("directionPlot")),
             tabPanel("Summary Statistics", verbatimTextOutput("summaryStats")),
             tabPanel("Heart Rate Changes Across Factors", plotOutput("factorsPlot"))
           )
        )
    )
)

server <- function(input, output) {

    output$exercisePlot <- renderPlot({
        data_filtered <- HeartData %>% filter(ExerciseType == input$exercise)
        
        ggplot(data_filtered, aes(x = ExerciseType, y = ChangeRate)) +
          geom_boxplot() + 
          labs(title = paste("Heart Rate Change during", input$exercise), x = "Exercise Type", y = "Change in Heart Rate (bpm)") +
          theme_minimal()
    })
    
    output$directionPlot <- renderPlot({
      data_filtered <- HeartData %>% filter(InclineRate == input$direction)
      
      ggplot(data_filtered, aes(x = InclineRate, y = ChangeRate)) +
        geom_boxplot() + 
        labs(title = paste("Heart Rate Change during", input$direction, "Incline"), x = "Direction", y = "Changes in Heart Rate (bpm)") +
        theme_minimal()
    })
    
    output$summaryStats <- renderPrint({
      data_filtered <- HeartData %>% 
        filter(ExerciseType == input$exercise, InclineRate == input$direction)
      summary(data_filtered$ChangeRate)
    })
    
    output$factorsPlot <- renderPlot({
      ggplot(HeartData, aes(x = interaction(ExerciseType, InclineRate), y = ChangeRate,
                            fill = interaction(ExerciseType, InclineRate))) +
        geom_boxplot() +
        labs(x = "Exercise Type and Incline Rate", y = "Change in Heart Rate (BPM)",
             title = "Changes in Heart Rate by Exercise Type and Incline Rate") +
        theme_minimal()
    })
}

shinyApp(ui = ui, server = server)

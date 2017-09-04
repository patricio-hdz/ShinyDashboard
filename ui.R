
#GGPLOT DASHBOARD

library(shinydashboard)

ui <- #dashboardPage(
  fluidPage(theme = shinytheme("cerulean"),
            navbarPage("Crimenes",
                       tabPanel("Analisis Temporal",
                                fluidPage(#theme = shinytheme("cyborg"),
                                  
                                  titlePanel("Frecuencias relativas vs Totales"),
                                  
                                  sidebarLayout(
                                    sidebarPanel(
                                      #textInput("caption", "Caption:", "Data Summary"),
                                      selectInput("category", "Choose a category:", 
                                                  choices = c("CUAUHTEMOC","GUSTAVO A MADERO","IZTACALCO",
                                                              "VENUSTIANO CARRANZA","IZTAPALAPA","MILPA ALTA",
                                                              "TLAHUAC","XOCHIMILCO","ALVARO OBREGON","CUAJIMALPA",
                                                              "AZCAPOTZALCO","MIGUEL HIDALGO","BENITO JUAREZ","COYOACAN",
                                                              "MAGDALENA CONTRERAS","TLALPAN")),
                                      
                                      tags$head(
                                        tags$style(HTML("
                                                        
                                                        .multicol {
                                                        
                                                        -webkit-column-count: 3; /* Chrome, Safari, Opera */
                                                        
                                                        -moz-column-count: 3; /* Firefox */
                                                        
                                                        column-count: 3;
                                                        
                                                        }"))
        
                                        )
                                      
                                      #wellPanel( tags$div(class = "multicol", checkboxGroupInput("choices", label = NULL, choices = levels(data$Vocabulary), selected = "extropy"))
                                      #)
                                        ),
                                    
                                    mainPanel(
                                      fluidRow(
                                        tags$head(
                                          tags$style(
                                            HTML(
                                              '
                                              #view{
                                              text-align:center;
                                              }
                                              '
                                            )
                                            )
                                            ),
                                        
                                        h3(textOutput("category", container = span)),
                                        plotOutput("view"),
                                        tableOutput("table")
                                            )
                                        )
                                    ))),
                       tabPanel("Overview",fluidPage(
                         # Application title
                         titlePanel("Analisis por Tipo de Crimen"),
                         
                         sidebarLayout(
                           # Sidebar with a slider and selection inputs
                           sidebarPanel(
                             selectInput("selection", "Choose a delegacion:",
                                         choices = c("COYOACAN")),
                             actionButton("update", "Change"),
                             hr(),
                             sliderInput("freq",
                                         "Minimum Frequency:",
                                         min = 1,  max = 1000, value = 100),
                             sliderInput("max",
                                         "Maximum Number of Words:",
                                         min = 1,  max = 300,  value = 100)
                           ),
                           
                           # Show Word Cloud
                           mainPanel(
                             #plotOutput("plot")
                           )
                         )
                       ))#HASTA AQUI
                       
                                )
            
                                )
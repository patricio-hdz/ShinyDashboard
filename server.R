
#GGPLOT DASHBOARD

server <- function(input, output) {
  
  output$category <- renderText({
    paste("Campaign ",input$category," vs Campaign2", sep="")
  })
  
  funtable <- reactive({
    Y1 <- dat %>%
      group_by(bymonth,municipio) %>% 
      filter(municipio == input$category) %>%
      summarise(Frequency = sum(count))   
    
    Y1$bymonth <- as.yearmon(Y1$bymonth)
    Y1
  })
  

  
  output$table <- renderTable({
    funtable()
  })

  output$view <- renderPlot({
    #ggplot( data = Y1, aes(x = bymonth,y = Frequency )) + geom_bar(stat = "identity")
    ggplot( data = funtable(), aes(x = bymonth))  + 
      geom_line(aes(y = Frequency), colour="blue") +
      ylab(label="Cantidad de Crimenes") +
      xlab("Fechas por mes")
  })
 
  }
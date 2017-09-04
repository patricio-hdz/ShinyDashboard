
server <- function(input, output) {

  texts <- reactive({print(input$municipio)})
  dat_time <- reactive({
    Y1 <- dat %>%
      group_by(bymonth,municipio) %>% 
      filter(municipio == input$municipio) %>%
    summarise(Frequency = sum(count))   
    
    Y1$bymonth <- as.yearmon(Y1$bymonth)
    Y1
      })
  
  output$tiempo <- renderText({
    texts()
    #print(ggplot( data = dat_time(), aes(x = bymonth,y = Frequency )) + geom_col())
  })
}
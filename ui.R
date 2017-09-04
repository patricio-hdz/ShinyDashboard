library(shinydashboard)

ui <- dashboardPage(
  dashboardHeader(title = "Crímenes"),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Análisis Temporal", tabName = "temporal", icon = icon("calendar"),
               selectInput("municipio","Selecciona un municipio:",
                           choices = c("COYOACAN","TLALPAN"))),
      menuItem("Análisis por tipo de délito", tabName = "tipos", icon = icon("legal")),
      menuItem("Análisis Espacial", tabName = "tipos", icon = icon("map-o"))
    )
  ),
  dashboardBody(
    tabItems(
      # First tab content
      tabItem(tabName = "temporal",
              mainPanel(fluidRow(
                textOutput("tiempo")
              )
      )),
      
      # Second tab content
      tabItem(tabName = "widgets",
              h2("Widgets tab content")
      )
    )
  )
)

#GGPLOT DASHBOARD

  if(!require(dplyr, quietly = TRUE, warn.conflicts = FALSE) ){
    install.packages('dplyr',
                     dependencies = TRUE, 
                     repos = "http://cran.us.r-project.org")
  }  

  
  if(!require(shinydashboard, quietly = TRUE, warn.conflicts = FALSE) ){
    install.packages('shinydashboard',
                     dependencies = TRUE, 
                     repos = "http://cran.us.r-project.org")
  }
  


  if(!require(shiny, quietly = TRUE, warn.conflicts = FALSE) ){
    install.packages('shiny',
                     dependencies = TRUE, 
                     repos = "http://cran.us.r-project.org")
  }

  if(!require(zoo, quietly = TRUE, warn.conflicts = FALSE) ){
    install.packages('zoo',
                     dependencies = TRUE, 
                     repos = "http://cran.us.r-project.org")
  }
  
  if(!require(shinythemes, quietly = TRUE, warn.conflicts = FALSE) ){
    install.packages('shinythemes',
                     dependencies = TRUE, 
                     repos = "http://cran.us.r-project.org")
  }
  
  if(!require(ggplot2, quietly = TRUE, warn.conflicts = FALSE) ){
    install.packages('ggplot2',
                     dependencies = TRUE, 
                     repos = "http://cran.us.r-project.org")
  }
  
  library(shiny)
  library(shinydashboard)
  #library(leaflet)
  library(dplyr)
  library(zoo)
  library(ggplot2)
  library(shinythemes)
  #library(curl)
  
latlong <- read.csv("~/Semestre3/ShinyDashboard_PatricioHernandez/cuadrantes.csv/clean-data/crime-lat-long.csv", header = TRUE)
hoyocrimen <- read.csv("~/Semestre3/ShinyDashboard_PatricioHernandez/cuadrantes.csv/clean-data/cuadrantes-hoyodecrimen.csv", header = TRUE)

hoyocrimen$date <- as.Date(hoyocrimen$date)

dat <- hoyocrimen %>%
  mutate(bymonth = format(date, "%Y-%m")) %>%
  select(bymonth, municipio,count)

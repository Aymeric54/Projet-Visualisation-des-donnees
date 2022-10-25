#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

#J'utilise un dashboard déjà tout fait avec la library shinydashboard
  dashboardPage(
    
    dashboardHeader(title = "App Kilian - Aymeric"),
    
    dashboardSidebar(
      sidebarMenu(
        menuItem("Jeu de données", tabName = "Jeu_de_donnees", icon = icon("dashboard")),
        menuItem("Widgets", tabName = "widgets", icon = icon("th"))
      )
    ),
    
    dashboardBody(
      tabItems(
        #First tab content
        tabItem(tabName = "Jeu_de_donnees",
                fluidRow(
                  box(style='width:1000px;overflow-x: scroll;height:400px;overflow-y: scroll;',
                      title = "Données Biathlon",
                      dataTableOutput("TableBiathlon"), width = 1000)
                )
        ),
        
        # Second tab content
        tabItem(tabName = "widgets",
                h2("Widgets tab content")
        )
      )
    )
        
        
        
    )
))

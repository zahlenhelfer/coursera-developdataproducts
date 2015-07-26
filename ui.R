library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("YABMIC - Yet Another Body Mass Index Calculator, this time it´s shiny"),
  sidebarPanel(
    h3('Inputs to use:'),
    numericInput('weight', 'weight (kg)', 85),
    numericInput('length', 'length (cm)', 185)
  ),
  mainPanel(
    hr(),
    h4("BMI Metric Result:"),
    textOutput("BMIMetric"),
    h4('Metric Description'),
    textOutput("stateDescription"),
    hr(),
    h4('Instructions'),
    helpText("BMI Formular - Kilogramm dividet by length with power of two"),
    helpText("This application will calculate the body mass index (BMI). It gives you a Metric and description your weightstatus."),
    helpText("Disclaimer: BMI calculation is only implemented for adults. Ask a doctor for proper validation."),
    code("Length"),
    helpText("The length in cm. If you are used to inches then (1 inch = 2.54 centimeters)"),
    code("Weight"),
    helpText("Enter your weight in kg, if you are used to lbs then (lbs * 0.45359237 = kg)")
  )
))
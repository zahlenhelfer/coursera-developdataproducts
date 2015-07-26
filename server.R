library(shiny)
shinyServer(
  function(input, output){
     output$BMIMetric <- renderText({calculateBMI(input$length, input$weight)})
     output$stateDescription <- renderText({calculateState(calculateBMI(input$length, input$weight))})
  }
)

calculateBMI <- function(length, weight)
{
	lengthInMeters <- length / 100.0
	result <- weight / (lengthInMeters * lengthInMeters)
	return(round(result, digits = 2))
}

calculateState <- function(bmi) 
{
	if (bmi<18.5){
	  return("underweight - be aware!")
	}
	
	if (bmi<25){
		return("normal weight - everything ok")
	}

	if (bmi<30){
		return("overweight - get fit!")
	}
	
	return("OMG - massive overweight, get fit or call a docotor!")
}
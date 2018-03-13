#trim survey_data to find out the total gender participation in formal education
employment_status <- subset(survey_data, GENDER != '', c('GENDER', 
																												 'EMPLOYMENT.STATUS'))

#count how many ocurrencies of each gender there are and create a csv file
write.csv(table(employment_status), file="employment_status.csv")	

#creates a "Employment status by gender" bar graph
library(plotly)

Genders <- c("Woman", "Man", "Non binary")
eft <- c(64, 65, 35.8)
ept <- c(8.8, 5.8, 12.8)
fts <- c(19.2, 18.1, 25.6)
r <- c(0, 1.7, 2.5)
tnw <- c(3.2, 5.8, 10.2)
data <- data.frame(Genders, eft, ept, fts, r, tnw)


p <- plot_ly(data, x = ~Genders, y = ~eft, type = 'bar', name = 'Employed full time',  
						marker = list(color = 'rgb(19,70,187)')) %>%
  add_trace(y = ~ept, name = 'Employed part time',  
  					marker = list(color = 'rgb(255,116,0)')) %>%
  add_trace(y = ~fts, name = 'Full time student', 
  					marker = list(color = 'rgb(255,170,0)')) %>%
  add_trace(y = ~r, name = 'Retired or permanently not working (e.g. due to disability)', 
  					marker = list(color = 'grey')) %>%
  add_trace(y = ~tnw, name = 'Temporarily not working', 
  					marker = list(color = 'rgb(0,172,172)')) %>%
  layout(yaxis = list(title = '%'), barmode = 'group', title="Employment Status by Gender")
#trim survey_data to find out the total gender participation in age at first computer internet
age_at_first_computer <- subset(survey_data, GENDER != '', c('GENDER', 
																														 'AGE.AT.FIRST.COMPUTER.INTERNET'))

#count how many ocurrencies of each gender there are and create a csv file
write.csv(table(age_at_first_computer), file="age_at_first_computer.csv")	

#Generates "Age at First Computer with Internet Access by Gender" bar graph
library(plotly)

Genders <- c("Woman", "Man", "Non binary")
y13_17 <- c(33.8, 35.5, 23.6)
y18_24 <- c(20.1, 18.6, 10.5)
y25_45 <- c(4, 5.6, 0)
y45_older <- c(1.6, 0, 0)
y13_younger <- c(40.3, 39.6, 65.7)
data <- data.frame(Genders, y13_17, y18_24, y25_45, y45_older, y13_younger)


p <- plot_ly(data, x = ~Genders, y = ~y13_17, type = 'bar', name = '13 - 17 years old',
						marker = list(color = 'rgb(19,70,187)')) %>%
  add_trace(y = ~y18_24, name = '18 - 24 years old',  
  					marker = list(color = 'rgb(255,116,0)')) %>%
  add_trace(y = ~y25_45, name = '25 - 45 years old', 
  					marker = list(color = 'rgb(255,170,0)')) %>%
  add_trace(y = ~y45_older, name = 'Older than 45 years old', 
  					marker = list(color = 'grey')) %>%
  add_trace(y = ~y13_younger, name = 'Younger than 13 years old', 
  					marker = list(color = 'rgb(0,172,172)')) %>%
  layout(yaxis = list(title = '%'), barmode = 'group', title="Age at First Computer with Internet Access by Gender")
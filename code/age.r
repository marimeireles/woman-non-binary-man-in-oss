#trim survey_data to find out the total gender participation in formal education
age <- subset(survey_data, GENDER != '', c('GENDER', 'AGE'))

#count how many ocurrencies of each gender there are and create a csv file
write.csv(table(age), file="age.csv")	

#Create a "Age by gender" bar graph
library(plotly)

Genders <- c("Woman", "Man", "Non binary")
age17less <- c(2.4, 3.8, 10.2)
age18_24 <- c(24.8, 23.9, 28.3)
age25_34 <- c(36, 38.1, 33.3)	
age35_44 <- c(22.4, 21, 17.9)
age45_54 <- c(8, 7.3, 2.5)
age55_64 <- c(1.6,2.5,0)
age65more <- c(0,1,0)
data <- data.frame(Genders, age17less, age18_24, age25_34, age35_44, age45_54, age55_64, age65more)

p <- plot_ly(data, x = ~Genders, y = ~age17less, type="bar", name = '17 or younger',  
						marker = list(color = 'rgb(19,70,187)')) %>%
  add_trace(y = ~age18_24, name = '18 to 24 years', 
  					marker = list(color = 'rgb(255,116,0)')) %>%
  add_trace(y = ~age25_34, name = '25 to 34 years', 
  					marker = list(color = 'rgb(5,40,122)')) %>%
  add_trace(y = ~age35_44, name = '35 to 44 years', 
  					marker = list(color ='rgb(255,170,0)')) %>%
  add_trace(y = ~age45_54, name = '45 to 54 years', 
  					marker = list(color = 'rgb(0,172,172)')) %>%
  add_trace(y = ~age55_64, name = '55 to 64 years', 
  					marker = list(color = 'rgb(182,82,0)')) %>%
  add_trace(y = ~age65more, name = '65 years or older', 
  					marker = list(color = 'grey')) %>%
  layout(yaxis = list(title = '%'), barmode = 'group', title="Age by Gender")
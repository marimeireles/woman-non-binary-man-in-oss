#trim survey_data to find out the total gender participation in formal education
formal_education_gender <- subset(survey_data, GENDER != '', c('GENDER', 
																														 'FORMAL.EDUCATION'))

#count how many ocurrencies of each gender there are and create a csv file
write.csv(table(formal_education_gender), file="formal_education_gender.csv")	


#Creates a "Formal education by gender" bar graph
write.csv(table(a), file="formal_education_gender.csv")         

library(plotly)

Genders <- c("Woman", "Man", "Non binary")
bs <- c(35.5, 43, 33.3)
phd <- c(6.9, 6.5, 2.5)	
lessthansecond <- c(3.4, 2.4, 5.1)
masters <- c(22, 27.6, 7.6)
second <- c(10.3,5.8,17.9)
nodegree <- c(17.3,13.8,23)
vocational <- c(3.4, 1.6, 10.2)
data <- data.frame(Genders, bs, phd, lessthansecond, masters, second, nodegree, vocational)


p <- plot_ly(data, x = ~Genders, y = ~bs, type="bar", name = 'Bachelors degree',  
						marker = list(color = 'rgb(19,70,187)')) %>%
  add_trace(y = ~phd, name = 'Doctorate (Ph.D.) or other advanced degree', 
  					marker = list(color = 'rgb(255,116,0)')) %>%
  add_trace(y = ~lessthansecond, name = 'Less than secondary (high) school', 
  					marker = list(color ='rgb(255,170,0)')) %>%
  add_trace(y = ~masters, name = 'Masters degree', 
  					marker = list(color = 'rgb(0,172,172)')) %>%
  add_trace(y = ~second, name = 'Secondary (high) school graduate or equivalent', 
  					marker = list(color = 'rgb(182,82,0)')) %>%
  add_trace(y = ~nodegree, name = 'Some college, no degree', 
  					marker = list(color = 'rgb(5,40,122)')) %>%
  add_trace(y = ~vocational, name = 'Vocational/trade program or apprenticeship', 
  					marker = list(color = 'grey')) %>%
  layout(yaxis = list(title = '%'), barmode = 'group', title="Formal Education by Gender")
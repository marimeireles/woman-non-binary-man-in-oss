#trim survey_data to find out the total gender participation in the FOSS communities
participation_gender <- subset(survey_data, GENDER != '', c('PARTICIPATION.TYPE.FOLLOW',
																											 'PARTICIPATION.TYPE.USE.APPLICATIONS', 
																											 'PARTICIPATION.TYPE.USE.DEPENDENCIES', 
																											 'PARTICIPATION.TYPE.CONTRIBUTE', 
																											 'GENDER'))

#count how many kinds of participation each gender has and saves in a table
write.csv(table(participation_gender), file="participation_gender.csv")

#creates a "participation type by gender" bar graph
library(plotly)

Genders <- c("Woman", "Man", "Non binary")
Follow_updates <- c(64, 94.4, 84)
Use_applications <- c(94.4, 95, 97)
Use_dependencies <- c(84, 87.1, 82)
Contribute <- c(59.2, 74.3, 76)
data <- data.frame(Genders, Follow_updates, Use_applications)

p <- plot_ly(data, x = ~Genders, y = ~Follow_updates, type = 'bar', name = 'Follow updates',
						marker = list(color = 'rgb(19,70,187)')) %>%
  add_trace(y = ~Use_applications, name = 'Use applications',  
  					marker = list(color = 'rgb(255,116,0)')) %>%
  add_trace(y = ~Use_dependencies, name = 'Use dependencies', 
  					marker = list(color = 'rgb(255,170,0)')) %>%
  add_trace(y = ~Contribute, name = 'Contribute as a developer', 
  					marker = list(color = 'rgb(0,172,172)')) %>%
  layout(yaxis = list(title = '%'), barmode = 'group', title="Participation Type by Gender")
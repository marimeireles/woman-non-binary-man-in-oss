#trim survey_data to find out the total gender participation in future contribution
future_contribution <- subset(survey_data, GENDER != '', c('GENDER', 
																														 'FUTURE.CONTRIBUTION.INTEREST'))

#count how many ocurrencies of each gender there are and create a csv file
write.csv(table(future_contribution), file="future_contribution.csv")	

#Creates a "Future contribution interest by gender" bar graph
library(plotly)

Genders <- c("Woman", "Man", "Non binary")
n_all <- c(0, 0, 0)
n_too <- c(0.04, 0.01, 0)
sw_in <- c(26.4, 24, 28)
vr_in <- c(68.8, 87, 71.7)
data <- data.frame(Genders, n_all, n_too, sw_in, vr_in)


p <- plot_ly(data, x = ~Genders, y = ~n_all, type="bar", name = 'Not at all interested',  
						marker = list(color = 'rgb(19,70,187)')) %>%
  add_trace(y = ~n_too, name = 'Not too interested', 
  					marker = list(color = 'rgb(255,116,0)')) %>%
  add_trace(y = ~sw_in, name = 'Somewhat interested',
  				 marker = list(color ='rgb(255,170,0)')) %>%
  add_trace(y = ~vr_in, name = 'Very interested ', 
  					marker = list(color = 'rgb(0,172,172)')) %>%
  layout(yaxis = list(title = '%'), barmode = 'group', title="Future Contribution Interest by Gender")
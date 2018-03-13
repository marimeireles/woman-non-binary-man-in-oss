#trim survey_data to find out the total gender participation
oss_by_gender <- subset(survey_data, GENDER != '', c('GENDER'))

#count how many ocurrencies of each gender there are and create a csv file
write.csv(table(oss_by_gender), file="oss_by_gender.csv")

#generates the pye char
library(plotly)

#take a look on this parameter oss_by_gender and why it isn't workin
p <- plot_ly(oss_by_gender, labels = ~gender, values = ~Freq, type = 'pie',
        textposition = 'inside',
        textinfo = 'label+percent',
        insidetextfont = list(color = '#FFFFFF'),
        marker = list(colors = colors,
                      line = list(color = '#FFFFFF', width = 1)),
        showlegend = FALSE) %>%

  layout(title = 'Participation in the OSS Community by Gender',
         xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

  #In the case of this graph, first is necessary to load the table oss_by_gender 
  #inside the enviroment before generating the graph
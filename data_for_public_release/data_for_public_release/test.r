participation_gender <- read.csv(file = "participation_gender.csv")


ataFrame<-data.frame(particiopation_gender)

ggplot(ataFrame,aes(variable,value,fill=as.factor(Gender)))+
  geom_bar(position="dodge",stat="identity")+
  facet_wrap(~Type,nrow=3)
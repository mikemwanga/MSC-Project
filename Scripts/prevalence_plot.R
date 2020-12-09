#Code for generating stacked bar graphs 

#set working directory
setwd('~/Google Drive/Submission/')
#install these libraries 
library(readxl)
library(reshape2)
library(ggplot2)
library(gridExtra)
library(ggpubr)



#Generate graph represneting the country - combined all sites in Kenya
#Load data from excel
Kenya_GP_proportion = read_excel("./Genotype_Data.xlsx",sheet = "Kenya_Genotype_Proportions",col_names=T,
                                 col_types = NULL, na = "",skip = 0)

#melt the data
Kenya_GP_proportion.m = melt(Kenya_GP_proportion,id.vars="Genotype")

#Draw graphs
Kenya = ggplot(Kenya_GP_proportion.m,aes(x=Genotype,y=value,fill=variable))+
  geom_bar(stat = "identity",width=.3)+scale_y_continuous(name="Prevalence (%)")+
  scale_fill_manual(values = c("gray50","steelblue1","#a6611a","#018571","#E4E46A","red4","#333300"))+
  scale_x_discrete(name = "Year",labels=c("2010\n(n=148)","2011\n(n=161)","2012\n(n=141)","2013\n(n=100)","2014\n(n=73)",
                                          "2015\n(n=92)","2016\n(n=40)","2017\n(n=17)","2018\n(n=64)"))+
  
  theme(legend.title = element_blank(),
        legend.position = "bottom",
        legend.key.size = unit(0.3,"cm"),
        legend.spacing.x= unit(0.5, 'cm'),
        legend.text = element_text(size=8),
        axis.ticks.x = element_blank(),
        axis.title.x = element_blank(),
        axis.title.y = element_text(color = "black"),
        panel.grid.minor.x = element_blank(), 
        panel.spacing = element_blank(),
        text=element_text(size=10,colour = "black"))


Kenya

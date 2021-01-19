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
Kenya_GP_proportion = read_excel("./RIPEK_Data.xlsx",sheet = "Kilifi_Genotype_Proportions",col_names=T,
                                 col_types = NULL, na = "",skip = 0)

#melt the data
Kenya_GP_proportion.m = melt(Kenya_GP_proportion,id.vars="Genotype")

#Draw graphs
Kenya = ggplot(Kenya_GP_proportion.m,aes(y=variable,x=Genotype))+
  geom_point(aes(size=value,fill=variable),alpha=0.75,shape=21)+
  scale_size_continuous(range=c(1,18),breaks = c(10,50,80))+
  scale_fill_manual(guide=FALSE,values = c("darkred","green","blue","cyan","orange","yellow","red2"))+
  labs(size = "Prevalence (%)")+
  scale_y_discrete(name="Genotype")+
  scale_x_discrete(name = "Year",labels=c("2010\n(n=148)","2011\n(n=161)","2012\n(n=141)","2013\n(n=100)","2014\n(n=73)",
                                          "2015\n(n=92)","2016\n(n=40)","2017\n(n=17)","2018\n(n=64)","2019\n(n=37)"))+
  theme(
    
    legend.key = element_blank(),
    axis.text.x = element_text(colour = "black"),
    legend.text = element_text(color = 'black'),
    axis.text.y = element_text(colour = "black"),
    axis.ticks = element_blank(),
    panel.background = element_blank(),
    panel.grid = element_line(colour = 'gray92')
    
  )
  


Kenya




library(tidyverse)
library(patchwork)
library(rstatix)
library(ggpubr)
library(devtools)
###################Titanium MIB analyses####################

library(readxl)
Anzalysis <- read_excel("C:/Users/VUSI/Downloads/Anzalysis.xlsx", 
                        range = "M1:W22")
View(Anzalysis)

#Objective_1


pb1<- ggerrorplot(Anzalysis, x="Organism", y="TiO_ENM", error.plot = "errorbar", add = "jitter", fill = "Organism") + stat_compare_means()+
  theme(legend.position = "none")+ theme(axis.text.x = element_text(angle = 90))+
  ggtitle("Titanium_ENM")+ylab("MBC")+xlab("")
pb1



pb2 <- ggerrorplot(Anzalysis, x= "Organism", y="L_TiO",error.plot = "errorbar", add="jitter", desc_stat = "mean_sd",color="black", fill = "Organism") + stat_compare_means()+
  theme(legend.position = "none")+theme(axis.text.x = element_text(angle = 90))+
  ggtitle("Titanium_Leaves")+ylab("MBC")+xlab("Organism")

pb2



pb3 <-  ggerrorplot(Anzalysis, x= "Organism", y="Alg_TiO", error.plot = "errorbar", add = "jitter", fill = "Organism") + stat_compare_means()+
  theme(legend.position = "none")+theme(axis.text.x = element_text(angle = 90))+
  ggtitle("Titanium_Algae")+ylab("MBC")+xlab("")
pb3

(pb1|pb2|pb3)

###############3#3#### Silver analysis####################3####
pb1<- ggerrorplot(Anzalysis, x="Organism", y="Ag_ENM", error.plot = "errorbar", add = "jitter", fill = "Organism") + stat_compare_means()+
  theme(legend.position = "none")+ theme(axis.text.x = element_text(angle = 90))+
  ggtitle("Silver_ENM")+ylab("MBC")+xlab("")
pb1



pb2 <- ggerrorplot(Anzalysis, x= "Organism", y="L_Ag",error.plot = "errorbar", add="jitter", desc_stat = "mean_sd",color="black", fill = "Organism") + stat_compare_means()+
  theme(legend.position = "none")+theme(axis.text.x = element_text(angle = 90))+
  ggtitle("Silver_Leaves")+ylab("MBC")+xlab("Organism")

pb2



pb3 <-  ggerrorplot(Anzalysis, x= "Organism", y="Alg_Ag", error.plot = "errorbar", add = "jitter", fill = "Organism") + stat_compare_means()+
  theme(legend.position = "none")+theme(axis.text.x = element_text(angle = 90))+
  ggtitle("Silver_Algae")+ylab("MBC")+xlab("")
pb3

(pb1|pb2|pb3)

################## ferric Oxide analyses#############

pb1<- ggerrorplot(Anzalysis, x="Organism", y="FeO_ENM", error.plot = "errorbar", add = "jitter", fill = "Organism") + stat_compare_means()+
  theme(legend.position = "none")+ theme(axis.text.x = element_text(angle = 90))+
  ggtitle("Ferric Oxide_ENM")+ylab("MBC")+xlab("")
pb1



pb2 <- ggerrorplot(Anzalysis, x= "Organism", y="L_FeO",error.plot = "errorbar", add="jitter", desc_stat = "mean_sd",color="black", fill = "Organism") + stat_compare_means()+
  theme(legend.position = "none")+theme(axis.text.x = element_text(angle = 90))+
  ggtitle("Ferric Oxide_Leaves")+ylab("MBC")+xlab("Organism")

pb2



pb3 <-  ggerrorplot(Anzalysis, x= "Organism", y="Alg_FeO", error.plot = "errorbar", add = "jitter", fill = "Organism") + stat_compare_means()+
  theme(legend.position = "none")+theme(axis.text.x = element_text(angle = 90))+
  ggtitle("Ferric Oxide_Algae")+ylab("MBC")+xlab("")
pb3

(pb1|pb2|pb3)
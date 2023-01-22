
library(tidyverse)
library(patchwork)




#AdenoVirus
Fulu <- data.frame(Frequency= c(8.8, 16.3, 12.5, 46.3, 31.3),Years= rep(c("2005", "2008", "2012", "2015", "2018")))


p1 <- ggplot(Fulu, aes(Years, Frequency, fill = Years))+ geom_bar(stat = "identity", position = "dodge")+ggtitle("Adenovirus")+theme(legend.position = "none")

p1


#noroviruses  GI
Fulu1 <- data.frame(Frequency= c(0, 0, 0, 1.25, 18.8),Years= rep(c("2005", "2008", "2012", "2015", "2018")))
                    
p2 <- ggplot(Fulu1, aes(Years, Frequency, fill = Years))+ geom_bar(stat = "identity", position = "dodge")+ggtitle("Norovirus GI")+theme(legend.position = "none")


#Noroviruses GII
Fulu3 <- data.frame(Frequency= c(17.5, 0, 11.3, 38.75, 17.5),Years= rep(c("2005", "2008", "2012", "2015", "2018")))


p3 <- ggplot(Fulu3, aes(Years, Frequency, fill = Years))+ geom_bar(stat = "identity", position = "dodge")+ggtitle("Norovirus GII")+theme(legend.position = "none")


#Sapoviruses
Fulu4 <- data.frame(Frequency= c(5, 10, 0, 2.5, 7.5),Years= rep(c("2005", "2008", "2012", "2015", "2018")))


p4 <- ggplot(Fulu4, aes(Years, Frequency, fill = Years))+ geom_bar(stat = "identity", position = "dodge")+ggtitle("Sapovirusvirus") + theme(legend.position = "none")


#Astroviruses
Fulu5 <- data.frame(Frequency= c(0, 0, 1.25, 3.75, 11.3),Years= rep(c("2005", "2008", "2012", "2015", "2018")))

p5 <- ggplot(Fulu5, aes(Years, Frequency, fill = Years))+ geom_bar(stat = "identity", position = "dodge")+ggtitle("Astrovirus")+theme(legend.position = "none")


(p1|p2/ p3|p4/p5)


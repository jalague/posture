
datas2<-datas

datas2$posture[which(datas$posture<3)]<-1
datas2$posture[-which(datas$posture<3)]<-0
datas2$pain_severe[which(datas$pain_severe>=3)]<-1
datas2$pain_severe[-which(datas$pain_severe>=3)]<-0


library(ggplot2)
library(dplyr)
library(hrbrthemes)

datas3<-datas3[-117,]


#posture and sex
#posture and sit ratio
ggplot(datas3, aes(x = posture)) +
  geom_histogram(size=.5) +
  facet_grid(~sex) +
  ggtitle("Posture vs Sex") +
  theme(axis.text.x = element_text(angle=90)) 

#pain  and sex

datas$sit_ratio[-which(is.na(datas$sit_ratio))]
datas$posture

datas3$`Commute Type`<-factor(datas3$commute_type)
#posture and commute
ggplot(datas3, aes(x = posture)) +
  geom_histogram(aes(color = `Commute Type`), fill="white", size=1.3, binwidth=.4,
                 position = "dodge", bins = 30) +  ggtitle("Posture vs Commute Type") 



#pain and commute

ggplot(datas3, aes(x = pain_severe)) +
  geom_histogram(aes(color = factor(commute_type)), fill="white", 
                 size=1, binwidth=.2,
                 position = "dodge", bins = 30) 

ggplot(datas3, aes(x = pain_severe)) +
  geom_histogram(aes(fill="white"), size=1, binwidth=.2,
                 position = "dodge", bins = 30) +
  facet_grid(~commute_type)



#posture and activity
ggplot(datas, aes(x = posture)) +
  geom_histogram(size=.5) +
  facet_grid(~activity) +
  ggtitle("Posture vs Activity level") 



which(is.na(datas$sleep_sat))
datas4<-datas[-192,]

#posture and sleep satisfaction
ggplot(datas4, aes(x = posture)) +
  geom_histogram(size=.5) +
  facet_grid(~sleep_sat) +
  ggtitle("Posture vs Sleep Satisfaction") +
  theme(axis.text.x = element_text(angle=90)) 


#posture and sleep position
ggplot(datas3, aes(x = posture)) +
  geom_histogram(size=.5) +
  facet_grid(~sleep_pos) +
  ggtitle("Posture vs Sleep position") +
  theme(axis.text.x = element_text(angle=90)) 


datas3<-datas3[-which((datas3$sit_ratio)==""),]
#posture and sit ratio
ggplot(datas3, aes(x = posture)) +
  geom_histogram(size=.5) +
  facet_grid(~sit_ratio) +
  ggtitle("Posture vs Sit Ratio") +
  theme(axis.text.x = element_text(angle=90)) 

#posture and sit ratio
ggplot(datas3, aes(x = posture)) +
  geom_histogram(size=.5) +
  facet_grid(~commute_type) +
  ggtitle("Posture vs Sit Ratio") +
  theme(axis.text.x = element_text(angle=90)) 



datas3$activity_level<-datas$activity
datas3<-datas3[-which(datas3$posture_concern==""),]


levels(datas3$posture_concern) <- c("","No", "Probably", "Yes")

levels(datas3$posture_concern)
#posture concern
ggplot(datas3, aes(x = activity_level)) +
  geom_histogram(size=.5) + 
  facet_grid(~posture_concern) +
  ggtitle("Posture Concern vs Activity level") 


#posture commute time
datas<-datas[-which(is.na(datas$commute_time)),]
ggplot(datas, aes(x = posture)) +
  geom_histogram(size=.5) +
  facet_grid(~commute_time) +
  ggtitle("Posture vs Commute time") 


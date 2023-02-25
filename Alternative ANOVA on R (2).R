fat<-as.factor(rep(c(1:4),each=6))
SIZE<-c(64,72,68,77,90,76,78,91,97,82,85,77,75,86,78,71,63,76,55,66,49,64,70,68)
aov.model<-aov(SIZE~fat)
summary(aov.model)

size<-c(2,3,5,2,2,2,2,1,5,5,2,5)
pop<-c("A","A","A","A","B","B","B","B","C","C","C","C")
aov.model<-aov(size~pop)
summary(aov.model)
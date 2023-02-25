A <- c(50,60,40,50)
colours <- c("red","green","yellow","blue")
percentlabels <- round(100*A/sum(A), 1)
pielabel <- paste(percentlabels, "%", sep="")
pie(A, main="pie", col=colours, labels = pielabel, cex=0.8)
legend("topright",c("100 level","200 level","300 level","400 level"),cex=0.9,bty="n",fill=colours)
sum(A) 



y
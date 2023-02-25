########## Assigning the observations to each fruits( Name of the colums)
Orange <- c(110,96,84,76)
Pawpaw <- c(201,187,153,122)
Mango <- c(222,176,139,128)
Grape <- c(167,166,142,111)
Cherry <- c(98,100,85,69)


######## Name of the rows
Fruits <- c("Alkalinity","OD","SG","T")


####### To define the colours 
colours=c("GREEN","BLUE","YELLOW","PINK")



######## To create the table 
DATA<-data.frame(Orange,Pawpaw,Mango,Grape,Cherry)
DATA
View(DATA)
########### To plot the Bar plot
barplot(as.matrix(DATA),main="BAR CHART OF FRUITS ",ylab="PARAMETERS",xlab="FRUITS",cex.lab=1.6,cex.main=1.4,beside=TRUE,col=colours)


######## To add legends to the plot
legend("topright",Fruits,cex=0.9,bty="n",fill=colours)
 
########			EXAMPLE 1			############
Academics<- c(128,143,85,105,98,106,23)
senior=c(76,156,77,81,100,75,11)
junior=c(33,79,34,47,44,80,15)

names(Academics)=c("Arts","science","tech","social","clinical","argric","law")


M=cbind(Academics,senior,junior)
print(M)


win.graph(width=3.5, height=3.5, points=8)


boxplot(M,main="Boxplot of the three major groups", col=c(2:5), col.main="purple", pch=19, las=1, sub="Figure 1", col.sub="coral3")


#####				To add Border
boxplot(M,main="Boxplot of the three major groups", col=c(2:5), col.main="purple", pch=19, las=1, sub="Figure 1", col.sub="coral3", border= "blue")


#####					Addig Notch
boxplot(M,main="Boxplot of the three major groups", col=c(2:5), col.main="purple", pch=19, las=1, sub="Figure 1", col.sub="coral3", border="green", notch=T)

#####				Horizontal direction boxplot
boxplot(M,main="Boxplot of the three major groups", col=c(2:5), col.main="purple", pch=19, las=1, sub="Figure 1", col.sub="coral3", horizontal=T)

###############			EXAMPLE 2
N = rbind(Academics, senior, junior)
print(N)

######## 				Plotting the box plot
boxplot(N,main="Faculties in the University", col=c(2:10), col.main="purple", pch=19, las=1, sub="Figure 5", col.sub="coral4", border= "blue")


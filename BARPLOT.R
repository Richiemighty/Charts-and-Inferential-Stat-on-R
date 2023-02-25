SAMPLE <- read.csv("C:/Users/HP/Desktop/UI-LISA ANALYSIS & CODES/PROJECT ANALYSIS/MR OLUWATOBI CIVIL ENG/new.csv", sep=",", header=TRUE)
View(SAMPLE)

library(ARDL)
library(xts)
library(astsa)
library(stats)
library(foreign)
library(tseries)
library(abind)
library(dLagM)

attach(SAMPLE)



######     ESTIMATING BEST ORDER FOR ARDL MODEL     #######
me<-ARDL::auto_ardl(A~B + C + D + E, data=SAMPLE, max_order = 5)
me
summary(me)

#######   ESTIMATING ARDL MODEL   #######
my<-ARDL::ardl(A~B + C + D + E, data=SAMPLE, order=c(2,5,1,0,0))
summary(my)


uecm4555<-uecm(my)
uecm4555
summary(uecm4555)

recm4555<-recm(my, case=2)
summary(recm4555)

######### PREDICTION PLOT #######
par(mfrow=c(2,1))
plot(my$fitted.values, col="red", main="Predictive plot for Actual", xlab="time",ylab="A")
lines(SAMPLE$A, col="green")

plot(recm4555$fitted.values, col="red", main="Predictive plot for Differenced A", xlab="time",ylab="A")
lines(diff(SAMPLE$A), col="green")

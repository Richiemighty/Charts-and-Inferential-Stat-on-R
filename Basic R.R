Age <- c(21,24,21,24,20,23,22,21,24,20,25,23,18,19)
summary(Age)


boxplot(Age, horizontal=T)

#-----simulate

age2 = 18 : 25
age2


set.seed(3456)
newage = sample(age2, 1000, replace=T)
summary(newage)

#----- Option
set.seed(3456)
newage2 = runif(1000, 18, 25)
summary(newage2)


#----- ASSIGNMENT
generate Gender -- male and female
	income -- 
	marital status
	occupation
mydata =  data.frame(age2, newage)
mydata

head(mydata)
tail(mydata)

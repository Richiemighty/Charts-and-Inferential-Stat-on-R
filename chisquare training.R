########## First method of importing dataset on R
data <- read.csv("C:/Users/HP/Desktop/DATAS/demographics.csv")
View(data)

####### Second method
data2 <- read.csv(file.choose(), header = TRUE, sep = ",")


####### Second method



#### Filtering on R
head(data)
attach(data)

age
marital

demographics

#### Another method for filteing


Age <- data$age
Age


### Another Method
#Age2 <- subset(data = data, select =c(age, marital))


Age_fifty <- data[data$age > 50, c(1,4)]
View(Age_fifty)


Male <-  data[data$gender == "Male", c(7,3,5)]
View(Male)


Married.female <- data[data$marital == "Married", c(2,7)]
View(Married.female)


##### Regression Analysis
attach(data)

income
carpr

reg = lm(income ~ carpr)
reg
summary(reg)


##### Correlation Analysis
cor <-  cor.test(income, carpr)
cor


##### t.test on R
carpr

test = t.test(carpr)
test


##### Chi-square Analysis
attach(data)
marital
carcat

data3 <-  table(carcat, marital)
data3

chisq.test(data3)

#Load the athletes data
athletes <- read.table('../athletes.txt', header=T, sep=",")

#Replace 0 and 1 with M nd F
athletes$Sex <- factor(as.factor(athletes$Sex), label=c("M","F"))

#Discover Outliers in the data in the height column
#Use a boxplot

#boxplot(athletes$Ht)

#Filter the data (M or F)
#Outliers for Female basketball players
#So lets Subset the data

#with(subset(athletes, Sport=="b_ball" & Sex=="F"), boxplot(Ht))
#x11()
#with(subset(athletes, Sport=="b_ball" & Sex=="M"), boxplot(Ht))

#Next we want to diosplay boxplots for each sport and Sex combination

#boxplot(athletes$Ht ~ athletes$Sex)

#Boxplot to check dataset for outliers
#boxplot(athletes$Ht ~ athletes$Sex + athletes$Sport)
#boxplot(athletes$Ht ~ athletes$Sex)

#doPlots <- function(){
#boxplot(athletes$Ht ~ athletes$Sex + athletes$Sport)
#}

#doPlots()

#Pass in the M/F indicator and return the mean height for that Sex
#calcmeanHT <- function(MorF) {
#	meanCalcSex <- mean(subset(athletes ~ athletes$Sex)
#	meanCalcHt <- mean(subset(athletes ~ athletes$Ht)
#}

#print(calcMeanHt("M"))

#John's version of the above

#calcmeanHT <- function(MorF) {
#	subsetHt <- subset(athletes, Sex==MorF)
#	mean(subsetHt$Ht)
#}

#calcmeanHt()
#print(calcMeanHt("M"))

#Linear Models

linmodWt <- with(athletes, lm(BMI~Wt))
hist(linmodWt$residuals)
#Command Line - sd(linmodWt$residuals)
x11()
linmodWtHt <- with(athletes, lm(BMI~Wt+Ht))
hist(linmodWtHt$residuals)
#sd(linmodWtHt$residuals)

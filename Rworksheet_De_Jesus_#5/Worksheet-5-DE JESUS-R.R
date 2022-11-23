#Worksheet-5

library(dplyr)
library(readr)
library(data.table)

# 1. The table shows the enrollment of BS in Computer Science, SY 2010-2011.

enrollment <- data.frame("Course Year" = c ("1st", "2nd", "3rd", "4th"), " 2019???2020" = c(80, 75, 70, 60))
enrollment

# a. Plot the data using a bar graph. Write the codes and copy the result.
bardt <- c("1st" = 80, "2nd" = 75, "3rd" = 70, "4th" = 60)
bardt
barplot(bardt)

# b. Using the same table, label the barchart with Title = ??? Enrollment of BS Computer Science" horizontal axis = ???Curriculum Year??? and vertical axis = ???number of students???

bartb <- c("1st" = 80 , "2nd" = 75, "3rd" = 70, "4th" = 60)
bartb
barplot(bartb, 
        main = "Enrollment of BS Computer Science", 
        xlab = "Number of Students", 
        ylab = "Course Year")


# 2. The monthly income of De Jesus family was spent on the following: 60% on Food, 10% on electricity, 5% for savings, and 25% for other miscellaneous expenses.

# a. Create a table for the above scenario. Write the codes and its result.

monthdt <- data.frame(
  needs = c("Food", "Electricity", "Savings", "Miscellaneous_expenses"),
  monspent = c(60, 10, 5, 25)
)
monthdt
tab_data <- table(monthdt)
tab_data

# b. Plot the data using a pie chart. Add labels, colors and legend. Write the codes and its result.
monspent = c(60, 10, 5, 25)
dataPer <- round(monspent/sum(monspent) * 100, 1)
dataPer <- paste(data_per,"%",sep = "")

dataPie <- pie(monspent,
                main = "Month Data",
                col = rainbow(4),
                labels =  data_per, cex = 0.8)
dataPie

legend(1.3,1.5, c("Food","Electricity","Savings","Miscellaneous expenses"),
       cex = 0.8,fill = rainbow(4))

# 3. Open the mtcars dataset.
# a. Create a simple histogram specifically for mpg (miles per gallon) variable. Use $ to select the mpg only. Write the codes and its result.
data("mtcars")
dataMtcars <- (mtcars$mpg)
dataMtcars

hist(dataMtcars, breaks = 12)

# b. Colored histogram with different number of bins. hist(mtcars$mpg, breaks=12, col="red") Note: breaks= controls the number of bins.
hist(dataMtcars, breaks=12, col="blue")

# c. Add a Normal Curve x <- mtcars$mpg h<-hist(x, breaks=10, col="red", xlab="Miles Per Gallon", main="Histogram with Normal Curve") xfit<-seq(min(x),max(x),length=40) yfit<-dnorm(xfit,mean=mean(x),sd=sd(x)) yfit <- yfit*diff(h$mids[1:2])*length(x) lines(xfit, yfit, col="blue", lwd=2) Copy the result.
dataCurve <- dataMtcars
dataCurve

dataHist <-hist(dataCurve, breaks=10, col="red", xlab="Miles Per Gallon",
                 main="Histogram with Normal Curve")
xfit<-seq(min(dataCurve),max(dataCurve),length=40)
yfit<-dnorm(xfit,mean=mean(dataCurve),sd=sd(dataCurve))
yfit <- yfit*diff(dataHist$mids[1:2])*length(dataCurve)
lines(xfit, yfit, col="blue", lwd=2)
dataHist

# 4. Open the iris dataset. Create a subset for each species.
# a. Write the codes and its result.
data("iris")
data_iris <- data.frame(iris)
data_iris

data_setosa <- subset(data_iris, Species == 'setosa' )
data_setosa

data_ver <- subset(data_iris, Species == 'versicolor' )
data_ver

data_vir <- subset(data_iris, Species == 'virginica' )
data_vir

# b. Get the mean for every characteristics of each species using colMeans(). Write the codes and its result. Example: setosa <- colMeans(setosa[sapply(setosaDF,is.numeric)])
setosa <- colMeans(data_setosa[sapply(data_setosa,is.numeric)])
setosa

versicolor <- colMeans(data_ver[sapply(data_ver,is.numeric)])
versicolor

virginica <- colMeans(data_vir[sapply(data_vir,is.numeric)])
virginica

#c. Combine all species by using rbind()
trans3 <- rbind(setosa,
                versicolor,
                virginica)
trans3
#d. From the data in 4-c: Create the barplot().
#Write the codes and its result.
barplot(trans3, beside = TRUE,
        main = "Iris Mean",
        xlab = "Characteristics",
        ylab = "Mean Scores",
        col = c("red","green","blue"))
#Figure 1: Iris Data using Barplot



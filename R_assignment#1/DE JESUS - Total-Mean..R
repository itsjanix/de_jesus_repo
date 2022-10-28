IRIS_data <- data.frame(iris)
IRIS_data

IRIS_data[IRIS_data$Species == 'versicolor' ,]

SBST <- subset(IRIS_data, Species == 'versicolor' )
SBST

LNG1 <- iris$Sepal.Length[1:50]
LNG1

WID1 <- iris$Sepal.Width[1:50]
WID1 

LNG2 <- iris$Petal.Length[1:50]
LNG2

WID2 <- iris$Petal.Width[1:50]
WID2

MN1 <- c(LNG1, WID1, LNG2, WID2)
MN1

LNG1<- iris$Sepal.Length[51:100]
LNG1

WID1 <- iris$Sepal.Width[51:100]
WID1 

LNG2 <- iris$Petal.Length[51:100]
LNG2

WID2 <- iris$Petal.Width[51:100]
WID2

MN2 <- c(LNG1, WID1, LNG2, WID2)
MN2

LNG1 <- iris$Sepal.Length[101:150]
LNG1

WID1 <- iris$Sepal.Width[101:150]
WID1 

LNG2 <- iris$Petal.Length[101:150]
LNG2

WID2 <- iris$Petal.Width[101:150]
WID2

MN3 <- c(LNG1, WID1, LNG2, WID2)
MN3

MN4 <- c(MN1, MN2, MN3)
MN4

mean(MN4)


IRIS_data <- data.frame(iris)
IRIS_data

IRIS_data[IRIS_data$Species == 'setosa' ,]

SBST <- subset(IRIS_data, Species == 'setosa' )
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

mean(MN1)


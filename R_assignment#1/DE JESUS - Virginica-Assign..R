IRIS_data <- data.frame(iris)
IRIS_data

IRIS_data[IRIS_data$Species == 'virginica' ,]

SBST <- subset(IRIS_data, Species == 'virginica' )
SBST


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

mean(MN3)


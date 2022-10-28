IRIS_data<- data.frame(iris)
IRIS_data

IRIS_data[IRIS_data$Species == 'versicolor' ,]

SBST <- subset(IRIS_data, Species == 'versicolor' )
SBST

LNG1 <- iris$Sepal.Length[51:100]
LNG1

WID1 <- iris$Sepal.Width[51:100]
WID1 

LNG2 <- iris$Petal.Length[51:100]
LNG2

WID2 <- iris$Petal.Width[51:100]
WID2

MN2 <- c(LNG1, WID1, LNG2, WID2)
MN2

mean(MN2)


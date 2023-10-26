library(datasets)
iris_dataset <- iris

x <- iris$Sepal.Length
y <- iris$Petal.Length

plot(x,y, pch = 19, xlab = "Sepal Length",ylab = "Petal Length", main = "Sepal-Petal Length plot")

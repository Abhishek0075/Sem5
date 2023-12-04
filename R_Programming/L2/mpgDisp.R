plot(mtcars$disp, mtcars$mpg, 
     col = mtcars$cyl,
     pch = 19,
     xlab = "Displacement (cu.in.)",
     ylab = "Miles per Gallon",
     main = "Scatterplot of mpg vs disp with Cylinders")

legend("topright", legend = levels(factor(mtcars$cyl)), 
       col = 1:3, pch = 19, 
       title = "Cylinders")

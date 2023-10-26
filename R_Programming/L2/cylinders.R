counts <- table(mtcars$cyl)
barplot(counts, col = c("skyblue", "lightcoral", "red"),
        main = "Number of Cars by Cylinders",
        xlab = "Cylinders",
        ylab = "Count")

# Add a legend
legend("topright", legend = c("4 Cylinders", "6 Cylinders", "8 Cylinders"),
       fill = c("skyblue", "lightcoral", "red"))

power <- function(x,y) {
    result <- x^y
}

# Different order in x and y

value1 = power(x=2, y=4)
value2 = power(y=4, x=2)
cat("On first function : ",value1,"\n")
cat("On second function : ",value2)
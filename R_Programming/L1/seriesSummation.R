library(MASS)


numerator = 1
denominator = 1
n = 3
sum = 0
isAddition = TRUE

for(i in 1:n ){
  number <- numerator/denominator
  if(isAddition){
    sum <- sum + number
    isAddition <- FALSE
  }else{
    sum <- sum - number
    isAddition <- TRUE
  }
  numerator <- numerator + 1
  # cat("Numerator : ", numerator,"\n")
  denominator <- denominator + 2
  # cat("Denominator : ", denominator,"\n")
  cat("Number : ", number,"\n")
  cat("Sum : ",sum,"\n\n")
}

print(sum)

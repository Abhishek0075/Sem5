# Read the data
df <- read.csv("C:\\Users\\itsab\\Desktop\\RoughCodes\\dataset\\house-prices-advanced-regression-techniques\\train.csv")

# Fit the linear regression model
linearRegression <- lm(LotArea ~ SalePrice, df)

# Plot the points
plot(df$SalePrice, df$LotArea, main = "Scatter Plot with Regression Line", xlab = "Sale Price", ylab = "Lot Area", col = "red")

# Add the regression line
abline(linearRegression, col = "black")

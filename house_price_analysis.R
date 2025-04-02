setwd("/Users/a12345/Desktop/house-price-r-project")

library(readr)
library(dplyr)
library(ggplot2)

install.packages("corrplot")
library(corrplot)

install.packages("caret")
library(caret)

data <- read_csv("train.csv")

# Display the structure and preview data
glimpse(data)
head(data)

# Select relevant numeric features for prediction
data_clean <- data %>%
  select(SalePrice, GrLivArea, OverallQual, GarageCars)

# Check for missing values
colSums(is.na(data_clean))

# Scatter plot: GrLivArea vs SalePrice
ggplot(data_clean, aes(x = GrLivArea, y = SalePrice)) +
  geom_point(color = "blue") +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Living Area vs Sale Price",
       x = "Above Ground Living Area (sq ft)",
       y = "Sale Price ($)")

# Show correlation heatmap
corrplot(cor(data_clean), method = "circle")

# Split data into training and testing sets (80% / 20%)
set.seed(123)  # For reproducibility
trainIndex <- createDataPartition(data_clean$SalePrice, p = 0.8, list = FALSE)
trainData <- data_clean[trainIndex, ]
testData <- data_clean[-trainIndex, ]

# Train linear regression model
model <- lm(SalePrice ~ ., data = trainData)

# Show model summary
summary(model)

# Make predictions on test data
predictions <- predict(model, newdata = testData)

# Calculate RMSE (Root Mean Squared Error)
rmse <- sqrt(mean((predictions - testData$SalePrice)^2))
print(paste("RMSE:", round(rmse, 2)))

# Create comparison dataframe
plot_df <- data.frame(Actual = testData$SalePrice, Predicted = predictions)

# Plot predicted vs actual sale prices
ggplot(plot_df, aes(x = Actual, y = Predicted)) +
  geom_point(color = "darkgreen") +
  geom_abline(slope = 1, intercept = 0, color = "red") +
  labs(title = "Predicted vs Actual Sale Price",
       x = "Actual Sale Price",
       y = "Predicted Sale Price")














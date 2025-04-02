# House Price Prediction in R

This project predicts house sale prices using linear regression. The dataset comes from the Kaggle competition [House Prices: Advanced Regression Techniques](https://www.kaggle.com/competitions/house-prices-advanced-regression-techniques).

## 📊 Dataset
- File: `train.csv`
- Source: Kaggle
- Features used:
  - `GrLivArea`: Above ground living area (sq ft)
  - `OverallQual`: Overall material and finish quality
  - `GarageCars`: Number of garage cars

## 🛠 Methods
- Language: R
- Packages: `dplyr`, `ggplot2`, `corrplot`, `caret`
- Model: Linear Regression

## 📈 Results
- Adjusted R-squared: 0.75
- RMSE on test set: 49,748
- All variables statistically significant (p < 0.001)

## 📷 Visuals
### 1. Living Area vs Sale Price
![Living Area vs Sale Price](images/Living%20Area%20vs%20Sale%20Price%20Plot.png)

### 2. Correlation Heatmap
![Correlation Plot](images/Correlation%20Heatmap.png)

### 3. Predicted vs Actual Sale Price
![Predicted vs Actual](images/Predicted%20vs%20Actual%20Sale%20Price.png)
- Scatter plot: GrLivArea vs SalePrice
- Correlation heatmap
- Predicted vs Actual Sale Price

## 💡 Conclusion
The model captures key drivers of sale price such as living area, quality, and garage space. The RMSE indicates reasonably accurate predictions, and this pipeline is a great foundation for more advanced models like Random Forest or XGBoost.

## ✍️ Author
Yanchi Zhan | Created with R

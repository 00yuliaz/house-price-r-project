{\rtf1\ansi\ansicpg936\cocoartf2821
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 # House Price Prediction in R\
\
This project predicts house sale prices using linear regression. The dataset comes from the Kaggle competition [House Prices: Advanced Regression Techniques](https://www.kaggle.com/competitions/house-prices-advanced-regression-techniques).\
\
## \uc0\u55357 \u56522  Dataset\
- File: `train.csv`\
- Source: Kaggle\
- Features used:\
  - `GrLivArea`: Above ground living area (sq ft)\
  - `OverallQual`: Overall material and finish quality\
  - `GarageCars`: Number of garage cars\
\
## \uc0\u55357 \u57056  Methods\
- Language: R\
- Packages: `dplyr`, `ggplot2`, `corrplot`, `caret`\
- Model: Linear Regression\
\
## \uc0\u55357 \u56520  Results\
- Adjusted R-squared: 0.75\
- RMSE on test set: 49,748\
- All variables statistically significant (p < 0.001)\
\
## \uc0\u55357 \u56567  Visuals\
- Scatter plot: GrLivArea vs SalePrice\
- Correlation heatmap\
- Predicted vs Actual Sale Price\
\
## \uc0\u55357 \u56481  Conclusion\
The model captures key drivers of sale price such as living area, quality, and garage space. The RMSE indicates reasonably accurate predictions, and this pipeline is a great foundation for more advanced models like Random Forest or XGBoost.\
\
## \uc0\u9997 \u65039  Author\
Yanchi Zhan | Created with R\
}
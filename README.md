# Employees_Performance_Hr_Analysis

## Project Overview
This project focuses on analyzing employee performance and HR data extracted from Kaggle. The goal is to predict the performance rating of employees. The analysis utilizes data from an IBM HR Analytics Employee Attrition & Performance dataset, comprising 1200 rows and 28 columns. The dataset includes both quantitative and qualitative features, allowing for a comprehensive understanding of the factors affecting employee performance.

## Business Case & Project Goals
The primary objectives of the project include:
- Understanding department-wise performances.
- Identifying the top three crucial factors influencing employee performance.

## Project Details
### Data Extraction and Transformation with SQL
- Utilized MS SQL Server to extract and transform the data.
- Imported the data into Jupyter Notebook using Pyodbc.

### Analysis
- Conducted comprehensive analysis involving univariate, bivariate, and multivariate analysis to explore the relationship between features and performance rating.
- Categorized features into numerical, categorical, and ordinal types for analysis.

### Exploratory Data Analysis (EDA)
- Employed Matplotlib and Seaborn libraries to visualize the data distribution.
- Uncovered correlations between features and the performance rating.
- Derived meaningful insights from the data analysis process.

### Data Pre-Processing
- Checked for missing values (none found).
- Handled categorical data through manual and frequency encoding.
- Addressed outliers using IQR and applied feature transformations.

### Feature Selection and Dimensionality Reduction
- Dropped unique and constant features.
- Utilized PCA to reduce data dimensions while retaining essential information.

### Tools and Libraries Used
**Tools:**
- Jupyter
- MS SQL Server

**Python Libraries:**
- Pyodbc
- Pandas
- Numpy
- Matplotlib
- Seaborn
- Scipy

## Goals Achieved
### Department Wise Performances
- Employed Violinplot and CountPlot to analyze department-wise performance variations.
- Extracted insights for each department's performance based on gender, age, and other factors.

### Top Factors Influencing Employee Performance
1. Employment Environment Satisfaction
2. Employee Salary Hike Percentage
3. Experience Years In Current Role

## Conclusion
- Identified critical features significantly correlated with the performance rating.
- Highlighted essential insights regarding department-wise performance and crucial factors affecting employee performance.

## GitHub Repository
This repository contains the project code, data, and detailed Jupyter notebooks documenting the entire analysis.

Feel free to explore the notebooks and data files for a comprehensive understanding of the project's methodologies and outcomes.



<img width="1444" height="332" alt="Data analysis project overview banner" src="https://github.com/user-attachments/assets/79df15aa-e79b-4a95-9f9a-aa6845bd9563" />

## 📊 Project Overview & Purpose

This project focuses on analyzing the Instacart dataset to uncover customer purchasing behavior, product relationships, and actionable business insights using SQL and Python.

It involves end-to-end data analytics, including data cleaning, transformation, exploratory data analysis, Market Basket Analysis, and customer segmentation techniques.

The primary objective of this project is to help businesses make data-driven decisions by identifying cross-selling opportunities, understanding customer buying patterns, analyzing peak shopping hours, and segmenting customers into meaningful groups for improved retention and engagement strategies.

This project demonstrates the practical application of data analytics skills to solve real-world business problems and generate impactful insights.

## 🛠️ Tech Stack & Tools
- **Programming Language:** Python  
- **Libraries:** Pandas, NumPy, MLxtend, Scikit-learn  
- **Database & Query Language:** SQL  
- **Data Visualization & BI Tools:**  
  - Power BI  
  - Power Query  
  - Microsoft Excel  
- **Techniques Used:**  
  - Data Cleaning & Preprocessing  
  - Exploratory Data Analysis (EDA)  
  - Market Basket Analysis (Apriori Algorithm)  
  - Customer Segmentation (RFM Analysis & K-Means Clustering)  

- **Tools & Platforms:**  
  - Jupyter Notebook  
  - GitHub

## 📂 Data Source

The dataset used in this project is sourced from Kaggle and programmatically downloaded using the KaggleHub API:

```python
import kagglehub

# Download latest version
path = kagglehub.dataset_download("psparks/instacart-market-basket-analysis")

print("Path to dataset files:", path)


## ⚙️ Project Implementation

- Performed data cleaning, preprocessing, and dataset merging using Python (Pandas)  
- Built a structured dataset for analysis and reporting  
- Applied **Market Basket Analysis (Apriori Algorithm)** to identify product associations  
- Generated **association rules (support, confidence, lift)** for cross-selling insights  
- Implemented **RFM Analysis & K-Means Clustering** for customer segmentation  
- Designed SQL table and performed advanced queries for business insights  
- Identified **top-selling products and frequent product combinations**  
- Analyzed **peak shopping hours and day-wise sales trends**  
- Calculated **reorder rate and customer purchase behavior**  
- Used **CTEs and window functions (NTILE)** for dynamic customer segmentation  

## 📌 Business Problem

The goal of this project is to transform raw transactional data from Instacart into actionable insights to drive Revenue and Retention.

The core focus is on:

- Market Basket Analysis: Identifying product associations to boost Cross-Selling.  
- Customer Segmentation: Using RFM Analysis to target 'High-Value' vs 'At-Risk' users.  
- Operational Efficiency: Optimizing supply chain by pinpointing Peak Shopping Hours.  
- Retention Strategy: Analyzing Reorder Rates to improve the Customer Lifetime Value (CLV).





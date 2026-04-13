<img width="1444" height="332" alt="Data analysis project overview banner" src="https://github.com/user-attachments/assets/79df15aa-e79b-4a95-9f9a-aa6845bd9563" />

## 📊 Project Overview & Purpose

This project focuses on analyzing the Instacart dataset to uncover customer purchasing behavior, product relationships, and actionable business insights using SQL and Python.

It involves end-to-end data analytics, including data cleaning, transformation, exploratory data analysis, Market Basket Analysis, and customer segmentation techniques.

The primary objective of this project is to help businesses make data-driven decisions by identifying cross-selling opportunities, understanding customer buying patterns, analyzing peak shopping hours, and segmenting customers into meaningful groups for improved retention and engagement strategies.

This project demonstrates the practical application of data analytics skills to solve real-world business problems and generate impactful insights.

## 🚀 Project Structure

This project is divided into two main analytical dashboards to provide a comprehensive understanding of both product performance and customer behavior:

## 📊 Part 1: Product Performance & Market Basket Analysis
Focuses on product-level insights

Identifies top-selling products

Analyzes frequently bought product combinations

## 👥 Part 2: Customer Behavior & Segmentation Analysis (Coming Soon)

Focuses on customer purchasing patterns

Includes RFM segmentation

Identifies high-value and low-value customers

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

## ⚙️ Project Implementation
Performed data cleaning, preprocessing, and dataset merging using Python (Pandas)

Built a structured dataset to support efficient analysis and reporting
## 🔹 Data Analysis & Modeling

Applied Market Basket Analysis using the Apriori Algorithm

Generated association rules using key metrics: support, confidence, and lift

Implemented RFM Analysis and customer segmentation using K-Means Clustering
## 🔹 SQL-Based Analysis

Designed and created structured SQL tables

Performed advanced queries to extract insights

Utilized CTEs and window functions (NTILE) for segmentation and ranking
## 🔹 Business Insights Generation

Identified top-selling products and frequent product combinations

Analyzed peak shopping hours and sales trends

Calculated reorder rates and evaluated customer purchasing behavior
## 🔹 Dashboard Development

Designed interactive dashboards in Power BI

Visualized product performance and market basket insights

Structured the project into two dashboards:

Product Performance & Market Basket Analysis🛒
Instacart Customer Behavior Analysis🔍

## 📌 Business Problem

The goal of this project is to transform raw transactional data from Instacart into actionable insights to drive Revenue and Retention.

The core focus is on:

- Market Basket Analysis: Identifying product associations to boost Cross-Selling.  
- Customer Segmentation: Using RFM Analysis to target 'High-Value' vs 'At-Risk' users.  
- Operational Efficiency: Optimizing supply chain by pinpointing Peak Shopping Hours.  
- Retention Strategy: Analyzing Reorder Rates to improve the Customer Lifetime Value (CLV).

## 📊 Key Insights

- Fresh produce categories such as **fruits and vegetables**, especially *bananas*, emerged as the top-selling products, indicating strong daily demand.  

- **Product association analysis** revealed that combinations like *Bananas & Avocado*, *Strawberries & Bananas*, and *Bananas & Spinach* are frequently purchased together, highlighting cross-selling opportunities.  

- The **average basket size** is approximately 3 items per order, suggesting smaller but frequent purchases.  

- **Morning and Afternoon** were identified as peak shopping time slots, with the highest order volume observed between **10 AM to 3 PM**, peaking at **2 PM**.  
  → This provides an opportunity to optimize delivery operations and run targeted promotions during peak hours.  

- **Weekends and Mondays** recorded the highest sales, indicating increased customer activity during these periods.  

- Products like **Banana, Bag of Organic Bananas, and Strawberries** showed the highest reorder rates, reflecting strong customer preference and loyalty.  

- A **percentile-based RFM segmentation approach** was implemented instead of static thresholds to ensure balanced and data-driven customer classification.  

- Customer segmentation analysis revealed that a **majority of users belong to the low-value segment (12,210 customers)**, followed by **medium-value customers (1,047)**, while only a **very small segment represents high-value customers (9 customers)**.  

- This indicates that most customers have low purchase frequency, highlighting a strong opportunity to **convert low-value users into repeat and high-value customers through targeted engagement strategies**.  

## 📊 Dashboard 1: Product Performance & Market Basket Analysis
## 🎯 Goal of the Dashboard

The goal of this dashboard is to analyze product performance and uncover purchasing patterns using transactional data.

It helps in:

Identifying top-selling products
Understanding overall order trends
Analyzing product category performance
Discovering frequently bought together products for cross-selling
## 📊 Key Features
Top 3 Selling Products (KPI Cards)

Highlights the highest performing products based on order volume

Top 10 Best-Selling Products

Visualizes the most popular products using a bar chart

Total Orders & Total Unique Products (Cards)

Provides an overview of overall sales volume and product diversity

Top Product Aisles by Order Volume

Analyzes which product categories (aisles) generate the highest sales

Top Product Departments by Order Volume

Identifies high-performing departments contributing to revenue

Frequently Bought Together Products (Matrix)

Displays product combinations using Market Basket Analysis
## ⚙️ Key Challenge & Solution

A key challenge was extracting meaningful product associations from large transactional data.

## ✅ Solution Applied:

Used Apriori Algorithm for Market Basket Analysis
Generated association rules using support, confidence, and lift
Structured the data for better visualization in Power BI

This enabled identification of strong product relationships and cross-selling opportunities.

## 📸 Dashboard Preview
<img width="1443" height="804" alt="image" src="https://github.com/user-attachments/assets/f52644d5-6459-4b11-8df0-b262292cc620" />

## 📊 Dashboard 2: Customer Behavior & Segmentation Analysis
## 🎯 Goal of the Dashboard

The goal of this dashboard is to analyze customer purchasing behavior and identify different customer segments to support data-driven business decisions.

It helps in:

Understanding customer ordering patterns
Identifying peak shopping hours
Analyzing purchase frequency and reorder behavior
Segmenting customers based on value
## 📊 Key Features
Average Basket Size

Measures the average number of items per order

Total Reorders

Highlights repeat purchase behavior and customer loyalty

Weekday Analysis (Interactive Slicer)

Enables day-wise dynamic filtering

Top 20 Customers by Total Orders

Identifies high-frequency and valuable customers

Peak Shopping Hours

Shows when customers are most active

Orders by Time of Day

Categorizes orders into:
Morning
Afternoon
Evening
Night

Customer Segmentation

Customers are classified into:
High Value
Medium Value
Low Value
## ⚙️ Key Challenge & Solution

One of the major challenges was handling weekday and time-based filtering issues in Power BI.

## ✅ Solution Applied:

Improved data modeling
Fixed relationships between tables
Ensured proper filter interactions

This helped in making the dashboard fully interactive and accurate.

📸 Dashboard Preview
<img width="1431" height="800" alt="Screenshot 2026-04-13 201453" src="https://github.com/user-attachments/assets/0d87e17a-ede5-4dae-ac87-63f8719f3e22" />

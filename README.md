## 📡 Project Background

The Telco Customer Churn dataset captures customer subscription behavior across telecom services, including contract type, payment methods, service usage, tenure, and customer value indicators.

In subscription-based businesses, customer churn directly affects revenue stability and long-term growth. In this dataset, **1,869 customers out of 7,043 total customers have churned (26.5% churn rate)**, directly contributing to approximately **3M revenue loss out of 16M total revenue**, with an additional **225K revenue currently at risk across 917 high-risk customers**.

Instead of only tracking how many customers leave, this project focuses on understanding which customers are leaving, why they leave, and how churn impacts business revenue.

This project transforms raw customer data into a clear, interactive business intelligence dashboard that helps identify churn risks, revenue exposure, and customer retention opportunities.

**Dataset Source:** Public Telco Customer Churn Dataset 

**Dataset Size:** 7,044 rows and 31 columns.

## 🎯 Project Objectives

* Understand overall churn performance **(26.5% overall churn rate across 7,043 customers)**
* Identify high-risk customer segments **(917 customers currently identified as high risk)**
* Analyze factors influencing customer churn **(e.g., Month-to-month contract churn at 42.7%)**
* Measure the financial impact of churn **(~3M revenue lost + 225K revenue at risk)**
* Provide clear, business-focused recommendations
---
An interactive Power BI dashboard can be downloaded [Here](https://github.com/rishikesavan-data/Telco-Customer-Churn-Analysis/raw/main/Power%20BI/Telco%20Customer%20Churn%20Analysis.pbix)

*SQL queries used for data exploration, cleaning, and business analysis are available inside the repository.*

**Database Creation & Initialization** [Here](/SQL/1.%20Database%20Creation%20&%20Initialization.sql)

**Data Checks** [Here](/SQL/2.%20Data%20Check.sql)

**Business Analysis Queries** [Here](/SQL/3.%20Business%20Question%20Analysis.sql)

## 📊 Dashboard Architecture & Design

The data model is structured to support accurate filtering, stable calculations, and smooth dashboard performance across churn, revenue, and customer segmentation analysis.

### Power BI Model View
![alt text](/Images/Model%20View.png)

The dashboard includes button-based navigation built using Power BI bookmarks, allowing users to switch between views smoothly.

### Overview Dashboard 
![alt text](/Images/Overview%20Page.png)
* **Overview Page** - Shows overall customer health, churn metrics, and revenue impact **(7,043 total customers, 5,174 active customers, 1,869 churned customers, 26.5% churn rate, 16M total revenue, 3M revenue lost, 225K revenue at risk)**.

### Churn Drivers Dashboard
![alt text](/Images/Drivers%20Page.png)
* **Drivers Page** - Shows root causes of churn, including service usage, payment behavior, and customer value risk.



## 🧠 Executive Summary
### Key Findings

* Customers with month-to-month contracts are more likely to churn compared to long-term contract customers **(42.7% vs 11.3% one-year vs 2.8% two-year)**
* Customers using manual payment methods (like electronic checks) show higher churn rates **(Electronic Check: 45.29% vs Credit Card: 15.24%)**
* Lower value customers churn more often **(Very Low CLTV: 35.88%, Low CLTV: 32.74%)**, but higher value customers cause larger revenue loss when they churn **(Very High CLTV churns only 8.92% but has a high revenue impact)**
* Customers in early stages of their subscription are more likely to leave **(Avg tenure churned: 18 months vs retained: 38 months)**
* Customers using multiple services are more likely to stay longer **(e.g., Streaming Movies churn ~11.61%, Phone Service churn ~24.12%)**

## 📈 Business Insights
### 📦 Contract & Billing Behavior

* Month-to-month contracts show the highest churn behavior **(42.7% churn rate)**
* Long-term contracts improve customer retention **(Two-year contracts have only 2.8% churn)**
* Customers using electronic check payments show a higher churn probability **(45.29% churn)**
* Customers using automatic payment methods tend to stay longer **(Credit Card 15.24%, Bank Transfer 16.71% churn)**
* Simplified and automated billing improves customer retention

### 👥 Customer Value (CLTV) Insights

* Low-value customers contribute most to total churn numbers **(Very Low CLTV churn: 35.88%)**
* Medium-value customers show moderate churn risk **(23.88% churn)**
* High-value customers churn less frequently **(24.07% High CLTV, 8.92% Very High CLTV)** but cause higher revenue loss when they leave **(Avg Revenue Retained ~2.5K vs Churned ~1.5K per customer)**
* Retaining high-value customers is critical for revenue protection

### 📉 Customer Lifecycle (Tenure) Insights

* New customers are more likely to churn **(Churned customers average tenure ~18 months)**
* Customers become more stable as their tenure increases **(Retained customers average tenure ~38 months)**
* Customers who stay beyond the early months are more likely to remain long-term
* Strong onboarding and early engagement help reduce churn

### ⚠️ Service Usage Insights

* Customers using fewer services are more likely to churn **(Phone Service churn is highest at 24.12%)**
* Customers using multiple services tend to stay longer **(Streaming TV 11.56%, Streaming Movies 11.61% churn)**

* Add-on services increase customer engagement **(Device Protection 7.74%, Online Backup 7.43% churn)**
* Higher service usage generally improves retention **(Online Security has the lowest at 4.19% churn)**

## 🛠 Tools & Technology

* **SQL** – Data cleaning and analysis
* **Power BI** – Logical data modeling, DAX measures, KPI design, dashboard development
* **Power Query** – Data transformation
* **Excel** – Data preprocessing
* **AI Tools (ChatGPT, Gemini)** – Debugging and documentation support

## 📊 Key Metrics Tracked

* Total Customers **(7,043)**
* Active Customers **(5,174)**
* Churn Customers **(1,869)**
* Churn Rate **(26.5%)**
* Revenue Lost **(~3M)**
* Revenue At Risk **(~225K)**
* High Risk Customer Count **(917 Customers)**
* Customer Value (CLTV) Segmentation **(Very Low 35.88%, Low 32.74%, Medium 23.88%, High 24.07%, Very High 8.92%)**

## 🎯 Business Recommendations

* Focus retention strategies on month-to-month contract customers **(42.7% churn segment)**
* Encourage customers to switch to automatic payment methods **(Reduce risk from 45.29% electronic check churn)**
* Prioritize retention programs for high-value customers **(Higher revenue impact despite lower churn volume)**
* Improve early customer onboarding experience **(Critical first ~18 months)**
* Promote bundled services to increase customer engagement **(Multi-service users show ~11–12% churn vs single-service ~24%)**

This solution helps business teams proactively identify churn-risk segments and prioritize customer-retention strategies based on financial impact **(3M revenue already lost + 225K revenue currently at risk)**.

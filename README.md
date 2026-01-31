## 📡 Project Background

The Telco Customer Churn dataset captures customer subscription behavior across telecom services, including contract type, payment methods, service usage, tenure, and customer value indicators.

In subscription-based businesses, customer churn directly affects revenue stability and long-term growth. Instead of only tracking how many customers leave, this project focuses on understanding **which customers are leaving, why they leave, and how churn impacts business revenue.**

This project transforms raw customer data into a clear, interactive business intelligence dashboard that helps identify churn risks, revenue exposure, and customer retention opportunities.

**Dataset Source:** Public Telco Customer Churn Dataset

## 🎯 Project Objectives

* Understand overall churn performance
* Identify high-risk customer segments
* Analyze factors influencing customer churn
* Measure financial impact of churn
* Provide clear, business-focused recommendations
---
An interactive Power BI dashboard can be downloaded [Here](/Power%20BI/Telco%20Customer%20Churn%20Analysis.pbix)

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
* **Overview Page** - Shows overall customer health, churn metrics, and revenue impact.

### Churn Drivers Dashboard
![alt text](/Images/Drivers%20Page.png)
* **Drivers Page** - Shows root causes of churn including service usage, payment behavior, and customer value risk.



## 🧠 Executive Summary
### Key Findings

* Customers with month-to-month contracts are more likely to churn compared to long-term contract customers
* Customers using manual payment methods (like electronic checks) show higher churn rates
* Lower value customers churn more often, but higher value customers cause larger revenue loss when they churn
* Customers in early stages of their subscription are more likely to leave
* Customers using multiple services are more likely to stay longer

## 📈 Business Insights
### 📦 Contract & Billing Behavior

* Month-to-month contracts show the highest churn behavior
* Long-term contracts improve customer retention
* Customers using electronic check payments show higher churn probability
* Customers using automatic payment methods tend to stay longer
* Simplified and automated billing improves customer retention

### 👥 Customer Value (CLTV) Insights

* Low-value customers contribute most to total churn numbers
* Medium-value customers show moderate churn risk
* High-value customers churn less frequently but cause higher revenue loss when they leave
* Retaining high-value customers is critical for revenue protection

### 📉 Customer Lifecycle (Tenure) Insights

* New customers are more likely to churn
* Customers become more stable as their tenure increases
* Customers who stay beyond early months are more likely to remain long-term
* Strong onboarding and early engagement help reduce churn

### ⚠️ Service Usage Insights

* Customers using fewer services are more likely to churn
* Customers using multiple services tend to stay longer
* Add-on services increase customer engagement
* Higher service usage generally improves retention

## 🛠 Tools & Technology

* **SQL** – Data cleaning and analysis
* **Power BI** – Logical data modeling, DAX measures, KPI design, dashboard development
* **Power Query** – Data transformation
* **Excel** – Data preprocessing
* **AI Tools (ChatGPT, Gemini)** – Debugging and documentation support

## 📊 Key Metrics Tracked

* Total Customers
* Active Customers
* Churn Customers
* Churn Rate
* Revenue Lost
* Revenue At Risk
* High Risk Customer Count
* Customer Value (CLTV) Segmentation

## 🎯 Business Recommendations

* Focus retention strategies on month-to-month contract customers
* Encourage customers to switch to automatic payment methods
* Prioritize retention programs for high-value customers
* Improve early customer onboarding experience
* Promote bundled services to increase customer engagement

This solution helps business teams proactively identify churn risk segments and prioritize customer retention strategies based on financial impact.

# Task-6-
# Monthly Sales Trend Analysis

This project analyzes monthly sales trends, focusing on total revenue and order volume.

---

## 📊 Objective

To understand business performance month-over-month by tracking:
* **Monthly Revenue**: Total income.
* **Monthly Order Volume**: Number of transactions.

---

## 📁 Dataset

Online sales records (initially CSV, then imported into SQL) with key columns like `Date`, `Total Revenue`, and `Transaction ID`. The data was stored in a MySQL table named `online_sales`.

---

## 🛠 Tools

* **MySQL**: Used for database management and executing SQL queries.
* **MySQL Workbench**: Utilized for running queries and visualizing results.

---

## 🔍 Methodology

1.  **Data Import**: Loaded sales data into a structured SQL table.
2.  **Monthly Aggregation**: Grouped transactions by year and month to calculate the sum of total revenue (`SUM(Total Revenue)`) and the count of transactions (`COUNT(Transaction ID)`).
3.  **Trend Visualization**: Sorted the results chronologically to reveal sales patterns over time.

---

## 📈 Outcome

A summarized table showing the **Year**, **Month**, **Total Orders**, and **Total Revenue** for each period, providing clear insights into monthly sales performance.

---

## 📚 Key Learnings

* Aggregating sales data by month using SQL.
* Applying `SUM()` and `COUNT()` functions for business insights.
* Deriving trends and understanding performance from raw sales data.

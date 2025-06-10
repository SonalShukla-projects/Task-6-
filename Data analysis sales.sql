CREATE DATABASE sales_analysis_Data;
USE sales_analysis_Data;
CREATE TABLE online_sales_Data (
    Transaction_ID INT PRIMARY KEY,
    Date DATE,
    Product_Category VARCHAR(100),
    Product_Name VARCHAR(100),
    Units_Sold INT,
    Unit_Price DECIMAL(10,2),
    Total_Revenue DECIMAL(10,2),
    Region VARCHAR(100),
    Payment_Method VARCHAR(100)
);
INSERT INTO online_sales_Data
(Transaction_ID, Date, Product_Category, Product_Name, Units_Sold, Unit_Price, Total_Revenue, Region, Payment_Method)
VALUES
(10001, '2024-01-01', 'Electronics', 'iPhone 14 Pro', 2, 999.99, 1999.98, 'North America', 'Credit Card'),
(10002, '2024-01-02', 'Home Appliances', 'Dyson V11 Vacuum', 1, 499.99, 499.99, 'Europe', 'PayPal'),
(10003, '2024-01-03', 'Fashion', 'Nike Air Max 270', 3, 150.00, 450.00, 'Asia', 'Debit Card'),
(10004, '2024-01-04', 'Books', 'Atomic Habits', 5, 20.00, 100.00, 'North America', 'Credit Card'),
(10005, '2024-01-05', 'Gaming', 'PlayStation 5', 1, 499.99, 499.99, 'Europe', 'PayPal');
-- Sales Trend Analysis Using Aggregations
SELECT 
    EXTRACT(YEAR FROM Date) AS Year,
    EXTRACT(MONTH FROM Date) AS Month,
    COUNT(*) AS Total_Orders,
    SUM(Total_Revenue) AS Monthly_Revenue
FROM 
    online_sales_Data
GROUP BY 
    Year, Month
ORDER BY 
    Year, Month;
-- Revenue & Orders by Product Category and Month
SELECT 
    Product_Category,
    EXTRACT(YEAR FROM Date) AS Year,
    EXTRACT(MONTH FROM Date) AS Month,
    COUNT(*) AS Total_Orders,
    SUM(Total_Revenue) AS Monthly_Revenue
FROM 
    online_sales_Data
GROUP BY 
    Product_Category, Year, Month
ORDER BY 
    Product_Category, Year, Month;
--   Total Units Sold by Month
SELECT 
    EXTRACT(YEAR FROM Date) AS Year,
    EXTRACT(MONTH FROM Date) AS Month,
    SUM(Units_Sold) AS Total_Units_Sold
FROM 
    online_sales_Data
GROUP BY 
    Year, Month
ORDER BY 
    Year, Month;
-- Average Order Value by Month
SELECT 
    EXTRACT(YEAR FROM Date) AS Year,
    EXTRACT(MONTH FROM Date) AS Month,
    ROUND(AVG(Total_Revenue), 2) AS Average_Order_Value
FROM 
    online_sales_Data
GROUP BY 
    Year, Month
ORDER BY 
    Year, Month;
-- Top 5 Products by Revenue
SELECT 
    Product_Name,
    SUM(Total_Revenue) AS Total_Revenue
FROM 
    online_sales_Data
GROUP BY 
    Product_Name
ORDER BY 
    Total_Revenue DESC
LIMIT 5;

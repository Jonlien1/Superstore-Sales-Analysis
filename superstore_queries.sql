Basic Queries — Warming Up
Select all columns from the dataset
SELECT *
FROM superstore;
Show only orders from the West region
SELECT *
FROM superstore
WHERE region = 'West';
Show all orders where a discount was applied
SELECT *
FROM superstore
WHERE discount  >0;
Count the total number of orders
SELECT COUNT(*)
 FROM superstore

Aggregations
Calculate total sales, total profit, and total quantity across all orders
SELECT 
ROUND(SUM(sales), 2) as Total_Sales,
ROUND(SUM(quantity), 2) as Total_Quantity, 
ROUND(SUM(profit), 2) as Total_Profit
 FROM superstore
Find average profit per order
SELECT COUNT(*) AS Total_Orders, 
ROUND(AVG(Profit), 2) AS AVG_Profit_Per_Order
FROM superstore;
Show total sales and profit grouped by Region
SELECT Region,
ROUND(SUM(Sales), 2) AS Total_Sales, 
ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY Region
ORDER BY Total_Profit DESC;
Show total sales and profit grouped by Category
SELECT Category,
ROUND(SUM(Sales), 2) AS Total_Sales, 
ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY Category
ORDER BY Total_Profit DESC;
Count the number of orders per Ship Mode
SELECT Ship_Mode,
       COUNT(*) AS Ship_Mode_Orders
FROM superstore
GROUP BY Ship_Mode
ORDER BY Ship_Mode_Orders DESC;

Filtering and Sorting
Show all orders where profit is negative, sorted by profit ascending
SELECT Order_ID,
       Product_Name,
       Category,
       Discount,
       ROUND(Profit, 2) AS Profit
FROM superstore
WHERE Profit < 0
ORDER BY Profit ASC;
Show the top 10 customers by total sales
SELECT customer_name, SUM(sales) as Total_Sales
 FROM Superstore_Sales_Analysis
 GROUP BY customer_name
 ORDER BY Total_Sales DESC
 LIMIT 10;
Find all orders with discount greater than 0.4
SELECT Order_ID,
       Discount,
       Profit,
       Product_Name
FROM superstore
WHERE Discount > 0.4
ORDER BY Discount DESC;
Show total losses (negative profit only) by Sub-Category
SELECT Sub_Category,
       ROUND(SUM(Profit), 2) AS Total_Losses
FROM superstore
WHERE Profit < 0
GROUP BY Sub_Category
ORDER BY Total_Losses ASC;

Intermediate
Find the most profitable product (by total profit)
SELECT Product_Name, ROUND(SUM(Profit), 2) as Total_Profit
FROM superstore
GROUP BY Product_Name
ORDER BY Total_Profit DESC
LIMIT 1;
Calculate profit margin per order (Profit divided by Sales)
SELECT Order_ID,
       Product_Name,
       ROUND((Profit / Sales) * 100, 2) AS Profit_Margin_Pct
FROM superstore
ORDER BY Profit_Margin_Pct DESC;
Show yearly sales and profit trends grouped by Order Year	
SELECT Order_Year,
       ROUND(SUM(Sales), 2) AS Total_Sales,
       ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY Order_Year
ORDER BY Order_Year ASC;
Find which Customer Segment generates the most revenue
SELECT segment, ROUND(SUM(Sales), 2) as Revenue
FROM superstore
GROUP BY Segment
ORDER BY Revenue DESC
LIMIT 1;
Show average discount by Category
SELECT category, ROUND(AVG (Discount) * 100, 2) as AVG_Discount
FROM superstore
GROUP BY Category
ORDER BY AVG_Discount DESC;



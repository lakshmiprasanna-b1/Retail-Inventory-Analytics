CREATE DATABASE retail_inventory;
USE retail_inventory;

SELECT COUNT(*) AS total_rows
FROM retail_inventory_cleaned;
SELECT * FROM retail_inventory_cleaned
LIMIT 10;
#Overall sales and forecast
SELECT
    SUM(`Units Sold`) AS total_units_sold,
    SUM(`Demand Forecast`) AS total_demand_forecast,
    SUM(`Demand Forecast`) - SUM(`Units Sold`) AS forecast_gap
FROM retail_inventory_cleaned;
#Sales by category
SELECT
    Category,
    SUM(`Units Sold`) AS total_units_sold
FROM retail_inventory_cleaned
GROUP BY Category
ORDER BY total_units_sold DESC;
#Sales by region
SELECT
    Region,
    SUM(`Units Sold`) AS total_units_sold
FROM retail_inventory_cleaned
GROUP BY Region
ORDER BY total_units_sold DESC;
#Store sales performance
SELECT
    `Store ID`,
    SUM(`Units Sold`) AS total_units_sold,
    AVG(`Inventory Level`) AS avg_inventory
FROM retail_inventory_cleaned
GROUP BY `Store ID`
ORDER BY total_units_sold DESC;
#Actual vs forecast by category
SELECT
    Category,
    SUM(`Units Sold`) AS actual_sales,
    SUM(`Demand Forecast`) AS demand_forecast,
    SUM(`Demand Forecast`) - SUM(`Units Sold`) AS forecast_gap
FROM retail_inventory_cleaned
GROUP BY Category
ORDER BY forecast_gap DESC;
#Top 10 products
SELECT
    `Product ID`,
    SUM(`Units Sold`) AS total_units_sold
FROM retail_inventory_cleaned
GROUP BY `Product ID`
ORDER BY total_units_sold DESC
LIMIT 10;
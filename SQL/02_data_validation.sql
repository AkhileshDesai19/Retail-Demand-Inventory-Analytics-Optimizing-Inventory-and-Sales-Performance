-- Data Validation

SELECT * FROM fact_retail_inventory;

SELECT DISTINCT category 
FROM fact_retail_inventory;

SELECT DISTINCT region 
FROM fact_retail_inventory;

SELECT DISTINCT weather_condition 
FROM fact_retail_inventory;

SELECT DISTINCT seasonality FROM
fact_retail_inventory;

SELECT DISTINCT month FROM
fact_retail_inventory;

SELECT COUNT(DISTINCT product_id) AS Total_products
FROM fact_retail_inventory;

SELECT COUNT(DISTINCT store_id) AS Total_stores
FROM fact_retail_inventory;

SELECT COUNT(DISTINCT units_sold) AS Total_units_sold
FROM fact_retail_inventory;

SELECT COUNT(DISTINCT units_ordered) AS units_ordered
FROM fact_retail_inventory;

SELECT MAX(price) AS maximun_price FROM fact_retail_inventory;

SELECT MIN(price) AS minimum_price FROM fact_retail_inventory;

SELECT AVG(price) AS Avg_price FROM fact_retail_inventory;

SELECT category, COUNT(units_sold) AS total_units_solds
FROM fact_retail_inventory 
GROUP BY category
ORDER BY total_units_solds DESC LIMIT 1;

SELECT category, COUNT(inventory_level) AS total_available 
FROM fact_retail_inventory 
GROUP BY category
ORDER BY total_available DESC;

SELECT MIN(discount) AS min_discount, MAX(discount) AS max_discount
FROM fact_retail_inventory;


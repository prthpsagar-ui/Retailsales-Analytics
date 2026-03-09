CREATE DATABASE RetailSales;

USE RetailSales;

CREATE TABLE retail_sales (
order_id INT,
order_date DATE,
city VARCHAR(50),
state VARCHAR(50),
category VARCHAR(50),
product_name VARCHAR(100),
quantity INT,
unit_price FLOAT,
discount_percent INT,
payment_mode VARCHAR(50),
customer_age INT
);

INSERT INTO retail_sales
SELECT *
FROM retail_sales_raw;

SELECT COUNT(*) FROM retail_sales;
SELECT TOP (1000) *
FROM retail_sales

SELECT *
INTO retail_sales_clean
FROM retail_sales;

DELETE FROM retail_sales_clean
WHERE order_id IS NULL
OR product_name IS NULL
OR payment_mode IS NULL;

WITH duplicate_cte AS
(
SELECT *,
ROW_NUMBER() OVER(
PARTITION BY order_id, product_name, order_date
ORDER BY order_id) AS row_num
FROM retail_sales_clean
)

DELETE FROM duplicate_cte
WHERE row_num > 1;

UPDATE retail_sales_clean
SET city = 'Bangalore'
WHERE city = 'Bengaluru';

ALTER TABLE retail_sales_clean
ADD total_sales FLOAT;

UPDATE retail_sales_clean
SET total_sales =
(quantity * unit_price) -
(quantity * unit_price * discount_percent / 100);

SELECT SUM(total_sales) AS total_revenue
FROM retail_sales_clean;

SELECT category,
SUM(total_sales) AS revenue
FROM retail_sales_clean
GROUP BY category
ORDER BY revenue DESC;

SELECT TOP 10 product_name,
SUM(total_sales) AS sales
FROM retail_sales_clean
GROUP BY product_name
ORDER BY sales DESC;

SELECT city,
SUM(total_sales) AS city_sales
FROM retail_sales_clean
GROUP BY city;

SELECT category,
SUM(total_sales) AS revenue
FROM retail_sales_clean
GROUP BY category
HAVING SUM(total_sales) > 100000;

SELECT AVG(total_sales) AS avg_order_value
FROM retail_sales_clean;

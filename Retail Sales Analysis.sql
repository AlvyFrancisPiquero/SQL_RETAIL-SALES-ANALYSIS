CREATE DATABASE p1_retail_db;

CREATE TABLE retail_sales
(
    transactions_id INT PRIMARY KEY,
    sale_date DATE,	
    sale_time TIME,
    customer_id INT,	
    gender VARCHAR(15),
    age INT,
    category VARCHAR(15),
    quantity INT,
    price_per_unit FLOAT,	
    cogs FLOAT,
    total_sale FLOAT
);

SELECT * FROM retail_sales
LIMIT 10

SELECT 
	COUNT(*) 
FROM retail_sales

-- Data Cleaning 
SELECT * FROM retail_sales
WHERE transactions_id is NULL

SELECT * FROM retail_sales
WHERE sale_date is NULL

SELECT * FROM retail_sales
WHERE sale_time is NULL

SELECT * FROM retail_sales
WHERE 
	transactions_id is NULL
	OR
	sale_date is NULL
	OR
	sale_time is NULL
	OR
	gender is NULL
	OR
	category is NULL
	OR 
	quantity is NULL
	OR
	cogs is NULL
	OR
	total_sale is NULL;

---
DELETE FROM retail_sales
WHERE 
	transactions_id is NULL
	OR
	sale_date is NULL
	OR
	sale_time is NULL
	OR
	gender is NULL
	OR
	category is NULL
	OR 
	quantity is NULL
	OR
	cogs is NULL
	OR
	total_sale is NULL;

-- Data Exploration

-- How many sales?
SELECT COUNT (*) as total_sale FROM retail_sales

-- How many unique customers?
SELECT COUNT (DISTINCT customer_id) as total_sale FROM retail_sales

-- How many unique categories?
SELECT COUNT (DISTINCT category) as total_sale FROM retail_sales
-- Show unique categories
SELECT DISTINCT category FROM retail_sales

-- Data Analysis & Business Key Problems & Answers

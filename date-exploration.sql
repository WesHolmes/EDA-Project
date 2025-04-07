SELECT MIN(order_date) first_order_date,
MAX(order_date) last_order_date,
DATEDIFF(month, MIN(order_date), MAX(order_date)) AS order_range_months
FROM gold.fact_sales

SELECT 
MIN(birthdate) AS oldest_birthdate,
DATEDIFF(year, MIN(birthdate), GETDATE()) AS oldest_age,
MAX(birthdate) AS youngest_birthdate,
DATEDIFF (year, MAX(birthdate), GETDATE()) AS youngest_date
FROM gold.dim_customers
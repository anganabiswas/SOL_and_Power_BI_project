CREATE DATABASE mobile_data;
USE mobile_data;

SELECT * FROM mobile;

-- Q1: Check mobile fearures and price list
SELECT phone_name, price 
FROM mobile;

-- Q2: Find out the price of 5 most expensive phones
SELECT * FROM mobile
ORDER BY price DESC
limit 5;

-- Q3: Find out the price of 5 most cheapest phones
SELECT * FROM mobile
ORDER BY price ASC
limit 5;

-- Q4: List of top 5 Samsung phones with price and all features
SELECT * FROM mobile
WHERE Brands = "samsung"
ORDER BY price DESC
LIMIT 5;

-- Q5: Must have android phone list then top 5 High price android phones
SELECT * FROM mobile 
WHERE Operating_system_type = "android"
ORDER BY price DESC
limit 5;

-- Q6: Most have android phone list then top 5 lower price android phones
SELECT * FROM mobile
WHERE operating_system_type = "android"
ORDER BY price ASC
LIMIT 5;

-- Q7: Most have IOS phone list then top 5 High price IOS phones
SELECT * FROM mobile
WHERE operating_system_type = "IOS"
ORDER BY price DESC
LIMIT 5;

-- Q8: Most have IOS phone list then top 5 Lower price IOS phones
SELECT * FROM mobile 
WHERE operating_system_type = "IOS"
ORDER BY price ASC
limit 5;

-- Q9: Write a query which phone support 5g and also top 5 phone with 5g support
SELECT * FROM mobile 
WHERE 5g_availability = "yes"
ORDER BY price DESC
LIMIT 5;

-- Q10: Total price of all mobile is to be found with brand name
SELECT Brands, SUM(price)
FROM mobile 
GROUP BY Brands;





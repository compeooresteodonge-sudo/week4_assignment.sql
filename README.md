-- PLP WEEK 4 DATABASE ASSIGNMENT
-- Topic: Advanced SQL Queries and Aggregations
-- Name: ORESTE ODONGE COMPEO

USE sales;


-- QUESTION 1: Find the total payment for each date.

SELECT
    paymentDate,
    SUM(amount) AS total_amount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;


-- QUESTION 2: Find the average credit limit for each customer.

SELECT
    customerName,
    country,
    AVG(creditLimit) AS average_credit_limit
FROM customers
GROUP BY customerName, country;


-- QUESTION 3: Find the total price of products ordered.

SELECT
    productCode,
    quantityOrdered,
    SUM(priceEach * quantityOrdered) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;


-- QUESTION 4: Find the highest payment for each check number.

SELECT
    checkNumber,
    MAX(amount) AS highest_amount
FROM payments
GROUP BY checkNumber;


-- END OF ASSIGNMENT

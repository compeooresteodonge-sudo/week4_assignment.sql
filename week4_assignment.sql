-- ==========================================
-- PLP WEEK 4 DATABASE ASSIGNMENT
-- Topic: Advanced SQL Queries and Aggregations
-- Name: ORESTE ODONGE COMPEO
-- Program: Power Learn Project (PLP)
-- ==========================================

-- Select the sales database
USE sales;


-- QUESTION 1:
-- Find the total payment amount for each payment date.
-- Sort by latest date and show only 5 results.

SELECT
    paymentDate,
    SUM(amount) AS total_amount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;


-- QUESTION 2:
-- Find the average credit limit of each customer.
-- Display customer name, country and average credit limit.

SELECT
    customerName,
    country,
    AVG(creditLimit) AS average_credit_limit
FROM customers
GROUP BY customerName, country;


-- QUESTION 3:
-- Find the total price of products ordered.
-- Display product code, quantity ordered and total price.

SELECT
    productCode,
    quantityOrdered,
    SUM(priceEach * quantityOrdered) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;


-- QUESTION 4:
-- Find the highest payment amount for each check number.

SELECT
    checkNumber,
    MAX(amount) AS highest_amount
FROM payments
GROUP BY checkNumber;


-- ==========================================
-- END OF WEEK 4 DATABASE ASSIGNMENT
-- ==========================================
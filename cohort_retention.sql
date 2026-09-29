
-- VEDA Technology Internship
-- Day 22: Cohort Retention Basics
-- Author: Diya Goel

-- Query 1: Count unique customers in each signup cohort
SELECT
    cohort_month,
    COUNT(DISTINCT customer_id) AS cohort_size
FROM orders
GROUP BY cohort_month
ORDER BY cohort_month;

-- Query 2: Count active customers by cohort and order month
SELECT
    cohort_month,
    order_month,
    COUNT(DISTINCT customer_id) AS active_customers
FROM orders
GROUP BY cohort_month, order_month
ORDER BY cohort_month, order_month;

-- Query 3: Calculate revenue by signup cohort
SELECT
    cohort_month,
    SUM(order_amount) AS total_revenue
FROM orders
GROUP BY cohort_month
ORDER BY cohort_month;

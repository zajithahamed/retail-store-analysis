-- Overall sales performance
-- Calculate total revenue, total transactions, average sale and highest transaction value

SELECT
    ROUND(SUM("Total"), 2) AS total_revenue,
    COUNT(*) AS total_transactions,
    ROUND(AVG("Total"), 2) AS average_transaction,
    MAX("Total") AS highest_transaction
FROM supermarket_sales;

-- Branch performance
-- Compare revenue, transactions and average sales by branch

SELECT
    "Branch",
    ROUND(SUM("Total"), 2) AS total_revenue,
    COUNT(*) AS transactions,
    ROUND(AVG("Total"), 2) AS average_sale
FROM supermarket_sales
GROUP BY "Branch"
ORDER BY total_revenue desc;

-- City performance
-- Compare revenue, transactions and average sales by city

SELECT
    "City",
    ROUND(SUM("Total"), 2) AS total_revenue,
    COUNT(*) AS transactions,
    ROUND(AVG("Total"), 2) AS average_sale
FROM supermarket_sales
GROUP BY "City"
ORDER BY total_revenue DESC;

-- Product category performance
-- Compare revenue and units sold across product categories

SELECT
    "Product line",
    ROUND(SUM("Total"), 2) AS total_revenue,
    SUM("Quantity") AS units_sold
FROM supermarket_sales
GROUP BY "Product line"
ORDER BY total_revenue DESC;

-- Customer type analysis
-- Compare transaction counts, revenue and average spending

SELECT
    "Customer type",
    COUNT(*) AS transactions,
    ROUND(SUM("Total"), 2) AS total_revenue,
    ROUND(AVG("Total"), 2) AS average_transaction
FROM supermarket_sales
GROUP BY "Customer type"
ORDER BY total_revenue DESC;

-- Payment method analysis
-- Compare transaction counts, revenue and average spending across
-- different payment methods

SELECT
    "Payment",
    COUNT(*) AS transactions,
    ROUND(SUM("Total"), 2) AS total_revenue,
    ROUND(AVG("Total"), 2) AS average_transaction
FROM supermarket_sales
GROUP BY "Payment"
ORDER BY total_revenue DESC;
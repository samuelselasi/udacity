-- Query that returns top 5 orders in terms of total_amt_usd from orders table
SELECT id, account_id, total_amt_usd
 FROM orders
ORDER BY total_amt_usd DESC
 LIMIT 5;

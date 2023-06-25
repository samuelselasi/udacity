-- Query to return the lowest 20 orders in terms of the smallest total_amt_usd
SELECT id, account_id, total_amt_usd
 FROM orders
ORDER BY total_amt_usd
 LIMIT 20;

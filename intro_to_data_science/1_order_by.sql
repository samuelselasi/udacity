-- Query that returns the 10 earliest orders in orders table.
SELECT id, occurred_at, total_amt_usd
 FROM orders
ORDER BY occurred_at
 LIMIT 10;

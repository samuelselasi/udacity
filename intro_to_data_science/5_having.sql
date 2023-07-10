-- Which accounts spent less than 1,000 usd total across all orders?
SELECT DISTINCT accounts.name, orders.account_id, SUM(orders.total_amt_usd) total_across_all_orders
FROM accounts
JOIN orders ON accounts.id = orders.account_id
GROUP BY accounts.name, orders.account_id
HAVING SUM(orders.total_amt_usd) < 1000
ORDER BY SUM(orders.total_amt_usd);

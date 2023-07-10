--How many accounts have more than 20 orders?
SELECT DISTINCT accounts.name, COUNT(accounts.name) no_orders
FROM accounts
JOIN orders ON accounts.id = orders.account_id
GROUP BY accounts.name
HAVING COUNT(accounts.name) > 20
ORDER BY no_orders

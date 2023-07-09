-- Which account (by name) placed the earliest order? Your solution should have the account name and the date of the order.
SELECT accounts.name, MIN(orders.occurred_at)
FROM accounts
JOIN orders ON accounts.id = orders.account_id
GROUP BY accounts.name
ORDER BY MIN(orders.occurred_at)
LIMIT 1;

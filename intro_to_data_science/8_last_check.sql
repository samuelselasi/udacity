-- Find all the orders that occurred in 2015. Your final table should have 4 columns: occurred_at, account name, order total, and order total_amt_usd.
SELECT orders.occurred_at, accounts.name, orders.total, orders.total_amt_usd
FROM orders
JOIN accounts ON accounts.id = orders.account_id
WHERE occurred_at BETWEEN '2015-01-01' AND '2016-01-01'
ORDER BY occurred_at;

-- In which month of which year did Walmart spend the most on gloss paper in terms of dollars?
SELECT DATE_PART('year', orders.occurred_at) AS year,
	   DATE_PART('month', orders.occurred_at) AS month,
	   SUM(orders.gloss_amt_usd) gloss_usd
FROM orders
JOIN accounts ON accounts.id = orders.account_id
WHERE accounts.name LIKE '%Walmart%'
GROUP BY DATE_PART('year', orders.occurred_at),
		 DATE_PART('month', orders.occurred_at)
ORDER BY gloss_usd DESC
LIMIT 1;

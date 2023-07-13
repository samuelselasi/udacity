-- Which month did Parch & Posey have the greatest sales in terms of total dollars? Are all months evenly represented by the dataset?
SELECT DATE_PART('month', occurred_at) AS month,
	   SUM(total_amt_usd) total
FROM orders
GROUP BY DATE_PART('month', occurred_at)
ORDER BY total DESC
LIMIT 1;

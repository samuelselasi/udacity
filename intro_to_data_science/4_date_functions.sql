-- Which month did Parch & Posey have the greatest sales in terms of total number of orders? Are all months evenly represented by the dataset?
SELECT DATE_PART('month', occurred_at) AS month,
	   SUM(total) total_orders
FROM orders
GROUP BY DATE_PART('month', occurred_at)
ORDER BY total_orders DESC
LIMIT 1;

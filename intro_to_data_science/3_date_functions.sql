-- Which year did Parch & Posey have the greatest sales in terms of total number of orders? Are all years evenly represented by the dataset?
SELECT DATE_PART('year', occurred_at) AS year,
	   SUM(total) total_orders
FROM orders
GROUP BY DATE_PART('year', occurred_at)
ORDER BY total_orders DESC
LIMIT 1;

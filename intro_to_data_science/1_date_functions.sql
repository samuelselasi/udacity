-- Find the sales in terms of total dollars for all orders in each year, ordered from greatest to least. Do you notice any trends in the yearly sales totals?
SELECT DATE_TRUNC('year', occurred_at), SUM(total_amt_usd) total
FROM orders
GROUP BY DATE_TRUNC('year', occurred_at)
ORDER BY total DESC;

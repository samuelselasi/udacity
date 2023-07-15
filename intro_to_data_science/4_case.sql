-- We would now like to perform a similar calculation to the first, but we want to obtain the total amount spent by customers only in 2016 and 2017. Keep the same levels as in the previous question. Order with the top spending customers listed first.
SELECT accounts.name,
	   SUM(orders.total_amt_usd) AS total_sales,
       CASE WHEN SUM(orders.total_amt_usd) > 200000 THEN 'greater than 200,000'
       		WHEN SUM(orders.total_amt_usd) > 100000 AND SUM(orders.total_amt_usd) < 200000 THEN '200,000 and 100,000'
       		WHEN SUM(orders.total_amt_usd) < 100000 THEN 'under 100,000'
       END AS order_level
       FROM orders
       JOIN accounts ON accounts.id = orders.account_id
WHERE orders.occurred_at BETWEEN '2016-01-01' AND '2018-01-01'
GROUP BY accounts.name
ORDER BY SUM(orders.total_amt_usd) DESC;

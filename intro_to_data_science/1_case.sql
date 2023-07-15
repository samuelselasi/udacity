-- Write a query to display for each order, the account ID, total amount of the order, and the level of the order - ‘Large’ or ’Small’ - depending on if the order is $3000 or more, or smaller than $3000.
SELECT account_id,
	   total_amt_usd,
       CASE WHEN total_amt_usd > 3000 THEN 'Large'
       			ELSE 'Small'
       END AS order_level
       FROM orders
ORDER BY total_amt_usd DESC;

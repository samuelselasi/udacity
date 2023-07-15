-- Write a query to display the number of orders in each of three categories, based on the total number of items in each order. The three categories are: 'At Least 2000', 'Between 1000 and 2000' and 'Less than 1000'.SELECT account_id,
	   total_amt_usd,
       CASE WHEN total_amt_usd >= 2000 THEN 'At least 2000' 
       		WHEN total_amt_usd > 1000 AND total_amt_usd < 2000 THEN 'Between 1000 and 2000'
       		WHEN total_amt_usd < 1000 THEN 'Less than 1000'
       END AS order_level
       FROM orders
ORDER BY total_amt_usd DESC;

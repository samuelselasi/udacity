-- We would like to identify top performing sales reps, which are sales reps associated with more than 200 orders. Create a table with the sales rep name, the total number of orders, and a column with top or not depending on if they have more than 200 orders. Place the top sales people first in your final table.
SELECT sales_reps.name,
	   COUNT(orders.account_id) AS no_orders,
       CASE
       		WHEN COUNT(orders.account_id) > 200 THEN 'top'
            WHEN COUNT(orders.account_id) <= 200 THEN 'not'
       END AS level
  FROM sales_reps
  JOIN accounts ON sales_reps.id = accounts.sales_rep_id
  JOIN orders ON accounts.id = orders.account_id
  GROUP BY sales_reps.name
  ORDER BY COUNT(orders.account_id) DESC;

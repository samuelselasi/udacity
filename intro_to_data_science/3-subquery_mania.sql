-- How many accounts had more total purchases than the account name which has bought the most standard_qty paper throughout their lifetime as a customer?
SELECT 
 sales_reps.name AS rep_name,
 SUM(orders.total) AS total_orders
FROM sales_reps
  JOIN region ON region.id = sales_reps.region_id
  JOIN accounts ON sales_reps.id = accounts.sales_rep_id
  JOIN orders ON accounts.id = orders.account_id

where orders.total >=

(
SELECT
   COUNT(orders.total) AS no_total_orders
	FROM sales_reps
        JOIN region ON region.id = sales_reps.region_id
    	JOIN accounts ON sales_reps.id = accounts.sales_rep_id
    	JOIN orders ON accounts.id = orders.account_id 
  WHERE sales_reps.name = 
(
SELECT 
	   sales_reps.name AS rep_name
   FROM sales_reps
        JOIN region ON region.id = sales_reps.region_id
    	JOIN accounts ON sales_reps.id = accounts.sales_rep_id
    	JOIN orders ON accounts.id = orders.account_id
  GROUP BY sales_reps.name
  ORDER BY SUM(orders.standard_qty) DESC
  LIMIT 1)
GROUP BY sales_reps.name)
GROUP BY sales_reps.name

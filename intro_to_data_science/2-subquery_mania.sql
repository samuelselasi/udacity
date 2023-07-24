-- For the region with the largest (sum) of sales total_amt_usd, how many total (count) orders were placed?
SELECT
		   sales_reps.name AS rep_name,
		   region.name AS region_name,
           COUNT(orders.account_id) AS no_orders
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
  GROUP BY region.name, sales_reps.name
  ORDER BY SUM(orders.total_amt_usd) DESC
  LIMIT 1)
 GROUP BY sales_reps.name, region.name

-- Provide the name of the sales_rep in each region with the largest amount of total_amt_usd sales.
SELECT sales_reps.name AS rep_name,
	   region.name AS region_name,
       SUM(orders.total_amt_usd) AS total_sales_usd
   FROM sales_reps
   	JOIN region ON region.id = sales_reps.region_id
    JOIN accounts ON sales_reps.id = accounts.sales_rep_id
    JOIN orders ON accounts.id = orders.account_id
  GROUP BY sales_reps.name, region.name
  ORDER BY SUM(orders.total_amt_usd) DESC
  LIMIT 1;

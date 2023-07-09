-- Find the number of sales reps in each region. Your final table should have two columns - the region and the number of sales_reps. Order from fewest reps to most reps.
SELECT region.name, COUNT(sales_reps.name) no_sales_reps
FROM region
JOIN sales_reps ON region.id = sales_reps.region_id
GROUP BY region.name
ORDER BY no_sales_reps;

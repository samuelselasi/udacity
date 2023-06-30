-- Provide a table that provides the region for each sales_rep along with their associated accounts. Your final table should include three columns: the region name, the sales rep name, and the account name. Sort the accounts alphabetically (A-Z) according to account name.
SELECT 	region.name region_name, sales_reps.name sales_rep_name, accounts.name account_name
 FROM region
 JOIN sales_reps ON region.id = sales_reps.region_id
 JOIN accounts ON sales_reps.id = accounts.sales_rep_id
 ORDER BY accounts.name;

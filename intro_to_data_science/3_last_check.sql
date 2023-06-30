-- Provide a table that provides the region for each sales_rep along with their associated accounts. This time only for accounts where the sales rep has a last name starting with K and in the Midwest region. Your final table should include three columns: the region name, the sales rep name, and the account name. Sort the accounts alphabetically (A-Z) according to account name.
SELECT region.name RegionName, sales_reps.name SalesRepName, accounts.name AccountName
FROM region
JOIN sales_reps ON region.id = sales_reps.region_id
JOIN accounts on sales_reps.id = accounts.sales_rep_id
WHERE region.name = 'Midwest' AND sales_reps.name LIKE '% K%'
ORDER BY accounts.name;

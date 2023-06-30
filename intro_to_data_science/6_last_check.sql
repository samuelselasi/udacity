-- Provide the name for each region for every order, as well as the account name and the unit price they paid (total_amt_usd/total) for the order. However, you should only provide the results if the standard order quantity exceeds 100 and the poster order quantity exceeds 50. Your final table should have 3 columns: region name, account name, and unit price. Sort for the largest unit price first. In order to avoid a division by zero error, adding .01 to the denominator here is helpful (total_amt_usd/(total+0.01).
SELECT region.name RegionName, accounts.name AccountName, orders.total_amt_usd/(orders.total + 0.01) UnitPrice
FROM region
JOIN sales_reps ON region.id = sales_reps.region_id
JOIN accounts ON sales_reps.id = accounts.sales_rep_id
JOIN orders ON accounts.id = orders.account_id
WHERE orders.standard_qty > 100 AND orders.poster_qty > 50
ORDER BY UnitPrice DESC;

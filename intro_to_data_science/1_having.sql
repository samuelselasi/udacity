-- How many of the sales reps have more than 5 accounts that they manage?
SELECT DISTINCT sales_rep_id, sales_reps.name, COUNT(*) num_accounts
FROM accounts
JOIN sales_reps ON sales_reps.id = accounts.sales_rep_id
GROUP BY sales_rep_id, sales_reps.name
HAVING COUNT(sales_rep_id) > 5
ORDER BY num_accounts

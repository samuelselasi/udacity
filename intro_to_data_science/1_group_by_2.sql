-- For each account, determine the average amount of each type of paper they purchased across their orders. Your result should have four columns - one for the account name and one for the average quantity purchased for each of the paper types for each account.
SELECT accounts.name,
       AVG(orders.standard_qty) avg_standard_qty,
       AVG(orders.gloss_qty) avg_gloss_qty,
       AVG(orders.poster_qty) avg_poster_qty
FROM accounts
JOIN orders ON accounts.id = orders.account_id
GROUP BY accounts.name;

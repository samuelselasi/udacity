-- For each account, determine the average amount spent per order on each paper type. Your result should have four columns - one for the account name and one for the average amount spent on each paper type.
SELECT accounts.name,
       AVG(orders.standard_amt_usd) avg_standard_amt,
       AVG(orders.gloss_amt_usd) avg_gloss_amt,
       AVG(orders.poster_amt_usd) avg_poster_amt
FROM accounts
JOIN orders ON accounts.id = orders.account_id
GROUP BY accounts.name;

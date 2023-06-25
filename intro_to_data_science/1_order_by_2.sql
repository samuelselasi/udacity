-- Query that returns results in order by 2 columns
SELECT id, account_id, total_amt_usd
 FROM ORDERS
ORDER BY account_id, total_amt_usd DESC

SELECT id, account_id, total_amt_usd
 FROM ORDERS
ORDER BY total_amt_usd DESC, account_id

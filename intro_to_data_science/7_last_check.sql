-- What are the different channels used by account id 1001? Your final table should have only 2 columns: account name and the different channels. You can try SELECT DISTINCT to narrow down the results to only the unique values.
SELECT DISTINCT accounts.name, web_events.channel
FROM accounts
JOIN web_events ON accounts.id = web_events.account_id
WHERE accounts.id = 1001

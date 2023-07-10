-- Which channel was most frequently used by most accounts?
SELECT DISTINCT accounts.name, web_events.channel, COUNT(*) no_occurrences
FROM accounts
JOIN web_events ON accounts.id = web_events.account_id
GROUP BY accounts.name, web_events.channel
ORDER BY no_occurrences DESC
LIMIT 100;

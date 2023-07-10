-- Which account used facebook most as a channel?
SELECT DISTINCT accounts.name, web_events.channel, COUNT(*) no_occurrences
FROM accounts
JOIN web_events ON accounts.id = web_events.account_id
WHERE web_events.channel LIKE '%facebook%'
GROUP BY accounts.name, web_events.channel
HAVING COUNT(*) > 6
ORDER BY no_occurrences DESC
LIMIT 1;

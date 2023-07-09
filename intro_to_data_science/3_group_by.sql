-- Via what channel did the most recent (latest) web_event occur, which account was associated with this web_event? Your query should return only three values - the date, channel, and account name.
SELECT MAX(web_events.occurred_at) date, web_events.channel, accounts.name
FROM web_events
JOIN accounts ON accounts.id = web_events.account_id
GROUP BY accounts.name, web_events.channel
ORDER BY date DESC
LIMIT 1;

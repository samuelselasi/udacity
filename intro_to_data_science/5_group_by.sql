-- Who was the primary contact associated with the earliest web_event?
SELECT accounts.primary_poc
FROM accounts
JOIN web_events on accounts.id = web_events.account_id
GROUP BY accounts.primary_poc
ORDER BY MIN(web_events.occurred_at)
LIMIT 1;

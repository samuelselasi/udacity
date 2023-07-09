-- Determine the number of times a particular channel was used in the web_events table for each region. Your final table should have three columns - the region name, the channel, and the number of occurrences. Order your table with the highest number of occurrences first.
SELECT region.name region_name,
	   web_events.channel channel,
       COUNT(web_events.channel) no_occurrences
FROM region
JOIN sales_reps ON region.id = sales_reps.region_id
JOIN accounts ON sales_reps.id = accounts.sales_rep_id
JOIN web_events ON accounts.id = web_events.account_id
GROUP BY region.name, web_events.channel
ORDER BY no_occurrences DESC;

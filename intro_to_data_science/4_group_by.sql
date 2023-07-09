-- Find the total number of times each type of channel from the web_events was used. Your final table should have two columns - the channel and the number of times the channel was used.
SELECT channel, COUNT(channel) no_times
FROM web_events
GROUP BY web_events.channel
ORDER BY no_times DESC;

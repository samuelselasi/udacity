-- Query that uses LIMIT to display data in web_events table
SELECT occurred_at, account_id, channel
 FROM web_events
  LIMIT 15;

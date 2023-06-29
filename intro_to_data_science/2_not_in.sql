-- Use the web_events table to find all information regarding individuals who were contacted via any method except using organic or adwords methods.
SELECT *
 FROM web_events
  WHERE channel NOT IN ('organic', 'adwords')

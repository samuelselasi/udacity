-- Via the video, you might be interested in how to calculate the MEDIAN. Though this is more advanced than what we have covered so far try finding - what is the MEDIAN total_usd spent on all orders?
SELECT AVG(total_amt_usd) AS median_value
FROM (
  SELECT total_amt_usd,
         ROW_NUMBER() OVER (ORDER BY total_amt_usd) AS row_num,
         COUNT(*) OVER () AS total_rows
  FROM orders
) subquery
WHERE row_num IN (FLOOR((total_rows + 1) / 2), CEIL((total_rows + 1) / 2));


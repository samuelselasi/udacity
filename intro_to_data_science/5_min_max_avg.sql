-- Find the mean (AVERAGE) amount spent per order on each paper type, as well as the mean amount of each paper type purchased per order. Your final answer should have 6 values - one for each paper type for the average number of sales, as well as the average amount.
SELECT AVG(standard_qty) standard_qty, AVG(gloss_qty) gloss_qty, AVG(poster_qty) poster_qty,
	   AVG(standard_amt_usd) standard_amt, AVG(gloss_amt_usd) gloss_amt, AVG(poster_amt_usd) poster_amt
FROM orders

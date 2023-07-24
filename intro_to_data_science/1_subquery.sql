-- SELECT AVG(standard_qty) as std_qty,
	   AVG(gloss_qty) as glos_qtyy,
       AVG(poster_qty) as post_qty,
       SUM(total_amt_usd) as total_usd
 FROM orders
  WHERE DATE_TRUNC('month', occurred_at) =
(SELECT DATE_TRUNC('month', MIN(occurred_at)) as min_month
	FROM orders)

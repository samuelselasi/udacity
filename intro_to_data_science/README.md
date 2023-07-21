# Intro to Programming for DATA Science Scholarship Program
## Quizes

[QUIZ: LIMIT](./limit.sql)

Try using `LIMIT` yourself below by writing a query that displays all the data in the `occurred_at`, `account_id`, and `channel` columns of the `web_events` table, and limits the output to only the first `15` rows.

[Quiz: ORDER BY:](./1_order_by.sql)

Write a query to return the `10` earliest orders in the `orders` table. Include the `id`, `occurred_at`, and `total_amt_usd`.

[Quiz: ORDER BY:](./2_order_by.sql)

Write a query to return the top `5` orders in terms of largest `total_amt_usd`. Include the `id`, `account_id`, and `total_amt_usd`.

[Quiz: ORDER BY:](./3_order_by.sql)

Write a query to return the lowest `20` orders in terms of smallest `total_amt_usd`. Include the `id`, `account_id`, and `total_amt_usd`.

[Quiz: ORDER BY_2:](./1_order_by_2.sql)

Write a query that displays the order ID, account ID, and total dollar amount for all the orders, sorted first by the account ID (in ascending order), and then by the total dollar amount (in descending order).

[Quiz: ORDER BY_2:](./2_order_by_2.sql)

Now write a query that again displays order ID, account ID, and total dollar amount for each order, but this time sorted first by total dollar amount (in descending order), and then by account ID (in ascending order).

# Two sections completed...tbc
## SQL Aggregations
## Subquery Formatting
When writing Subqueries, it is easy for your query to look incredibly complex. In order to assist your reader, which is often just yourself at a future date, formatting SQL will help with understanding your code.

The important thing to remember when using subqueries is to provide some way for the reader to easily determine which parts of the query will be executed together. Most people do this by indenting the subquery in some way - you saw this with the solution blocks in the previous concept.

The examples in this class are indented quite far—all the way to the parentheses. This isn’t practical if you nest many subqueries, but in general, be thinking about how to write your queries in a readable way. Examples of the same query written multiple different ways is provided below. You will see that some are much easier to read than others.

### Badly Formatted Queries
Though these poorly formatted examples will execute the same way as the well formatted examples, they just aren't very friendly for understanding what is happening!

Here is the first, where it is impossible to decipher what is going on:

```
SELECT  *FROM (SELECT DATE_TRUNC('day',occurred_at) AS day, channel, COUNT(*) as events FROM web_events GROUP BY 1,2 ORDER BY 3 DESC) sub;
```

This second version, which includes some helpful line breaks, is easier to read than that previous version, but it is still not as easy to read as the queries in the Well Formatted Query section.

```
SELECT *
FROM (
SELECT DATE_TRUNC('day',occurred_at) AS day,
channel, COUNT(*) as events
FROM web_events 
GROUP BY 1,2
ORDER BY 3 DESC) sub;
```

### Well Formatted Query
Now for a well formatted example, you can see the table we are pulling from much easier than in the previous queries.

```
SELECT *
FROM (SELECT DATE_TRUNC('day',occurred_at) AS day,
                channel, COUNT(*) as events
      FROM web_events 
      GROUP BY 1,2
      ORDER BY 3 DESC) sub;
```

Additionally, if we have a GROUP BY, ORDER BY, WHERE, HAVING, or any other statement following our subquery, we would then indent it at the same level as our outer query.

The query below is similar to the above, but it is applying additional statements to the outer query, so you can see there are GROUP BY and ORDER BY statements used on the output are not tabbed. The inner query GROUP BY and ORDER BY statements are indented to match the inner table.
```
SELECT *
FROM (SELECT DATE_TRUNC('day',occurred_at) AS day,
                channel, COUNT(*) as events
      FROM web_events 
      GROUP BY 1,2
      ORDER BY 3 DESC) sub
GROUP BY day, channel, events
ORDER BY 2 DESC;
```
These final two queries are so much easier to read!



-- Use the accounts table to find: All companies whose names do not end with 's'.
SELECT name
 FROM accounts
  WHERE name NOT LIKE '%s'

> Latest Order for Each Customer 

You are given an Orders table:

| order_id | customer_id | order_date |
| -------- | ----------- | ---------- |
| 101      | 1           | 2024-01-10 |
| 102      | 1           | 2024-02-15 |
| 103      | 2           | 2024-01-20 |
| 104      | 2           | 2024-03-01 |
| 105      | 3           | 2024-02-05 |

Write an SQL query to retrieve the most recent (latest) order for each customer.

Expected Output:

| order_id | customer_id | order_date |
| -------- | ----------- | ---------- |
| 102      | 1           | 2024-02-15 |
| 104      | 2           | 2024-03-01 |
| 105      | 3           | 2024-02-05 |


Answer:

SELECT *
FROM (
    SELECT *,
           ROW_NUMBER() OVER(
               PARTITION BY customer_id
               ORDER BY order_date DESC
           ) rn
    FROM Orders
) t
WHERE rn = 1;
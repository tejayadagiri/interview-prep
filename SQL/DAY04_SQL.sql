Write a query to show, for each month, the sales amount along with the difference from the previous month's sales.

Example Input:

id	month	amount
1	Jan	1000
2	Feb	1500
3	Mar	800
4	Apr	2000

Example Output:

month	amount	diff_from_prev
Jan	1000	NULL
Feb	1500	500
Mar	800	-700
Apr	2000	1200


solution:
SELECT month,amount,amount - LAG(amount) OVER (ORDER BY month) AS diff_from_prev
FROM Sales
ORDER BY month;


notes 

LAG = look back, LEAD = look forward — easy to remember: "LAG lags behind" (previous row), "LEAD leads ahead" (next row).
Formula pattern: current_value - LAG(current_value) OVER (ORDER BY ...) = difference from previous row.

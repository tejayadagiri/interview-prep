\## Day 01

\- DSA: Reverse array using two-pointer technique (left/right pointers, swap and move inward)

\- Pattern: Two-pointer is useful for reversing, palindrome checks, and pair-sum problems

\- SQL: subquery trick for second highest salary



Day 02

* SQL: PARTITION BY e.departmentId creates separate rankings for each department.

ORDER BY e.salary DESC ranks employees from highest to lowest salary.

DENSE\_RANK() = 1 selects the employee(s) with the highest salary in each department.

If multiple employees have the same highest salary, they all receive rank 1 and are included in the result.



DSA:

* This is called the "running best" or "track as you go" pattern

\- Same core idea is reused for: finding minimum, finding sum, counting occurrences, Kadane's algorithm (max subarray sum), and more

\- Never assume max\_val = 0 at the start - if all numbers are negative, that would give a wrong answer. Always start with arr\[0].

Day 03
sql: 

Step by step:

1\. Joined Employee and Department tables to get department names alongside each employee.

2\. Used DENSE\_RANK() with PARTITION BY departmentId to rank salaries separately within each department.

3\. Ordered by salary DESC so the highest salary gets rank 1.

4\. DENSE\_RANK ensures tied salaries share the same rank, and the next rank doesn't skip a number.

5\. Filtered with WHERE rnk <= 3 to keep only the top 3 unique salary levels per department.


DSA:
1. seen holds the characters currently inside our window (no duplicates allowed).

2\. j moves forward one character at a time across the string.

3\. Before adding s\[j], check if it is already in seen.

4\. If it is a duplicate, shrink the window from the left (move i forward, 

&#x20;  removing characters) until the duplicate is gone.

5\. Add s\[j] to seen once it's safe.

6\. Calculate window size as j - i + 1, and update n if this is the biggest 

&#x20;  window seen so far.

7\. Return n at the end.


 ## SQL: High Earners in Each Department

Question:
Find employees whose salary is among the top 3 unique salaries in their department.

Answer:
WITH RankedSalaries AS (
    SELECT
        e.name AS Employee,
        e.salary AS Salary,
        d.name AS Department,
        DENSE_RANK() OVER (
            PARTITION BY e.departmentId
            ORDER BY e.salary DESC
        ) AS rnk
    FROM Employee e
    JOIN Department d
        ON e.departmentId = d.id
)
SELECT Department, Employee, Salary
FROM RankedSalaries
WHERE rnk <= 3;

Key Points:
## SQL: High Earners in Each Department

Question: Find employees whose salary is in the top 3 (unique) salaries in their department.

Answer:
WITH RankedSalaries AS (
    SELECT
        e.name AS Employee,
        e.salary AS Salary,
        d.name AS Department,
        DENSE_RANK() OVER (
            PARTITION BY e.departmentId
            ORDER BY e.salary DESC
        ) AS rnk
    FROM Employee e
    JOIN Department d ON e.departmentId = d.id
)
SELECT Department, Employee, Salary
FROM RankedSalaries
WHERE rnk <= 3;

Step by step:
1. Joined Employee and Department tables to get department names alongside each employee.
2. Used DENSE_RANK() with PARTITION BY departmentId to rank salaries separately within each department.
3. Ordered by salary DESC so the highest salary gets rank 1.
4. DENSE_RANK ensures tied salaries share the same rank, and the next rank doesn't skip a number.
5. Filtered with WHERE rnk <= 3 to keep only the top 3 unique salary levels per department.
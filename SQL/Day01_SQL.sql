-- Day 01: Find the second highest salary from Employee table

SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee); 

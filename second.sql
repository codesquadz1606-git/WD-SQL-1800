-- Operators in SQL
-- Arthemetic Operator : +,-,*,/,%
use codedb;
select * from employees;

SELECT name,(salary*20)/100 from employees;

-- Comparison Operator : <,>,<=,>=,<>,= 
SELECT * FROM employees
WHERE department <> "IT";

-- Logical Operator
-- AND : All the condition must be true for the result , 
-- OR : In this it works on their own conditions & 
-- NOT : Except this.

SELECT * FROM employees
WHERE department="IT" AND department="HR";

SELECT * FROM employees
WHERE department="IT" OR department="HR";

SELECT * FROM employees
WHERE Not(department="IT" OR department="HR");

-- Special Operators
-- 1. Between
SELECT * FROM employees
where salary between 50000 AND 60000;

-- 2.Not Between
SELECT * FROM employees
where salary not between 50000 AND 60000;

-- 3. IN
SELECT * FROM employees
WHERE department IN("IT","HR","Marketing");

-- 4. Like
SELECT * FROM employees
where name like "S%";

SELECT * FROM employees
where name like "%y";

SELECT * FROM employees
WHERE name like "%sh%";

-- Update Query:
-- update table_name
-- set col_name=value
-- where col_name=value

UPDATE employees
SET department="Human Resources"
WHERE department="HR";

-- How to remove safe update mode
SET SQL_SAFE_UPDATES=0;

-- FIND OUT THE UNIQUE DEPARTMENT OR CITY : DISTINICT
SELECT distinct department from employees;

SELECT * FROM employees
WHERE department="Human Resources";

-- ORDER BY CLAUSE
SELECT * FROM employees
WHERE department="Human Resources"
ORDER BY SALARY ASC;

SELECT * FROM employees
WHERE department="Human Resources"
ORDER BY SALARY DESC;

-- WANT TO FIND TOP 5 DATA : LIMIT

SELECT * FROM employees
WHERE department="Human Resources"
ORDER BY SALARY DESC
LIMIT 5 OFFSET 3;
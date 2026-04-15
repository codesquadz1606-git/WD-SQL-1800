-- WINDOW FUNCTIONS
-- 📌 What are Window Functions?
-- A window function performs a calculation across a set of table rows related 
-- to the current row, without collapsing rows like GROUP BY.

-- 👉 Each row retains its identity, but also gets aggregated information.

-- Difference Between GROUP BY and Window Functions
-- | GROUP BY                      | WINDOW FUNCTION            |
-- | ----------------------------- | -------------------------- |
-- | Collapses rows                | Does NOT collapse rows     |
-- | One row per group             | Same number of rows        |
-- | Aggregation only              | Aggregation + ranking      |
-- | Cannot access individual rows | Can access row-by-row data |

-- 📌 Basic Syntax
-- function_name (expression)
-- OVER (
--     PARTITION BY column_name
--     ORDER BY column_name
--     ROWS / RANGE frame
-- )

-- Components Explained
-- 1 OVER() → Mandatory
-- Defines the window (set of rows).

-- 2 PARTITION BY
-- Divides data into groups (like GROUP BY but non-destructive).

-- 3 ORDER BY
-- Orders rows inside each partition.

-- 4 Frame Clause (ROWS / RANGE)
-- Defines which rows are included for calculation.
SELECT * FROM employees;
Use codedb;
-- 1. Aggregate Window Functions
-- 🔸 SUM()
-- Total salary per department (without losing rows)
select name ,department,salary,
SUM(SALARY) 
OVER ( PARTITION BY department ORDER BY department asc) AS SUM
from employees;

-- 🔸 AVG()
SELECT name,department,salary,
AVG(SALARY) 
OVER ( PARTITION BY department ORDER BY department DESC) AS Average
from employees;

-- 🔸 COUNT()
SELECT name,department,salary,
SUM(SALARY) 
OVER ( PARTITION BY department ORDER BY department asc) AS SUM,
AVG(SALARY) 
OVER ( PARTITION BY department ORDER BY department DESC) AS Average,
COUNT(*) 
OVER ( PARTITION BY department ORDER BY department desc) as Count
from employees;


-- 2. Ranking Window Functions (MOST ASKED ❗)
-- 🔸 ROW_NUMBER()
-- Unique numbering (no ties)
-- SELECT 
-- ROW_NUMBER() OVER(ORDER BY SALARY ASC) AS ROW_NO,
-- name,department,salary
-- FROM employees;

-- 🔸 RANK()
SELECT 
RANK() OVER(order by department asc),
department
from employees;

-- 🔸 DENSE_RANK()
-- No gaps in ranking
SELECT 
dense_rank() OVER(order by department asc),
department
from employees;

-- 3. Analytical Functions
-- 🔸 LAG() – Previous Row Value

-- 🔸 LEAD() – Next Row Value

SELECT name,
LAG(name) OVER(order by name asc) as Lag_Queue,
LEAD(name) OVER(order by name asc) as Lead_Queue
from employees;
use codedb;

CREATE TABLE emps(
ID INT PRIMARY KEY,
NAME VARCHAR(30),
MANAGER_ID INT);

DROP TABLE EMPS;

INSERT INTO EMPS VALUES
(1,"SHUBHAM",NULL),
(2,"SHUBH",1),
(3,"SANCHIT",1),
(4,"SHIVANG",2),
(5,"SURAJ",4),
(6,"SUJAL",3),
(7,"SHIVANGI",1),
(8,"SNEHA",1),
(9,"SHRUTI",2);

SELECT E.ID,E.NAME,E.MANAGER_ID
FROM EMPS AS E
WHERE E.MANAGER_ID IS NULL;

SELECT E.ID,E.NAME,E.MANAGER_ID
FROM EMPS AS E
WHERE E.MANAGER_ID IS NOT NULL;

SELECT E.ID,E.NAME,E.MANAGER_ID
FROM EMPS AS E
WHERE E.MANAGER_ID = 1;

-- ✅ What is a View?
-- A View is a virtual table created using a SELECT query.
-- It does not store data itself; it always shows data from base tables.
-- 👉 Used for security, simplification, and reusability.

-- Create View – Syntax
-- CREATE VIEW view_name AS
-- SELECT column1, column2
-- FROM table_name
-- WHERE condition;

CREATE VIEW HR_EMPLOYEES AS
SELECT * FROM EMPLOYEES
WHERE DEPARTMENT="HR";

SELECT * FROM HR_EMPLOYEES;

CREATE VIEW HIGH_PAID_EMPS AS
SELECT * FROM EMPLOYEES
WHERE SALARY>70000;

SELECT * FROM HIGH_PAID_EMPS;
DROP VIEW HR_EMPLOYEES;

-- -- ✅ What is a Stored Procedure?
-- -- A Stored Procedure is a set of SQL statements stored in the database and executed using a call.
-- -- 👉 Used for business logic, performance, and automation.

-- Create Procedure – Syntax
-- DELIMITER //
-- CREATE PROCEDURE procedure_name()
-- BEGIN
--    SQL statements;
-- END //
-- DELIMITER ;

-- Making procdure according to department name
DELIMITER //
CREATE PROCEDURE GET_DEPARTMENT_DATA(IN dept_name varchar(30))
BEGIN
	SELECT * FROM EMPLOYEES
    WHERE DEPARTMENT=dept_name;
END //
DELIMITER ;

CALL get_department_data("IT");
CALL get_department_data("HR");

-- Make a procedure that increments the salary based on designation;
DELIMITER //
CREATE PROCEDURE inc_salary_dep(
IN amt int,
IN dept varchar(30))
BEGIN
	UPDATE employees
    SET salary=salary+amt
    WHERE department=dept;
END //
DELIMITER ;

call inc_salary_dep(5000,"hr");

SET SQL_SAFE_UPDATES=0;
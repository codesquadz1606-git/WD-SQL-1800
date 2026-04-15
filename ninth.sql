-- Stored procedure can also return the data.
USE CODEDB;

DELIMITER //
CREATE PROCEDURE TOTAL_DEPT_AMT(IN DEPT VARCHAR(30) , OUT TOTAL VARCHAR(30))
BEGIN
	SELECT SUM(SALARY) INTO TOTAL
    FROM EMPLOYEES
    WHERE DEPARTMENT=DEPT;
END //
DELIMITER ;

CALL TOTAL_DEPT_AMT("IT",@totalITSalary);
SELECT @totalITSalary;

-- 1️⃣ What is a Trigger?
-- A Trigger is a database program that is automatically executed when a specific event happens
-- on a table.

-- 👉 You do not call a trigger manually.
-- 👉 It fires automatically on INSERT, UPDATE, or DELETE.

-- 2️⃣ Why Triggers are Important (Real Use)

-- | Use Case        | Example                               |
-- | --------------- | ------------------------------------- |
-- | Data Validation | Prevent negative salary               |
-- | Audit Logs      | Track salary changes                  |
-- | Security        | Prevent deletion of important records |
-- | Automation      | Auto-update stock                     |
-- | Integrity       | Maintain related tables               |

-- 3️⃣ Trigger Events
-- | Event  | Meaning               |
-- | ------ | --------------------- |
-- | INSERT | New row added         |
-- | UPDATE | Existing row modified |
-- | DELETE | Row removed           |

-- 4️⃣ Trigger Timing
-- | Timing | Meaning               |
-- | ------ | --------------------- |
-- | BEFORE | Runs before the event |
-- | AFTER  | Runs after the event  |

-- 5️⃣ OLD and NEW Keywords (Very Important)
-- | Operation | OLD | NEW |
-- | --------- | --- | --- |
-- | INSERT    | ❌   | ✅   |
-- | UPDATE    | ✅   | ✅   |
-- | DELETE    | ✅   | ❌   |

-- 6. Syntax of TRIGGERS
-- CREATE TRIGGER trigger_name
-- BEFORE | AFTER INSERT | UPDATE | DELETE
-- ON table_name
-- FOR EACH ROW
-- BEGIN
--    -- SQL statements
-- END;


CREATE TABLE employee1 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary INT
);

INSERT INTO employee1 VALUES
(101, 'Rahul', 'IT', 40000),
(102, 'Anita', 'HR', 35000),
(103, 'Vikas', 'Finance', 60000);

SELECT * FROM employee1;

-- NEW USER ENTERS THE TABLE , WE WILL CHECK THE SALARY & IF SALARY IS 10000 AUTOMATICALLY IN TABLE
-- SALARY IS UPDATE TO 10000.

DELIMITER $$
CREATE TRIGGER newEmp
BEFORE INSERT ON employee1
FOR EACH ROW
BEGIN
	IF NEW.SALARY<10000 THEN
		SET NEW.SALARY=10000;
	END IF;
END $$
DELIMITER ;

DROP TRIGGER newEmp;

INSERT INTO employee1 VALUES(104,"SHUBHAM","IT",5000);
SELECT * FROM EMPLOYEE1;

-- WE CANNOT DELETE ANY MANAGER
INSERT INTO EMPLOYEE1 VALUES
(105,"KAMAL","MANAGER",100000);

DELIMITER $$
CREATE TRIGGER AVOID_DELETE
BEFORE DELETE ON EMPLOYEE1
FOR EACH ROW
BEGIN
	IF OLD.DEPARTMENT="MANAGER" THEN
    SIGNAL SQLSTATE "45000"
    SET MESSAGE_TEXT="CANNOT DELETE MANAGER DATA";
	END IF;
END $$
DELIMITER ;

DELETE FROM EMPLOYEE1
WHERE EMP_ID=105;
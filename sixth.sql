use codedb;

CREATE TABLE department(
dep_id int primary key,
dep_name varchar(50));

CREATE TABLE emp(
emp_id int primary key,
emp_name varchar(30),
dept_id int,
foreign key (dept_id) references department(dep_id));

insert into department values (1,"HR"),(2,"IT"),(3,"Finance");

-- Parent table mae 9 kuch nhii h.
insert into emp values(2,"Nisha",9);

CREATE TABLE orders(
order_id int primary key,
order_name varchar(20),
dept_id int);

-- Alter command
ALTER TABLE orders
ADD CONSTRAINT fk_cust
FOREIGN KEY (dept_id) references department(dep_id);


CREATE TABLE manager(
manager_id int primary key,
manager_name varchar(30));

CREATE TABLE projects(
project_id int primary key,
project_name varchar(30),
project_manager int,
FOREIGN KEY (project_manager) references manager(manager_id)
on update cascade
on delete set null
);

INSERT INTO MANAGER VALUES(111,"SWATI"),(112,"NEHA"),(113,"KAPIL");
INSERT INTO PROJECTS VALUES
(1,"BANKING",111),
(2,"ECOMMERCE",112),
(3,"MEDICAL",111),
(4,"FINTECH",113),
(5,"AGRICULTURAL",111),
(6,"EDTECH",112),
(7,"STREAMING",111);

delete from manager
where manager_id=111;

SELECT * FROM projects;

INSERT INTO manager values (211,"Shivam");

update projects
SET project_manager=211
where project_manager IS NULL;

CREATE TABLE TECH(
emp_id int primary key,
emp_name varchar(30),
manager_id int,
FOREIGN KEY (manager_id) references tech(emp_id)
on update cascade
on delete cascade
);

drop table tech;

INSERT INTO tech values
(1,"Sara(CEO)",NULL),
(2,"James",1),
(3,"Kusum",1),
(4,"Chirag",2),
(5,"Bhushan",2),
(6,"Leo",3);

SET SQL_SAFE_UPDATES=0;

UPDATE tech 
set emp_id=111
where emp_id=1;
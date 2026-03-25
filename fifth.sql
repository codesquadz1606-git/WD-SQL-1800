use codedb;

SELECT city,sum(salary) as total FROM employees
where department="IT"
group by city
having total>70000;

-- Foreign Key : It helps us to communicate with other tables.

CREATE TABLE semsubject(
sub_id int primary key,
sub_name varchar(30),
depart_id int unique);

DROP TABLE semsubject;

CREATE TABLE trainer(
trainer_id int primary key,
trainer_name varchar(30),
trainer_sub_id int,
foreign key (trainer_sub_id) references semsubject(sub_id)
ON UPDATE CASCADE
ON DELETE CASCADE
);

INSERT INTO semsubject VALUES
(101,"PHYSICS",1101),
(102,"Biology",1102),
(103,"Maths",1103),
(104,"Discrete Maths",1104);

INSERT INTO trainer VALUES
(1,"Ketan",101),
(2,"Kishore",101),
(3,"Hemant",104),
(4,"Lalit",102),
(5,"Umesh",103),
(6,"Kuldeep",101);

SELECT * FROM TRAINER;

UPDATE semsubject
SET sub_id=201
WHERE sub_id=101;

UPDATE TRAINER
SET trainer_sub_id=204
where trainer_sub_id=104;

CREATE TABLE trainer_city(
city_name varchar(20),
trainer_id int,
FOREIGN KEY (trainer_id) references trainer(trainer_id));
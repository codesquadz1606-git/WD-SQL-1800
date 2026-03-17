CREATE DATABASE codeDB;
USE codedb;

CREATE TABLE student(
S_no int primary key auto_increment,
Name varchar(30) not null,
city varchar(20) default "Noida",
age int check(age>=19));

-- Want to see structure of a table
DESC student;

INSERT INTO student(name,age) VALUES("Dhruv",21);
INSERT INTO student(name,city,age) VALUES("Dhiresh","Mumbai",23);

SELECT * FROM student;

SELECT name,age from student;

 CREATE TABLE employees(
 id int primary key,
 name varchar(20),
 city varchar(20) not null,
 department varchar(20),
 salary int not null);
 
 INSERT INTO employees (id, name, city, department, salary) VALUES
(1,'Amit Sharma','Delhi','IT',55000),
(2,'Rohit Verma','Mumbai','HR',42000),
(3,'Neha Singh','Pune','Finance',60000),
(4,'Priya Mehta','Ahmedabad','Marketing',48000),
(5,'Ankit Gupta','Delhi','IT',65000),
(6,'Sneha Patel','Surat','HR',40000),
(7,'Rahul Khanna','Chandigarh','Sales',52000),
(8,'Karan Malhotra','Delhi','IT',70000),
(9,'Pooja Iyer','Chennai','Finance',58000),
(10,'Vikas Jain','Jaipur','Marketing',45000),

(11,'Suresh Kumar','Bangalore','IT',72000),
(12,'Ritu Arora','Delhi','HR',43000),
(13,'Manish Pandey','Lucknow','Sales',50000),
(14,'Alka Mishra','Bhopal','Finance',56000),
(15,'Nitin Agarwal','Agra','IT',62000),
(16,'Simran Kaur','Amritsar','Marketing',47000),
(17,'Deepak Yadav','Noida','Sales',51000),
(18,'Anjali Roy','Kolkata','HR',44000),
(19,'Arjun Nair','Kochi','Finance',59000),
(20,'Mohit Bansal','Gurgaon','IT',68000),

(21,'Sunita Reddy','Hyderabad','HR',46000),
(22,'Rakesh Sinha','Patna','Sales',49000),
(23,'Meenal Joshi','Indore','Marketing',48000),
(24,'Vivek Tiwari','Kanpur','IT',61000),
(25,'Nisha Kapoor','Delhi','Finance',63000),
(26,'Ajay Kulkarni','Nagpur','IT',64000),
(27,'Kavita Deshmukh','Nashik','HR',42000),
(28,'Sanjay Rao','Udupi','Sales',50000),
(29,'Rina Das','Siliguri','Marketing',45000),
(30,'Aakash Malviya','Ujjain','IT',67000),

(31,'Preeti Saxena','Meerut','HR',41000),
(32,'Varun Chawla','Ludhiana','Sales',52000),
(33,'Isha Goyal','Rohtak','Finance',57000),
(34,'Yogesh Patil','Kolhapur','IT',66000),
(35,'Payal Jain','Ratlam','Marketing',46000),
(36,'Hemant Joshi','Dehradun','Sales',51000),
(37,'Sonal Shah','Vadodara','Finance',59000),
(38,'Ravi Shekhar','Ranchi','IT',63000),
(39,'Anu Thomas','Trivandrum','HR',44000),
(40,'Gaurav Singh','Varanasi','Sales',50000),

(41,'Manpreet Kaur','Jalandhar','Marketing',47000),
(42,'Pankaj Tripathi','Rewa','Finance',56000),
(43,'Shalini Verma','Bareilly','HR',42000),
(44,'Abhishek Mishra','Allahabad','IT',69000),
(45,'Kriti Malhotra','Delhi','Marketing',49000),
(46,'Siddharth Jain','Udaipur','Finance',58000),
(47,'Apoorva Nair','Thrissur','HR',45000),
(48,'Naveen Kumar','Hisar','Sales',52000),
(49,'Divya Bhat','Mangalore','IT',65000),
(50,'Tarun Arora','Panipat','Marketing',48000),

(51,'Shubham Gupta','Noida','IT',71000),
(52,'Rashmi Soni','Jodhpur','HR',43000),
(53,'Vijay Prasad','Gaya','Sales',49000),
(54,'Komal Mathur','Ajmer','Marketing',47000),
(55,'Saurabh Dubey','Satna','Finance',60000),
(56,'Nikhil Rana','Roorkee','IT',68000),
(57,'Aditi Chandra','Haldwani','HR',44000),
(58,'Rohan Kulkarni','Pune','Sales',53000),
(59,'Mitali Sen','Howrah','Marketing',46000),
(60,'Pradeep Rawat','Almora','IT',64000),

(61,'Ankur Saxena','Moradabad','Finance',57000),
(62,'Pallavi Joshi','Pithoragarh','HR',42000),
(63,'Irfan Khan','Aligarh','Sales',51000),
(64,'Neeraj Tomar','Hapur','IT',69000),
(65,'Swati Mishra','Faizabad','Marketing',48000),
(66,'Rohini Kulkarni','Solapur','Finance',59000),
(67,'Ashish Negi','Tehri','IT',66000),
(68,'Megha Bansal','Sirsa','HR',43000),
(69,'Sandeep Choudhary','Sikar','Sales',50000),
(70,'Puja Agarwal','Mathura','Marketing',47000),

(71,'Harsh Vardhan','Bulandshahr','IT',70000),
(72,'Nandini Iyer','Madurai','Finance',62000),
(73,'Kunal Mehra','Faridabad','Sales',54000),
(74,'Ritika Khurana','Ambala','HR',45000),
(75,'Aman Srivastava','Gonda','IT',65000),
(76,'Shruti Kulkarni','Sangli','Marketing',48000),
(77,'Dinesh Pal','Etawah','Sales',50000),
(78,'Bhavya Shah','Rajkot','Finance',60000),
(79,'Lokesh Yadav','Rewari','IT',67000),
(80,'Monika Saini','Karnal','HR',44000),

(81,'Sahil Arora','Yamunanagar','Sales',52000),
(82,'Nupur Goyal','Muzaffarnagar','Marketing',46000),
(83,'Arvind Kumar','Sitapur','Finance',58000),
(84,'Richa Srivastava','Hardoi','HR',43000),
(85,'Puneet Malhotra','Sonipat','IT',69000),
(86,'Rekha Joshi','Rishikesh','Marketing',47000),
(87,'Vinod Yadav','Ballia','Sales',49000),
(88,'Ananya Bose','Asansol','Finance',61000),
(89,'Keshav Mittal','Bhiwani','IT',66000),
(90,'Suman Tiwari','Chitrakoot','HR',42000),

(91,'Rajeev Ranjan','Siwan','Sales',50000),
(92,'Priti Kulshreshtha','Firozabad','Marketing',48000),
(93,'Nilesh Patil','Dhule','Finance',59000),
(94,'Aditya Chauhan','Saharanpur','IT',71000),
(95,'Kajal Verma','Shamli','HR',44000),
(96,'Imran Siddiqui','Rampur','Sales',52000),
(97,'Tanya Arora','Kaithal','Marketing',49000),
(98,'Mukesh Yadav','Azamgarh','Finance',57000),
(99,'Ravi Kapoor','Palwal','IT',68000),
(100,'Shreya Sengupta','Durgapur','HR',46000);


-- CRUD operation
-- C: Create (table & data)
-- R: Read (Data Read)
-- U: Update
-- D: Delete

Select * from employees;

-- I want to reterive the data according to the condition : where clause
SELECT * FROM employees
WHERE Not(department="HR" OR department="IT");

-- Logical Operator
-- AND , OR , Not

-- Relational Operator : <,>,<=,>=,=,<>
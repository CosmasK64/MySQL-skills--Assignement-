



---Create a database name assignmet
CREATE DATABASE ASSIGNMENT 
-----Create a table name worker with 
---workerid
---firstname
----lastname
----salary
----joiningdate
-----department

CREATE TABLE Worker (
WORKER_ID INT NOT NULL,
FIRST_NAME CHAR(50),
LAST_NAME CHAR(50),
SALARY INT,
JOINING_DATE DATETIME,
DEPARTMENT CHAR(50)
)

SELECT * FROM Worker
---insert the table with values 
INSERT INTO Worker
 VALUES (001, 'Monika','Arora',100000, '2014-02-20 09:00:00','HR'),
(002, 'Niharika', 'Verma', 80000, '2014-06-11 09:00:00', 'Admin'),
(003, 'Vishal', 'Singhal', 300000, '2014-02-20 09:00:00', 'HR'),
(004, 'Amitabh', 'Singh', 500000, '2014-02-20 09:00:00', 'Admin'),
(005, 'Vivek', 'Bhati', 500000, '2014-06-11 09:00:00', 'Admin'),
(006, 'Vipul', 'Diwan', 200000, '2014-06-11 09:00:00', 'Account'),
(007, 'Satish', 'Kumar', 75000, '2014-01-20 09:00:00', 'Account'),
(008, 'Geetika', 'Chauhan', 90000, '2014-04-11 09:00:00', 'Admin')

SELECT * FROM Worker

---create Bonus table 
---WORKID
---AMOUNT
---DATE
CREATE TABLE BONUS (
WORKER_ID INT NOT NULL,
BONUS_AMOUNT INT NOT NULL ,
BONUS_DATE DATETIME NOT NULL,
)
---insert values in bonus table
INSERT INTO BONUS VALUES
(001, 5000, '2016-02-20'),
(002, 3000, '2016-06-11'),
(003, 4000, '2016-02-20'),
(001, 4500, '2016-02-20'),
(002, 3500, '2016-06-11')

 SELECT * FROM BONUS

---Creating the table name Title 
--worker id
---worker title
---Date 
CREATE TABLE TITLE (
WORKER_ID INT NOT NULL,
WORKER_TITLE CHAR(25) NOT NULL,
AFFECTED_FROM DATETIME NOT NULL,
)

--Insert values in the table TITLE
INSERT INTO TITLE
 VALUES
(001, 'Manager', '2016-02-20 00:00:00'),
(002, 'Executive', '2016-06-11 00:00:00'),
(008, 'Executive', '2016-06-11 00:00:00'),
(005, 'Manager', '2016-06-11 00:00:00'),
(004, 'Asst. Manager', '2016-06-11 00:00:00'),
(007, 'Executive', '2016-06-11 00:00:00'),
(006, 'Lead', '2016-06-11 00:00:00'),
(003, 'Lead', '2016-06-11 00:00:00')

SELECT * FROM TITLE

---QUESTIONS 

-----Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.
SELECT FIRST_NAME AS WORKER_NAME FROM Worker

--Write an SQL query to fetch “FIRST_NAME” from Worker table in upper case.
--Upper case
SELECT UPPER(FIRST_NAME) FROM Worker
--lower case
SELECT LOWER(FIRST_NAME) FROM Worker

----Write an SQL query to fetch unique values of DEPARTMENT from Worker table.
 SELECT DISTINCT DEPARTMENT FROM Worker
 SELECT DISTINCT UPPER(DEPARTMENT) FROM WORKER

 ---Write an SQL query to print the first three characters of FIRST_NAME from Worker table.
 SELECT SUBSTRING (FIRST_NAME, 1,3) AS FIRST_THREE_LETTERS FROM WORKER

 ---Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from Worker table.
 ----------built-in SQL Server function used to find the starting position of a substring within a string.
SELECT CHARINDEX('a', 'Amitabh') AS Position

---Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.
Select RTRIM(FIRST_NAME) from Worker

-----Write an SQL query to print the DEPARTMENT from Worker table after removing white spaces from the left side.
Select LTRIM(DEPARTMENT) from Worker

----Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.
Select distinct len(DEPARTMENT) from Worker

-----Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.
Select REPLACE(FIRST_NAME,'A','a') AS FIRST_NAME from Worker

---- Write an SQL query to fetch the count of employees working in the department ‘Admin’.SELECT COUNT(*) AS 'NUMBER OF EMPLOYEE' FROM Worker WHERE DEPARTMENT='ADMIN'

----Write an SQL query to fetch the no. of workers for each department in the descending order
SELECT DEPARTMENT, count(WORKER_ID)AS  No_Of_Workers
FROM worker
GROUP BY DEPARTMENT
ORDER BY No_Of_Workers DESC---Write an SQL query to fetch duplicate records having matching data in some fields of a table.SELECT WORKER_TITLE, AFFECTED_FROM, COUNT(*)
AS 'number of appearing ' FROM Title
GROUP BY WORKER_TITLE, AFFECTED_FROM
HAVING COUNT(*) > 1

SELECT * FROM TITLE

----Write an SQL query to show only odd rows from a table.
SELECT *FROM Worker WHERE WORKER_ID%2 = 1

--- Write an SQL query to show only even rows from a table.
SELECT * FROM Worker WHERE WORKER_ID %2 = 0

----Write an SQL query to clone a new table from another table.
create table clone as Select * from Worker 

--Write an SQL query to fetch intersecting records of two tables.
select * from Worker intersect select * from Clone

---Write an SQL query to show the current date and time.
SELECT getdate()
---Or
Select current_timestamp-----Write an SQL query to show the top n (say 10) records of a table.
SELECT * FROM Worker ORDER BY Salary DESC LIMIT(10) 

----Write an SQL query to determine the nth (say n=5) highest salary from a table.
SELECT SALARY,DEPARTMENT  FROM WORKER
 ORDER BY Salary DESC LIMIT 5

 -----. Write an SQL query to determine the 5th highest salary without using TOP or limit method.
SELECT Salary
FROM Worker W1
WHERE 5 = (
SELECT COUNT( DISTINCT ( W2.Salary ))
FROM Worker W2
WHERE W2.Salary >= W1.Salary
)

 SELECT * FROM Worker
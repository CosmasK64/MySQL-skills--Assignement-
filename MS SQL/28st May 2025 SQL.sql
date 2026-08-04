--create a new database--
/*creating and new database*/
--Creating our First db name : March intake 
CREATE DATABASE MARCHSTUDENT1
---Activating Database 
USE MARCHSTUDENT1
--creating first table know as match students 
----student ID
----student name
----course
----Age
----country
----School fee Balance
----Phone number 
----Industry/Sector
----Address

CREATE TABLE MARCHSTUDENT(
		STUDENT_ID VARCHAR(255) NOT NULL,
		STUDENT_NAME VARCHAR(255) NOT NULL,
		COURSE VARCHAR(255) NOT NULL,
		AGE INT NOT NULL,
		COUNTRY VARCHAR(255) NOT NULL,
		SCHOOL_FEE_BALANCE INT NOT NULL,
		PHONE_NUMBER INT NOT NULL,
		SECTOR VARCHAR(255) NOT NULL,
		ADRESS VARCHAR(255) NOT NULL,
)
-------Select Clause------ Helps to retrrive data from tables.
-------Wildcard is basically * to selct all
-----view the records use the code below --

SELECT * FROM MARCHSTUDENT

----Insert into function ---use to insert data into table 

INSERT INTO MARCHSTUDENT
VALUES('CDS001','COSMAS KOLUM','CERTIFIED DATA SCIENTIST',30,'KENYA',50000,782162026,'HCS','NAIROBI'),
	('CDS002','Abraham Musembi','Certified Data Scientist',29,'KENYA',50000,706378448,'BPO','Nairobi'),
		('CDS003','Grace Njogu','Certified data scientist',29,'KENYA',58000,714091021,'finance','Nairobi'),
		('CDS004','Carol Shikanga','Certified Data Scientist',30,'KENYA',50000,722258530,'Financial','Nairobi'),
		('CDS005', 'Henry Mwangi', 'Certified Data Scientist', 35, 'Kenya', 70000, 722960912, 'HRIS', 'Eldoret'),
		('CDS006','Stephen','Certified Data Scientist',29,'KENYA',50000,729576421,'Health','Nairobi'),
		('CDA007','Twesiime Anthony','Certified Data Analyst',34,'UGANDA',60000,742174565,'Trade','Mombasa'),
	('CDS008','Evans Mwenda','Certified Data Science',30,'KENYA',10000,713480286,'Public Health','Turkana'),
	('CDA009','Wanjiru Munyao','Certified Data Analyst',31,'KENYA',1000,703610697,'education','Machakos'),
         ('CDS0010','Thomas Ngoleni','Certified Data Scientist',38,'KENYA',50000,727925879,'Financial','NAIROBI'),
      ('CDS0011','Gofrey Osiemo', 'Data sceintist',29,'KEMYA',50000,700226600,'Finance','Nairobi')

SELECT * FROM MARCHSTUDENT

---Select student id, name, age from the table march students-------

SELECT STUDENT_ID,STUDENT_NAME,AGE,COUNTRY FROM MARCHSTUDENT

----What to cover today--
---clone tabe--
---truncate---clear content--
-----ALTER table- addding a Column, Delete the column, Rename a Table--
---Drop Table--
---delete table--
----SQL Clause and operators--

--------Clone table---Replica--
---select* into New-Table from Old table--

         -- SELECT*INTO CLONEMARCHSTUDENT FROM MARCHSTUDENT
		  
SELECT * INTO CLONEMARCHSTUDENT FROM MARCHSTUDENT
SELECT * FROM CLONEMARCHSTUDENT
SELECT * FROM MARCHSTUDENT

---Delete -----Delete function--helps use to delete records within a table 
DELETE FROM CLONEMARCHSTUDENT 
WHERE STUDENT_ID='CDS001' 

SELECT * FROM CLONEMARCHSTUDENT

-----Truncate ---clearing table content . it will delete all the record(s) a table--
TRUNCATE TABLE CLONEMARCHSTUDENT

SELECT * FROM CLONEMARCHSTUDENT

SELECT * FROM MARCHSTUDENT


-----Drop Table ----its permanently deleting a complete table 
DROP TABLE CLONEMARCHSTUDENT
SELECT * FROM CLONEMARCHSTUDENT

----ALTER----changing the origin entries--
------adding and deleting a column--

SELECT * FROM MARCHSTUDENT
ALTER TABLE MARCHSTUDENT ADD SEX CHAR(1)

SELECT * FROM MARCHSTUDENT

---Droping a column--Parmanetly deleting the column 
ALTER TABLE MARCHSTUDENT DROP COLUMN SEX

SELECT * FROM MARCHSTUDENT

---Rena,ming a table ---
--in my SQL other Database--
--rename table marchstudent to marchstudent 1--does not work in SQL Server

EXEC SP_RENAME 'MARCHSTUDENT' ,'MARCHSTUDENT'

-----SQL Clause/statement and operators ---
----select
---Update 
----where
---Order by
----Distinct
----Agregate function --sum,avrg,min,max,cunt
----Group by
---Alias
----Having Clause (where)
----AND & OR
----In operator 
---Any/Equal
---Not Null
---Is Null--
---Is Not Null
----Between 
---Like Operator


------------update--modify and existing record in a table

---Update tablename set studentname

UPDATE MARCHSTUDENT SET STUDENT_NAME='STEPHEN WAMBA' WHERE STUDENT_ID='CDS006'

SELECT * FROM MARCHSTUDENT
UPDATE MARCHSTUDENT SET STUDENT_NAME='Stephen wamalwa' , AGE=28, ADRESS='NAKURU' WHERE STUDENT_ID='CDS006'

----update student id in a table 

--UPDATE MARCHSTUDENT SET STUDENT_ID='CDS001' WHERE STUDENT_NAME='grace njogu'
UPDATE MARCHSTUDENT SET STUDENT_ID='CDS002' WHERE STUDENT_NAME='abraham musembi'
UPDATE MARCHSTUDENT SET STUDENT_ID='CDS003' WHERE STUDENT_NAME='carol shikanga'
UPDATE MARCHSTUDENT SET STUDENT_ID='CDS004' WHERE STUDENT_NAME='henry Mwangi'
UPDATE MARCHSTUDENT SET STUDENT_ID='CDS005' WHERE STUDENT_NAME='stephen wamalwa'
UPDATE MARCHSTUDENT SET STUDENT_ID='CDS006' WHERE STUDENT_NAME='twesiime anthony'
UPDATE MARCHSTUDENT SET STUDENT_ID='CDS007' WHERE STUDENT_NAME='evans mwenda'
UPDATE MARCHSTUDENT SET STUDENT_ID='CDS008' WHERE STUDENT_NAME='wanjiru munyao'
UPDATE MARCHSTUDENT SET STUDENT_ID='CDS009' WHERE STUDENT_NAME='thomas ngoleni'
UPDATE MARCHSTUDENT SET STUDENT_ID='CDS010' WHERE STUDENT_NAME='gofrey osiemo'
UPDATE MARCHSTUDENT SET SECTOR='Health' WHERE STUDENT_NAME='cosmas kolum'

----Where --- used to filter data from a table that meet a specific creteria 
--select all students from Nairobi 

SELECT * FROM MARCHSTUDENT
WHERE ADRESS='NAIROBI'

----Give studentname, student ID, Phone number in a table 
SELECT STUDENT_NAME,STUDENT_ID,PHONE_NUMBER FROM MARCHSTUDENT
WHERE COURSE='CERTIFIED DATA SCIENTIST'

----order by ----used to sort data either in ASC or DESC
---oder by always comes after having, where, Group by

----Oder by student name in ascending order
SELECT STUDENT_NAME,STUDENT_ID,PHONE_NUMBER FROM MARCHSTUDENT
WHERE COURSE='CERTIFIED DATA SCIENTIST'
order by STUDENT_NAME ASC

----oder by student_ID in descenting order 

SELECT STUDENT_NAME,STUDENT_ID,PHONE_NUMBER FROM MARCHSTUDENT
WHERE COURSE='CERTIFIED DATA SCIENTIST'
order by STUDENT_NAME DESC

----DISTINT ---Used to return unique records in a table --
INSERT INTO MARCHSTUDENT
VALUES 
('CDS001','Gofrey Osiemo', 'Data sceintist',29,'KEMYA',50000,700226600,'Finance','Nairobi')
SELECT DISTINCT STUDENT_NAME FROM MARCHSTUDENT

SELECT DISTINCT AGE FROM MARCHSTUDENT

SELECT DISTINCT ADRESS FROM MARCHSTUDENT


-----Aggregate function 

--count--return the total number of entries 

SELECT COUNT(STUDENT_ID) FROM MARCHSTUDENT

-----Alias--used to asign a pseudo (temporary) to the output colum name

SELECT COUNT(STUDENT_ID) AS no_of_students FROM MARCHSTUDENT

-----Avg age of this clas

SELECT AVG(AGE) AS AVG_AGE FROM MARCHSTUDENT

---student name with the highest school fees baalnce 
SELECT STUDENT_NAME,MAX(SCHOOL_FEE_BALANCE) AS SCHOOL_FEE_BALANCE FROM MARCHSTUDENT
GROUP BY STUDENT_NAME


SELECT MIN(AGE) AS Youngest_student FROM MARCHSTUDENT

-----Return the name and age
SELECT STUDENT_NAME,MIN(AGE) AS Youngest_student  FROM MARCHSTUDENT 
GROUP BY STUDENT_NAME 

SELECT SUM(SCHOOL_FEE_BALANCE) AS TOTAL_SCHOOL_FEE FROM MARCHSTUDENT

SELECT *FROM MARCHSTUDENT

-----Group By Clause ---
SELECT SECTOR,SUM(SCHOOL_FEE_BALANCE)AS Total_scholfeebalance FROM MARCHSTUDENT
GROUP BY SECTOR 
ORDER BY SECTOR ASC

SELECT ADRESS, SUM(SCHOOL_FEE_BALANCE) AS TOTAL_FEE FROM MARCHSTUDENT
GROUP BY ADRESS
ORDER BY ADRESS DESC

SELECT STUDENT_NAME,PHONE_NUMBER FROM MARCHSTUDENT

SELECT COURSE,SUM(SCHOOL_FEE_BALANCE) FROM MARCHSTUDENT
GROUP BY COURSE

-----Having--Where--Order by-- Can work with also as the same--
----having --is seting a condition

SELECT COURSE,AGE,SUM(SCHOOL_FEE_BALANCE) FROM MARCHSTUDENT
GROUP BY COURSE,AGE
HAVING AGE>25
ORDER BY AGE DESC

---How many students are comming from nairobi
SELECT ADRESS, COUNT(STUDENT_NAME) FROM MARCHSTUDENT
GROUP BY ADRESS
ORDER BY ADRESS ASC 

SELECT COURSE,AGE,SUM(SCHOOL_FEE_BALANCE) FROM MARCHSTUDENT
GROUP BY COURSE,AGE
HAVING AGE>25
ORDER BY AGE DESC

------Having ---is used with the group by clause clause help us to Filter data
SELECT ADRESS,AGE, MAX(SCHOOL_FEE_BALANCE) AS Highestschoolfeebalance FROM MARCHSTUDENT
GROUP BY ADRESS,AGE
HAVING AGE<30
ORDER BY AGE DESC

---AND & OR Operator ---
---AND the 2 conditions must be met
---OR either 1  of the 2 conditions must be met
---Name 50000 and age <26,23

SELECT STUDENT_NAME,STUDENT_ID,SCHOOL_FEE_BALANCE FROM MARCHSTUDENT
WHERE SCHOOL_FEE_BALANCE>50000 AND AGE<30

SELECT *FROM MARCHSTUDENT

----OR 
SELECT STUDENT_NAME,STUDENT_ID,SCHOOL_FEE_BALANCE FROM MARCHSTUDENT
WHERE SCHOOL_FEE_BALANCE>50000 OR AGE<30

---NOT--Not more than school fee balance
SELECT* FROM MARCHSTUDENT WHERE NOT (SCHOOL_FEE_BALANCE>50000) 

SELECT * FROM MARCHSTUDENT
WHERE (SCHOOL_FEE_BALANCE>=50000 AND AGE <=34)

----Not equal operator--- Used to compare two values <>, !=
SELECT * FROM MARCHSTUDENT
WHERE ADRESS !='Nairobi'

SELECT * FROM MARCHSTUDENT
WHERE ADRESS <>'Nairobi'

-----select the count of student id, group by age from table 
SELECT AGE,COUNT(STUDENT_ID) FROM MARCHSTUDENT
WHERE AGE<>29 
Group by AGE 

-----Select adress that is not nairobi
SELECT *FROM MARCHSTUDENT
WHERE ADRESS!= 'NAIROBI' AND 
(SCHOOL_FEE_BALANCE>'9000' OR SCHOOL_FEE_BALANCE='9000')

-----Return the oposite of the operator 
SELECT *FROM MARCHSTUDENT
WHERE not ADRESS<> 'NAIROBI' AND 
(SCHOOL_FEE_BALANCE>'9000' OR SCHOOL_FEE_BALANCE='9000')

---IN--used to select different sectors--
----In opeartor --helps us  to specifies multiple values statement within one querry
----IN operator --allows you to specify multiple values in a WHERE clause.
-----IN operator-- is a shorthand for multiple OR conditions.
SELECT * FROM MARCHSTUDENT
WHERE SECTOR='HEALTH' OR SECTOR='FINANCE' OR SECTOR='BPO'

----In opeartor --help us  to specifies multiple values statement within one querry 

SELECT * FROM MARCHSTUDENT
WHERE SECTOR IN ('health','Finance','BPO')

---not in ---helps to give the multiple statement the are not in the opperator--in-
SELECT * FROM MARCHSTUDENT
WHERE SECTOR NOT IN ('health','Finance','BPO')

-----Between --helps us to retrive datat within a given range 
SELECT * FROM MARCHSTUDENT
WHERE AGE BETWEEN 25 AND 30 

----school fee betwen 4000 and 1000
----From nrb and Turkana

SELECT* FROM MARCHSTUDENT
WHERE SCHOOL_FEE_BALANCE BETWEEN 40000 AND 10000
AND  ADRESS IN('NAIROBI','TURKANA')

SELECT* FROM MARCHSTUDENT
WHERE SCHOOL_FEE_BALANCE NOT BETWEEN 40000 AND 10000
AND  ADRESS NOT  IN('NAIROBI','TURKANA')

---like operator---Helps us to retrive datat based on a specified 
---%------find zero or single character 
---c%------Find values that start with C
----%c-----Find values that end with C
---_%C%------Find values that have C in between
----_C%------Find the values that are in the second or third
---C_%_----Find the values 

----All the name that start with letter C
SELECT * FROM MARCHSTUDENT
WHERE STUDENT_NAME LIKE 'C%'

---All name ending with letter A
SELECT * FROM MARCHSTUDENT
WHERE STUDENT_NAME LIKE '%A'

----All name with the letter A within the name 
SELECT * FROM MARCHSTUDENT
WHERE STUDENT_NAME LIKE '%A%'
Order by STUDENT_NAME Desc

----All name start with letter A
SELECT * FROM MARCHSTUDENT
WHERE STUDENT_NAME LIKE 'A_%'

SELECT * FROM MARCHSTUDENT
-----IS Null & is not null
---Is Null---
----Is not Null---
ALTER TABLE MARCHSTUDENT ADD SEX CHAR(1) 

SELECT * FROM MARCHSTUDENT
WHERE SEX IS NOT NULL

--UPDATE MARCHSTUDENT SET SEX='M' WHERE STUDENT_ID='CDS001'
UPDATE MARCHSTUDENT SET SEX='M' WHERE STUDENT_ID='CDS002'
UPDATE MARCHSTUDENT SET SEX='F' WHERE STUDENT_ID='CDS003'
UPDATE MARCHSTUDENT SET SEX='M' WHERE STUDENT_ID='CDS011'

----Counting missing values 
SELECT COUNT(*) AS Count_of_blanks from MARCHSTUDENT
where sex is null

----counting of records which are not null 
SELECT COUNT(*) AS Count_of_not_blanks  from MARCHSTUDENT
where sex is not null

--------Any and all operator
----Two--used to perform a comparision operator between Two single and range of values 
----Subquery--Used to combined two queries 

----Any --to return value the condition must be satified 

SELECT * FROM MARCHSTUDENT
WHERE SCHOOL_FEE_BALANCE > ANY(SELECT SCHOOL_FEE_BALANCE FROM MARCHSTUDENT WHERE AGE=29)

SELECT * FROM MARCHSTUDENT
WHERE SCHOOL_FEE_BALANCE < ANY
(SELECT AVG (SCHOOL_FEE_BALANCE) FROM MARCHSTUDENT)

---Question 2--Need Details of all students whose schoo fee balance is not 
----to the school fee balance of any student whose age is 29

SELECT * FROM MARCHSTUDENT
WHERE SCHOOL_FEE_BALANCE<> 
ALL (SELECT SCHOOL_FEE_BALANCE FROM MARCHSTUDENT WHERE AGE=29)


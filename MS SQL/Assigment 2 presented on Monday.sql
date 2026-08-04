

---assigment-- create table
--use assigmanet database 
create table  student_table(
student_ID int NOT NULL,
First_Name varchar(50) NOT NULL,
Last_Name varchar(50) NOT NULL,
GPA decimal(3,2) NOT NULL,
Enrollment_Date datetime NOT NULL,
major varchar(50) NOT NULL
)
-----Create program table 

Create table programtable(
Student_Ref_ID INT NOT NULL,
Program_Name varchar(50) NOT NULL,
Programm_Start_Date datetime NOT NULL
)
----Creating schorlership table 

Create table scholership_table(
Student_Ref_ID INT NOT NULL,
Scholarship_amount int NOT NULL,
sScholarship_Date datetime NOT NULL
)

----Inserting values in all the tables 
insert into  student_table values 
(201,'shivansh','Mahajan','8.79', '2021-09-01 09:30','Compputer science '),
(202,'Umesh','sharma','8.44', '2021-09-01 08:30','mathematics '),
(203,'Rakesh','kumar','5.6', '2021-09-01 10:00','biology '),
(204,'Radha','sharma','9.2', '2021-09-01 12:45','chemistry'),
(205,'kush','kumar','7.85', '2021-09-01 08:30','physics '),
(206,'prem','chopra','9.56', '2021-09-01 09:24','history '),
(207,'pankaj','vats','9.78', '2021-09-01 14:30','english '),
(208,'navleen','kaur','7', '2021-09-01 18:30','mathematics ')


select * from student_table

insert  into  programtable values 
(201,'computer Science ', '2021-09-01 00:00'),
(202,'mathematics', '2021-09-01 00:00'),
(208,'mathematics ', '2021-09-01 00:00'),
(205,'physics ', '2021-09-01 00:00'),
(207,'chemistry ', '2021-09-01 00:00'),
(206,'history ', '2021-09-01 00:00'),
(203,'biology', '2021-09-01 00:00')


select * from student_table
select * from programtable

insert  into  scholership_table values 
(201,5000, '2021-10-15 00:00'),
(202,4500,'2022-08-18 00:00'),
(203,3000,'2022-01-25 00:00'),
(201,4000, '2021-10-15 00:00')


SELECT * FROM scholership_table
SELECT * FROM programtable
select * from student_table

select * from scholership_table
---delete--use to delete data in a table 
delete  from scholership_table where Scholarship_amount = 4000

---update used to replace a colum within a row
update scholership_table set Scholarship_amount=3000 where Student_Ref_ID= 203

--Questions 
----Write a SQL query to fetch "FIRST_NAME" from the student table in upper case and use ALIAS name as STUDENT_NAME
select upper(first_name) as Studet_Name  from student_table

---2. Write a SQL query to fetch unique values of MAJOR Subjects from Student table.
select distinct(major) as Course_studied from student_table

--3. Write a SQL query to print the first 3 characters of FIRST_NAME from Student table.
select SUBSTRING (first_name,1,3) as 'first three charcters' from student_table
----
---select RIGHT(first_name,3) as 'first three charcters' from student_table

----4. Write a SQL query to find the position of alphabet ('a') int the first name column 'Shivansh' from Student table.

--CHARINDEX--Function used to find the starting position of a substring within a string. 
SELECT CHARINDEX('a', First_Name) AS Position
from student_table
where First_Name = 'Shivansh'

--- Alternative Method
SELECT CHARINDEX('a','shivash') AS Position

-----Position --works in the mysql when looking character position 
SELECT First_Name, POSITION('a' IN First_Name) AS POSITION_OF_A
from student_table
where First_Name = 'Shivansh'




--5. Write a SQL query to print the FIRST_NAME and LAST_NAME from Student table into single column COMPLETE_NAME
select CONCAT(first_name,' ',Last_name) as 'Complete_Name ' from student_table
select (first_name+' '+last_name) as 'Complete Name' from student_table


--6. Write a SQL query to print all Student details from Student table order by FIRST_NAME Ascending and MAJOR Subject descending.
select * from student_table
order by First_Name asc, major desc


---7. Write a SQL query to print details of the students excluding FIRST_NAME as 'Prem' and 'Shivansh' from Student table.
select * from student_table   where 
not  (First_Name = 'prem' or First_Name = 'shivansh')

---Method 2
SELECT * FROM student_table
WHERE First_name NOT IN ('Prem', 'Shivansh')

-----8. Write an SQL query to print details of the Students whose GPA lies between 9.00 and 9.99.
select * from student_table
 where  GPA BETWEEN '9.0' AND '9.99'  


----9. Display the details of students who have received scholarships, 
--------including their names, programe name, scholarship amounts, and scholarship dates.
SELECT  CONCAT(st.FIRST_NAME,' ', st.LAST_NAME) as 'Student Name', pr.Program_Name , sc.Scholarship_amount, sc.Sscholarship_date 
----INTO COSMAS_ASSIGMENT_1
from scholership_table sc
join student_table st 
join programtable pr
on pr.Student_Ref_ID = st.student_ID
on st.student_ID = sc.student_Ref_id
Group by CONCAT(st.FIRST_NAME,' ', st.LAST_NAME), pr.Program_Name , sc.Scholarship_amount, sc.Sscholarship_date 
order by CONCAT(st.FIRST_NAME,' ', st.LAST_NAME), pr.Program_Name , sc.Scholarship_amount, sc.Sscholarship_date 

SELECT * FROM scholership_table
SELECT * FROM programtable
select * from student_table

---10. List all students and their scholarship amount if they have received any. 
-------If a student has not received a scholarship, display NULL for the scholarship details.

SELECT  student_id,  upper (CONCAT(FIRST_NAME,' ', LAST_NAME)) as 'Student Name', major as 'Program Name', Scholarship_amount 
---INTO COSMAS_ASSIGMENT_2
from scholership_table sc
right join student_table st 
on st.student_ID = sc.student_ref_id


SELECT * FROM scholership_table
SELECT * FROM programtable
select * from student_table


----replace null in the table
	 update cosmas set Scholarship_amount='N/A' where Scholarship_amount is null
	 update cosmas set  sScholarship_Date='N/A' where sScholarship_Date IS NULL

----delete- deleting nulls in the table where amount is null
----also you can delete null in the table if you can specifiy where to delete  
	 delete cosmas where sScholarship_Date  is null

----select into --copies data from one table into a new table
	 ---craate a table backup 
SELECT CONCAT(st.FIRST_NAME,' ', st.LAST_NAME) as 'Student Name', pr.Program_Name , sc.Scholarship_amount, sc.Sscholarship_date 
---INTO COSMAS1
from scholership_table sc
join student_table st 
join programtable pr
on pr.Student_Ref_ID = st.student_ID
on st.student_ID = sc.student_Ref_id
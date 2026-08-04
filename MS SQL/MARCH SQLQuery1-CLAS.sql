--create a new database--
/*creating and new database*/
--Creating our First db name : March intake 
CREATE DATABASE MARCH_INTAKE
---Activating Database 
USE MARCH_INTAKE
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
Use AfriCDSA

CREATE DATABASE MARCH
---Use database march
USE MARCH
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
VALUES--('CDS001','COSMAS KOLUM','CERTIFIED DATA SCIENTIST',30,'KENYA',50000,782162026,'HCS','NAIROBI'),--
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


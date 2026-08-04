

SELECT * FROM [Facility Export Material List]
SELECT DISTINCT(COUNTY_NAME) FROM [Facility Export Material List]

SELECT * FROM [Facility Export Material List]
WHERE Longitute IS NULL  OR Latitute IS NULL

delete from [Facility Export Material List]
WHERE Longitute IS NULL  OR Latitute IS NULL

SELECT * FROM [Facility Export Material List]
---COUNT ROWS IN SQL SERVER
SELECT COUNT(*) AS Row_Count
FROM [Facility Export Material List]
----SELECT OWNERSHIP TYPE 
SELECT DISTINCT(OWNER_TYPE) FROM [Facility Export Material List]

SELECT County_Name,Facility_Name,Owner_type,Sub_county,Ward,Longitute,Latitute INTO COSMAS FROM [Facility Export Material List]
WHERE (Owner_type = 'Private Practice' or Owner_type= 'MINISTRY OF HEALTH' or Owner_type = 'Faith Based Organization' or Owner_type = 'Non-Governmental Organizations')
group by Owner_type,County_Name,Facility_Name,Longitute,Latitute,Sub_county,Ward
order by County_Name ASC 

SELECT * FROM COSMAS 

---Create clone table 
SELECT *
INTO new FROM COSMAS

select *  from new 
SELECT COUNT(*) from new

---Deleting column in SQL--- Ownership type deleted 
ALTER TABLE new
DROP COLUMN owner_type

select *  from new 

---Private Facility 
SELECT County_Name,Facility_Name,Owner_type,Sub_county,Ward,Longitute,Latitute INTO privat FROM [Facility Export Material List]
WHERE Owner_type = 'Private Practice' 
group by Owner_type,County_Name,Facility_Name,Longitute,Latitute,Sub_county,Ward
order by County_Name ASC

select * from privat

----public facility
SELECT County_Name,Facility_Name,Owner_type,Sub_county,Ward,Longitute,Latitute INTO MOH FROM [Facility Export Material List]
WHERE Owner_type= 'MINISTRY OF HEALTH' 
group by Owner_type,County_Name,Facility_Name,Longitute,Latitute,Sub_county,Ward
order by County_Name ASC

select * from MOH

---Faith based facility
SELECT County_Name,Facility_Name,Owner_type,Sub_county,Ward,Longitute,Latitute INTO FBO FROM [Facility Export Material List]
WHERE  Owner_type = 'Faith Based Organization' 
group by Owner_type,County_Name,Facility_Name,Longitute,Latitute,Sub_county,Ward
order by County_Name ASC 

select * from MOH

---Non-Governmental Organizations
SELECT County_Name,Facility_Name,Owner_type,Sub_county,Ward,Longitute,Latitute INTO NGO FROM [Facility Export Material List]
WHERE  Owner_type = 'Non-Governmental Organizations'
group by Owner_type,County_Name,Facility_Name,Longitute,Latitute,Sub_county,Ward
order by County_Name ASC 

select * from NGO
SELECT DISTINCT(OWNER_TYPE) FROM [Facility Export Material List]


---We use--UNION ALL --to join all tables with diferrent types 
SELECT County_Name, Facility_Name, 'Private Practice' AS Owner_type, Sub_county, Ward, Longitute, Latitute  FROM privat
UNION ALL
SELECT County_Name, Facility_Name, 'Faith Based Organization', Sub_county, Ward, Longitute, Latitute FROM fbo
UNION ALL
SELECT County_Name, Facility_Name,'Non-Governmental Organizations' , Sub_county, Ward, Longitute, Latitute FROM NGO
UNION ALL
SELECT County_Name, Facility_Name, 'Ministry of Health', Sub_county, Ward, Longitute, Latitute FROM MOH
GROUP BY County_Name, Facility_Name, Owner_type, Sub_county, Ward, Longitute, Latitute
ORDER BY County_Name ASC

SELECT DISTINCT(COUNTY_NAME) FROM CLONE
SELECT DISTINCT(Owner_type) FROM COSMAS

----COUNTING NUMBER OF DATA IN SQL 
SELECT COUNT(*)AS 'NUMBER OF ENTRIES IN THE DATA' FROM CLONE
SELECT COUNT(*)'NUMBER OF ENTRIES IN THE DATA' FROM COSMAS

SELECT * FROM MOH
SELECT * FROM FBO




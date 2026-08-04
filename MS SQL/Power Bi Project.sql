select * from HospitalData
order by Patient_id asc 

select Patient_Id, patient_admission_Date,patient_race from [dbo].[HospitalData]
group by patient_race,Patient_Id, patient_admission_Date
order by patient_id asc 

Select Distinct(patient_race) from HospitalData
Select Distinct(Patient_Admission_Flag) from HospitalData

Select Patient_Admission_Flag from HospitalData
Select Distinct(Department_Referral) from HospitalData
update HospitalData set Department_Referral = 'Not Reffered' where Department_Referral = 'none'

Select * from HospitalData
Select Distinct(Patient_Gender) from HospitalData

Select Distinct(Patient_Id) from HospitalData

Select count(Patient_Admission_Flag) from HospitalData
where Patient_Admission_Flag = 'false'


Select count(Patient_Admission_Flag) from HospitalData
where Patient_Admission_Flag = 'true'


Select count(Patient_Admission_Date) from HospitalData
where year(Patient_Admission_Date) = 2023

Select count(Patient_Admission_Date) from HospitalData
where Year(Patient_Admission_Date) = 2024

select COUNT(patient_id) from HospitalData
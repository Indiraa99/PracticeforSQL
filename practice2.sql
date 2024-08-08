use demo 

select * from dbo.day2

----Count the number of patients in each age group.---
select 
     case 
	     when age between 0 and 20 then '0-20'
		 when age between 21 and 40 then '21-40'
		 when age between 41 and 60 then '41-60'
		 when age between 61 and 80 then '61-80'
		 when age between 81 and 100 then '81-100'
	end as age_group,
	COUNT(*) as patient_count
	from dbo.day2 
	group by case 
	     when age between 0 and 20 then '0-20'
		 when age between 21 and 40 then '21-40'
		 when age between 41 and 60 then '41-60'
		 when age between 61 and 80 then '61-80'
		 when age between 81 and 100 then '81-100'
	end


------ Find the average cholesterol level for male and female patients separately.----

select gender, AVG(cholesterol) as average_cholesterol from dbo.day2 group by gender  -----196 -female , 213 - male 

------List the names of patients who are smokers and have high blood pressure ---

select * from dbo.day2

select name from dbo.day2 where smoking_status = 'Smoker' and blood_pressure > '120'

-----Calculate the percentage of patients with each diagnosis.--------

select diagnosis, COUNT(*) as diagnosis_count , (COUNT(*) * 100.0 / (select COUNT(*) from dbo.day2)) as percentage_diagnosis 
from dbo.day2 group by diagnosis order by percentage_diagnosis desc

-----Find the average weight of patients in each gender group.----

select gender, AVG(weight) as average_weight from dbo.day2 group by gender







	


SELECT TOP (1000) [patient_id]
      ,[age]
      ,[diabetes]
      ,[cholesterol_level]
      ,[smoking_status]
      ,[blood_pressure]
      ,[heart_disease]
      ,[last_checkup]
  FROM [demo].[dbo].[healthcare_data]


  ----Calculate patients above certain ages

  select * from dbo.healthcare_data

  SELECT 
    CASE 
        WHEN age BETWEEN 0 AND 20 THEN '0-20'
        WHEN age BETWEEN 21 AND 40 THEN '21-40'
        WHEN age BETWEEN 41 AND 60 THEN '41-60'
        WHEN age BETWEEN 61 AND 80 THEN '61-80'
        WHEN age BETWEEN 81 AND 100 THEN '81-100'
    END AS age_group,
    COUNT(*) AS patient_count
FROM dbo.healthcare_data
GROUP BY age;


---------- Average cholestrol ----

select AVG(cast(cholesterol_level as float)) as average_cholesterol from dbo.healthcare_data ----- 196


--------Name with high bp ----

select COUNT(*) as pts_with_highbp from dbo.healthcare_data where blood_pressure > 140  ---2


----select top 5 rows ----
select top 5 *  from dbo.healthcare_data


-----avg age with hypertension----

select AVG(cast(age as float)) from dbo.healthcare_data where heart_disease = 'yes'  ---37


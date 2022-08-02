{{ config(materialized='view',schema='stg')}}
Select
	cast([email] as nvarchar(4000)) [Email],
	cast([first_name] as nvarchar(4000)) [First_Name],
	cast([last_name] as nvarchar(4000)) [Last_Name],
	cast([ongage_status] as nvarchar(4000)) [Ongage_Status]
From stg.[Auct_Tmp_BadEmails_Raw]

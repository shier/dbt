{{ config(materialized='table',schema='dbo')}}
Select
	cast([Email] as nvarchar(4000)) [Email],
	cast([First_Name] as nvarchar(4000)) [First_Name],
	cast([Last_Name] as nvarchar(4000)) [Last_Name],
	cast([Ongage_Status] as nvarchar(4000)) [Ongage_Status] 
From stg.[Auct_Tmp_BadEmails_FinalView]
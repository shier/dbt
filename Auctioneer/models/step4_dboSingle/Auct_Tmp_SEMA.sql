{{ config(materialized='table',schema='dbo')}}
Select
	cast([First_Name] as nvarchar(4000)) [First_Name],
	cast([Last_Name] as nvarchar(4000)) [Last_Name],
	cast([Email] as nvarchar(4000)) [Email] 
From stg.[Auct_Tmp_SEMA_FinalView]
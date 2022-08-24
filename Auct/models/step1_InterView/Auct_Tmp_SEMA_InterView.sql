{{ config(materialized='view',schema='stg')}}
Select
	cast([Email] as nvarchar(4000)) [Email],
	cast([First_Name] as nvarchar(4000)) [First_Name],
	cast([Last_Name] as nvarchar(4000)) [Last_Name]
From stg.[Auct_Tmp_SEMA_Raw]

{{ config(materialized='view',schema='stg')}}
Select
	cast([EMAIL] as nvarchar(4000)) [Email],
	cast([First_Name] as nvarchar(4000)) [First_Name],
	cast([Last_Name] as nvarchar(4000)) [Last_Name],
	cast([Email_Type] as nvarchar(4000)) [Email_Type]
From stg.[Auct_Tmp_WebSiteEmailList_Raw]

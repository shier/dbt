{{ config(materialized='table',schema='dbo')}}
Select
	cast([CarTrimID] as int) [CARTRIMID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_CarTrim_FinalView]
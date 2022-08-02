{{ config(materialized='table',schema='dbo')}}
Select
	cast([CarTrimID] as int) [CarTrimID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_CarTrim_FinalView]
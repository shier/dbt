{{ config(materialized='table',schema='dbo')}}
Select
	cast([CarOptionID] as int) [CarOptionID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_CarOption_FinalView]
{{ config(materialized='table',schema='dbo')}}
Select
	cast([PhotoStatusID] as int) [PhotoStatusID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_PhotoStatus_FinalView]
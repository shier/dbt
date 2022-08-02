{{ config(materialized='table',schema='dbo')}}
Select
	cast([LocationID] as int) [LocationID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_Location_FinalView]
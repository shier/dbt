{{ config(materialized='table',schema='dbo')}}
Select
	cast([CarTypeID] as int) [CarTypeID],
	cast([Name] as nvarchar(1000)) [CarType],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_CarType_FinalView]
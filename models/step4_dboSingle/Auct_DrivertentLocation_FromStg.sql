{{ config(materialized='table',schema='dbo')}}
Select
	cast([DrivertentLocationID] as int) [DrivertentLocationID],
	cast([DrivertentLocationName] as nvarchar(4000)) [DrivertentLocationName],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_DrivertentLocation_FinalView]
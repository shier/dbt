{{ config(materialized='table',schema='dbo')}}
Select
	cast([DriverKeyLocationNameID] as int) [DriverKeyLocationNameID],
	cast([KeyLocationName] as nvarchar(4000)) [KeyLocationName],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_DriverKeyLocationName_FinalView]
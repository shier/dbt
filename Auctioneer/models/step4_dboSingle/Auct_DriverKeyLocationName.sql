{{ config(materialized='table',schema='dbo')}}
Select
	cast([DriverKeyLocationNameID] as int) [DRIVERKEYLOCATIONNAMEID],
	cast([KeyLocationName] as nvarchar(4000)) [KEYLOCATIONNAME],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_DriverKeyLocationName_FinalView]
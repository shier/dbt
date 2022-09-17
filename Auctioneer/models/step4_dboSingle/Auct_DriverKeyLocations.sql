{{ config(materialized='table',schema='dbo')}}
Select
	cast([DriverKeyLocationsID] as int) [DRIVERKEYLOCATIONSID],
	cast([DriverInFormationID] as int) [DRIVERINFORMATIONID],
	cast([DriverKeyLocationNameID] as int) [DRIVERKEYLOCATIONNAMEID],
	cast([KeyLocationOther] as nvarchar(4000)) [KEYLOCATIONOTHER],
	cast([KeyLocationComment] as nvarchar(4000)) [KEYLOCATIONCOMMENT],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_DriverKeyLocations_FinalView]
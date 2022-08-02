{{ config(materialized='table',schema='dbo')}}
Select
	cast([DriverKeyLocationsID] as int) [DriverKeyLocationsID],
	cast([DriverInFormationID] as int) [DriverInFormationID],
	cast([DriverKeyLocationNameID] as int) [DriverKeyLocationNameID],
	cast([KeyLocationOther] as nvarchar(4000)) [KeyLocationOther],
	cast([KeyLocationComment] as nvarchar(4000)) [KeyLocationComment],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_DriverKeyLocations_FinalView]